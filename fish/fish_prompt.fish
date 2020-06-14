function fish_prompt
    set -l last_pipestatus $pipestatus
    set -l brite (set_color brwhite)
    set -l prefix ''
    set -l suffix '}'

    # Write pipestatus
    set -l prompt_status (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) (set_color --bold brred) $last_pipestatus)

    echo -n (fish_git_prompt) $prompt_status $suffix " "
end
