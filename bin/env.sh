# check for gnu coreutils
if ! ls --version >/dev/null 2>&1; then
  COREUTILS_GNUBIN=$(brew --prefix coreutils)/libexec/gnubin
  export PATH="$COREUTILS_GNUBIN:$PATH"
fi

# put bin/ into PATH
NOTE_AGGR_BIN=$(dirname -- "${BASH_SOURCE[0]}")
export PATH="$(realpath $NOTE_AGGR_BIN):$PATH"
