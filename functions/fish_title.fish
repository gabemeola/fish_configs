function fish_title \
    --description "Set title to current folder and shell name" \
    --argument-names last_command

    set --local basename (string replace --regex '^.*/' '' -- $PWD)
    set --local current_folder (_pure_parse_directory)
    set --local current_command (status current-command 2>/dev/null; or echo $_)

    set --local prompt "$basename: $last_command $pure_symbol_title_bar_separator $current_command"

    if test -z "$last_command"
        # TODO: Maybe switch here between basename, current_folder, and last_command
        # set prompt "$basename"
        set prompt "$current_folder"
    end

    echo $prompt
end
