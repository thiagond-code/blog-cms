git() {
  local _cmd="$*"
  if [ "$1" = "commit" ] && [ "${_cmd%%"--help"}" = "$_cmd" ]; then
    shift 1; command git commit -m ''
  else
    command git "$@"
  fi
}