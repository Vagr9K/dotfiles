# Based on https://github.com/xcv58/prezto/blob/master/modules/lazy-load/init.zsh
# lazy_loader loader_function command1 command2 command3 commandM
function lazy_loader() {
    local loader=${1}
    local loader_wrapper="lazy_${loader}"

    shift
    for i in "${@}"; do
        alias "${i}"="${loader_wrapper} ${i}"
    done

    eval "
    function ${loader_wrapper}() {
        unset -f ${loader_wrapper}
        lazy_loader_clean "$@"
        eval ${loader}
        unset -f ${loader}
        # Somehow fixes failed program
        echo -n ""
        eval \$@
    }
    "
}

function lazy_loader_clean() {
    for i in "${@}"; do
        unalias ${i}
    done
}
