# vim:filetype=zsh
#
# Login-shell startup. Deliberately near-empty.
#
# This was previously a symlink to .zshrc, so a login+interactive shell ran the
# whole interactive block twice: oh-my-zsh twice, compinit twice,
# $ZDOTDIR/profile twice, the powerlevel10k theme four times.
#
# The split zsh actually wants:
#   .zshenv   -> every shell: environment + PATH
#   .zprofile -> login shells: nothing that .zshenv or .zshrc already does
#   .zshrc    -> interactive shells: prompt, completion, keybindings, aliases
#
# Anything added here runs for login shells only, including non-interactive
# ones, and must not write to stdout.
