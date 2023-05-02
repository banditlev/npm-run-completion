# Define a function that lists all npm scripts from package.json
function list-npm-scripts {
  jq -r '.scripts | keys | .[]' package.json
}

# Define a function that displays a list of npm scripts and runs the selected script
function npm-run-completion {
  local scripts=$(list-npm-scripts)
  local selected=$(echo "$scripts" | fzf-tmux --height=50% --reverse)
  if [ -n "$selected" ]; then
    npm run $selected
  fi
}

# Register the function as a completion handler for "npm run"
compdef '_gnu_generic' npm-run-completion 'npm run'
