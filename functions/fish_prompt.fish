function fish_prompt
    set --local exit_code $status  # save previous exit code

    set SPACE ""
    echo -e -n (_pure_prompt_beginning)  # init prompt context (clear current line, etc.)
    echo -e -n (_pure_prompt_first_line) $SPACE  # print current path, git branch/status, command duration
    echo -e -n (_pure_prompt $exit_code)  # print prompt
    echo -e (_pure_prompt_ending)  # reset colors and end prompt

    set _pure_fresh_session false
end
