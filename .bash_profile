# Load ~/.bash_prompt, ~/.exports, ~/.aliases, ~/.functions
for file in ~/.{bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
