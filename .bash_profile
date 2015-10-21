# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

#custom stuff mate/api key
export EDITOR="/usr/local/bin/mate -w"
export HOMEBREW_GITHUB_API_TOKEN=de68c0bd42db8879b9a07353753a0baf983c42b7

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file