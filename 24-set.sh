set -euo pipefail

trap 'echo "Ther is an error in $LINENO, Command is: $BASH_COMMAND"' ERR