#!/bin/bash
#
# zsh style right prompt support :)
# https://gist.github.com/bobthecow/1285149

__rprompt() {
    printf "%*s\r" "$COLUMNS" "$(eval echo "$RPROMPT")"
}

if [[ ! $PROMPT_COMMAND =~ __rprompt ]]; then
    export PROMPT_COMMAND="__rprompt; ${PROMPT_COMMAND:-:}"
fi
