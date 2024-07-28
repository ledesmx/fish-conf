function fish_prompt -d "Write out the prompt"
    set -l last_status $status

    set -l usr (set_color --bold c9b6ff)"$USER"(set_color normal)

    set -l pwd (set_color --bold d4ffba)(prompt_pwd)(set_color normal)

    set -l stat
    if test $last_status -ne 0
        set stat (set_color --bold ff6da2)" !$last_status"(set_color normal)
    end

    set -l symbol (set_color --bold)' >> '(set_color normal)


    string join '' -- $usr ' ' $pwd $stat $symbol
end
