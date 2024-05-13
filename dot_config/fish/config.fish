set -g fish_greeting

if status is-interactive
    # Allow subdirs for functions and completions.
    set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path
    set fish_complete_path (path resolve $__fish_config_dir/completions/*/) $fish_complete_path

    function starship_transient_prompt_func
        # starship module character
        set_color brblack; echo -n "❯ "; set_color normal
    end

    if type -q starship
        starship init fish | source
        enable_transience
    end

    if type -q direnv
        direnv hook fish | source
    end
end
