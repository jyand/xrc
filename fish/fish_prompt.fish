function fish_prompt
    set -l last_pipestatus $pipestatus
    set -l prefix ''
    set -l suffix '\n\U03bb '

    # Write pipestatus
    set -l prompt_status (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) (set_color --bold brred) $last_pipestatus)

    busybox echo (set_color blue  && busybox pwd | busybox sed 's/\/home\/jyan/~/g') (set_color brwhite && fish_git_prompt) $prompt_status && busybox echo (set_color brcyan) (printf $suffix)
end
