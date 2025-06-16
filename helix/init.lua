-- https://github.com/helix-editor/helix/discussions/10281#discussioncomment-10376375

-- local light_theme = "catppuccin_latte"
local light_theme = "flatwhite"
-- local dark_theme  = "default"
local dark_theme = "carbonfox"

local write_file = function(path, content)
  local file = io.open(path, "w")
  assert(file, "Failed to open file for writing: " .. path)
  file:write(content)
  file:close()
end

local get_appearance = function()
  local _, is_dark = hs.osascript.applescript(
    'tell application "System Events" to tell appearance preferences to return dark mode')
  return is_dark and "dark" or "light"
end

local last_appearance = get_appearance()

-- define as global variable to keep alive
watcher = hs.distributednotifications.new(function()
  local appearance = get_appearance()
  if appearance ~= last_appearance then
    write_file(os.getenv("HOME") .. "/.config/helix/themes/adaptive.toml",
      string.format("inherits = '%s'", appearance == "dark" and dark_theme or light_theme))
    -- command will fail silently if hx isn't running, which is good enough for me
    os.execute("kill -USR1 $(pgrep hx)")
  end
  last_appearance = appearance
end, 'AppleInterfaceThemeChangedNotification'):start()

-- Fancy config reload
-- https://www.hammerspoon.org/go/#fancyreload
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")
