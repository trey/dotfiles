import sublime, sublime_plugin

class ToggleRulersCommand(sublime_plugin.TextCommand):
    def run(self, edit, **kwargs):
        rulers = kwargs["values"] if self.view.settings().get("rulers") == [] else []
        self.view.settings().set("rulers", rulers)
