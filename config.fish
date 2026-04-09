if status is-interactive
    # Commands to run in interactive sessions can go here

    # File system
    alias ls='eza -lh --group-directories-first --icons=auto'
    alias lsa='ls -a'
    alias lt='eza --tree --level=2 --long --icons --git'
    alias lta='lt -a'
    alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
    alias fd='fdfind'

    # Directories
    alias ..='cd ..'
    alias ...='cd ../..'
    alias ....='cd ../../..'

    # Tools
    #n() { if [ "$#" -eq 0 ]; then nvim .; else nvim "$@"; fi; }
    alias g='git'
    alias d='docker'
    alias r='rails'
    alias cat='batcat'
    alias lzg='lazygit'
    alias lzd='lazydocker'

    # Git
    alias gcm='git commit -m'
    alias gcam='git commit -a -m'
    alias gcad='git commit -a --amend'

    alias fishconf='cd ~/.config/fish && nvim .'
    alias srcfish='source ~/.config/fish/config.fish'
    alias suspend='systemctl suspend'

    export PATH="./bin:$HOME/.local/bin:$HOME/.local/share/omakub/bin:$HOME/.cargo/bin:$PATH"

    export OMAKUB_PATH="$HOME/.local/share/omakub"
    export EDITOR="nvim"
end
zoxide init --cmd cd fish | source
tide configure --auto --style=Rainbow --prompt_colors='True color' --show_time='12-hour format' --rainbow_prompt_separators=Round --powerline_prompt_heads=Sharp --powerline_prompt_tails=Flat --powerline_prompt_style='Two lines, character and frame' --prompt_connection=Dotted --powerline_right_prompt_frame=Yes --prompt_connection_andor_frame_color=Light --prompt_spacing=Sparse --icons='Many icons' --transient=No
set -g fish_key_bindings fish_vi_key_bindings
