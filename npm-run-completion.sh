# Define a function that lists all npm scripts from package.json
function list-scripts {
  jq -r '.scripts | keys | .[]' package.json
}

# Define a function that displays a list of npm scripts and runs the selected script
function npm-run-completion {
  local scripts=$(list-scripts)
  local selected=$(echo "$scripts" | fzf-tmux --height=50% --reverse)
  if [ -n "$selected" ]; then
    npm run $selected
  fi
}

# Define a function that displays a list of pnpm scripts and runs the selected script
function pnpm-run-completion {
  local scripts=$(list-scripts)
  local selected=$(echo "$scripts" | fzf-tmux --height=50% --reverse)
  if [ -n "$selected" ]; then
    pnpm run $selected
  fi
}

# Register the functions as completion handlers for "npm run" and "pnpm run"
compdef '_gnu_generic' npm-run-completion 'npm run'
compdef '_gnu_generic' pnpm-run-completion 'pnpm run'
