#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="${HOME}/.local/bin"
ROKIT_VERSION="1.2.0"
ROKIT_ZIP="rokit-${ROKIT_VERSION}-linux-x86_64.zip"
ROKIT_URL="https://github.com/rojo-rbx/rokit/releases/download/v${ROKIT_VERSION}/${ROKIT_ZIP}"
WALLY_URL="https://github.com/UpliftGames/wally/releases/download/v0.3.2/wally-v0.3.2-linux.zip"

function command_exists() {
    command -v "$1" >/dev/null 2>&1
}

function ensure_package() {
    if command_exists "$1"; then
        return
    fi

    if command_exists apt-get; then
        echo "Installing $1..."
        sudo apt-get update -y
        sudo apt-get install -y "$1"
        return
    fi

    echo "Error: required command '$1' not found. Install it manually and rerun this script." >&2
    exit 1
}

function add_local_bin_to_path() {
    mkdir -p "$INSTALL_DIR"

    if ! grep -q '.local/bin' "$HOME/.bashrc" 2>/dev/null; then
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    fi

    export PATH="$INSTALL_DIR:$PATH"
}

function install_rokit() {
    if command_exists rokit; then
        echo "rokit already installed"
        return
    fi

    echo "Downloading Rokit ${ROKIT_VERSION}..."
    cd /tmp
    curl -fsSL -O "$ROKIT_URL"

    echo "Extracting Rokit..."
    unzip -o "$ROKIT_ZIP"

    chmod +x rokit
    mv rokit "$INSTALL_DIR/"
}

function install_wally() {
    if command_exists wally; then
        echo "wally already installed"
        return
    fi

    echo "Downloading Wally..."
    cd /tmp
    curl -fsSL -O "$WALLY_URL"

    echo "Extracting Wally..."
    unzip -o "wally-v0.3.2-linux.zip"

    chmod +x wally
    mv wally "$INSTALL_DIR/"
}

function install_rokit_tools() {
    echo "Installing Rokit-managed tools..."
    make install
}

function install_npm_dependencies() {
    if ! command_exists npm; then
        echo "npm not found; skipping npm dependency installation."
        return
    fi

    echo "Installing npm dependencies..."
    npm install
}

function run_checks() {
    echo "Running repository checks..."
    if make check; then
        echo "All checks passed."
        return 0
    fi

    echo "Checks failed. Running format fixes and re-checking..."
    make format
    make check
}

function print_summary() {
    echo ""
    echo "Setup complete."
    echo "Next steps:"
    echo "  source ~/.bashrc"
    echo "  npm run verify"
}

ensure_package curl
ensure_package unzip
ensure_package git
add_local_bin_to_path
install_rokit
install_wally

if ! command_exists lune; then
    echo "Installing Lune via rokit..."
    rokit add lune
fi

install_npm_dependencies
install_rokit_tools
run_checks
print_summary