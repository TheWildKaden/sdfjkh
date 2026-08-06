#!/usr/bin/env bash

set -euo pipefail

ROKIT_BIN="$HOME/.rokit/bin"
ROKIT_CACHE="$HOME/.rokit/tool-storage/cache.json"

echo "=== Setting up Rokit ==="

# Add Rokit to PATH
if ! grep -q 'export PATH="$HOME/.rokit/bin:$PATH"' ~/.bashrc; then
    echo 'export PATH="$HOME/.rokit/bin:$PATH"' >> ~/.bashrc
    echo "Added Rokit PATH"
else
    echo "Rokit PATH already exists"
fi

export PATH="$ROKIT_BIN:$PATH"

echo
echo "=== Clearing Rokit cache ==="

rm -f "$ROKIT_CACHE" 2>/dev/null || true

echo
echo "=== Installing Rokit dependencies ==="

rokit install

echo
echo "=== Checking Rokit binaries ==="

TOOLS=(
    lune
    rojo
    stylua
    selene
    darklua
    luau-lsp
)

for tool in "${TOOLS[@]}"; do
    TOOL_PATH="$ROKIT_BIN/$tool"

    if [ -f "$TOOL_PATH" ]; then
        echo "✓ Found $tool"
        echo "  Path: $TOOL_PATH"
        "$TOOL_PATH" --version 2>/dev/null || true
    else
        echo "✗ Missing $tool"
    fi
done

echo
echo "=== All Rokit binaries ==="

ls -la "$ROKIT_BIN"

echo
echo "Done."
