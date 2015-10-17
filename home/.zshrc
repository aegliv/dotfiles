# ----------------------------------------------------------------------------
# Global setup
# ----------------------------------------------------------------------------

# ensure nothing gets added to path twice
typeset -U path
typeset -U fpath


# Set correct ruby environment
eval "$(rbenv init -)"


# ----------------------------------------------------------------------------
# SHY
# Simple 'plugin' manager
# https://github.com/aaronroyer/shy
# ----------------------------------------------------------------------------

# Bootstrap shy
path+=(~/.shy)

eval "$(shy init)"

for plugin in ~/.zplugins/*; do
  shy load $plugin
done

