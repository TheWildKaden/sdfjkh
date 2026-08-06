#!/usr/bin/env bash

set -euo pipefail

VERSION_FILE="version.txt"

if [ ! -f "$VERSION_FILE" ]; then
    echo "version.txt not found."
    exit 1
fi

if ! command -v gh >/dev/null 2>&1; then
    echo "GitHub CLI (gh) is required."
    exit 1
fi

VERSION=$(tr -d '[:space:]' < "$VERSION_FILE")

if [ -z "$VERSION" ]; then
    echo "version.txt is empty."
    exit 1
fi

echo "Current version: $VERSION"

echo
read -rp "Release description (leave empty to skip): " DESCRIPTION

NOTES_ARGS=()

if [ -n "$DESCRIPTION" ]; then
    NOTES_FILE=$(mktemp)
    echo "$DESCRIPTION" > "$NOTES_FILE"
    NOTES_ARGS+=(--notes-file "$NOTES_FILE")
else
    NOTES_ARGS+=(--notes "Release $VERSION")
fi

echo
echo "Publishing $VERSION..."

gh release create "$VERSION" \
    --title "Volcano Gen2 $VERSION" \
    --latest \
    "${NOTES_ARGS[@]}"

echo
echo "Release published."

# Increment patch version
if [[ "$VERSION" =~ ^v?([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]; then
    PREFIX=""
    
    if [[ "$VERSION" == v* ]]; then
        PREFIX="v"
    fi

    MAJOR="${BASH_REMATCH[1]}"
    MINOR="${BASH_REMATCH[2]}"
    PATCH="${BASH_REMATCH[3]}"

    NEXT_VERSION="${PREFIX}${MAJOR}.${MINOR}.$((PATCH + 1))"

    echo "$NEXT_VERSION" > "$VERSION_FILE"

    echo "Next version:"
    echo "$NEXT_VERSION"

    git add "$VERSION_FILE"
    git commit -m "bump version to $NEXT_VERSION" || true

    echo "version.txt updated."
else
    echo "Version format not recognized."
    echo "Expected: v1.0.0 or 1.0.0"
fi