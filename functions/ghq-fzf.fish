function ghq-fzf
    # push-line
    set cl (commandline)
    commandline -f repaint

    if test (string length $cl) -gt 0
        commandline -f kill-whole-line
    end

    # cd ghq project
    set dst $(ghq list | fzf --prompt "ghq > " --preview "bat --color=always --style=header,grid --line-range :80 $(ghq root)/{}/README.*")
    commandline "cd $(ghq root)/$dst"
    commandline -f execute

    # pop-line
    if test (string length $cl) -gt 0
        commandline -f yank
    end
end