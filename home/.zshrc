# ensure nothing gets added to path twice
typeset -U path

# Set shell colors
. ~/.base16-shell/base16-default.dark.sh

# Set correct ruby environment
eval "$(rbenv init -)"

# Bootstrap shy, 
# which manages our 'plugins'
chmod +x ~/.shy/shy
path+=(~/.shy)

eval "$(shy init)"

for plugin in ~/.zplugin/*; do
  shy load $plugin
done

