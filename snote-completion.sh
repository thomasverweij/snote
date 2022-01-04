#/usr/bin/env bash
_snote_completions()
{
    ALL_OPTS=("init add ls list get add rm edit" )
    COMPLETABLE_TOPS=("ls list get edit rm")
    
    case $COMP_CWORD in
        1)
            COMPREPLY=($(compgen -W "${ALL_OPTS}" -- "${COMP_WORDS[COMP_CWORD]}"))
            ;;
        2)
            if ! [[ ${COMPLETABLE_OPTS[*]} =~ "${COMP_WORDS[COMP_CWORD-1]}" ]]
            then
                return 0
            fi
            COMPREPLY=( $(compgen -W "$(snote comp)" -- "${COMP_WORDS[COMP_CWORD]}") )
            ;;
    esac
}

complete -F _snote_completions snote