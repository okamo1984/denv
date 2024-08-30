if status is-interactive
    zoxide init fish | source
    atuin init fish | source
end

alias ls='eza'
alias grep='rg'
alias find='fd'
alias sed='sd'
alias cat='bat'
