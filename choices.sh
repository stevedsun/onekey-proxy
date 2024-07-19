OPTION=("set proxy" "unset proxy")
export USER_OPTION=$(gum choose "${OPTION[@]}" --height 10 --header "Select the Option")

AVAILABLE_PROXIES=("http" "apt" "git" "docker" "firefox" "go" "vscode")
SELECTED_PROXIES="http","apt", "git"
export USER_PROXIES=$(gum choose "${AVAILABLE_PROXIES[@]}" --no-limit --selected "$SELECTED_PROXIES" --height 10 --header "Select apps")
