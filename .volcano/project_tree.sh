#!/usr/bin/env bash

OUTPUT="project_tree.txt"

echo "Creating directory tree..."

{
    echo "=== Directory Tree ==="
    echo
    if command -v tree >/dev/null 2>&1; then
        tree -a -I ".git|node_modules|.venv|__pycache__"
    else
        find . \
            -not -path "./.git/*" \
            -not -path "./node_modules/*" \
            -not -path "./.venv/*" \
            -print
    fi

    echo
    echo "=== Lune Installation ==="
    echo

    if command -v lune >/dev/null 2>&1; then
        echo "Lune found:"
        lune --version
        echo
        echo "Path:"
        which lune
    else
        echo "Lune not found in PATH."
        echo
        echo "Searching common locations..."

        find \
            "$HOME" \
            /usr/local/bin \
            /usr/bin \
            /opt \
            -type f \
            -name "lune" \
            2>/dev/null | sed 's/^/Found: /'
    fi

    echo
    echo "=== System Info ==="
    uname -a 2>/dev/null || true

} > "$OUTPUT"

echo "Done."
echo "Saved to: $OUTPUT"

if command -v xclip >/dev/null 2>&1; then
    cat "$OUTPUT" | xclip -selection clipboard
    echo "Copied to clipboard."
elif command -v wl-copy >/dev/null 2>&1; then
    cat "$OUTPUT" | wl-copy
    echo "Copied to clipboard."
fi