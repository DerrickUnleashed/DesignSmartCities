
#!/usr/bin/env bash

set -e

# Ensure we are in a Git repository
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Error: Not a Git repository."
    exit 1
fi

# Refuse to proceed if changes are already staged
if ! git diff --cached --quiet; then
    echo "Error: You have staged changes."
    echo "Please commit or unstage them before running this script."
    exit 1
fi

# Process changed files using NUL-delimited output
tmpfile=$(mktemp)
trap 'rm -f "$tmpfile"' EXIT

git status --porcelain=v1 -z --untracked-files=all > "$tmpfile"

while IFS= read -r -d '' entry; do
    status="${entry:0:2}"
    file="${entry:3}"

    # Renames and copies have a second path in the status output
    if [[ "$status" == *R* || "$status" == *C* ]]; then
        IFS= read -r -d '' file || true
    fi

    # Skip paths that no longer exist and are not tracked
    if [[ ! -e "$file" ]] && ! git ls-files --error-unmatch -- "$file" >/dev/null 2>&1; then
        continue
    fi

    echo "Staging and committing: $file"

    git add -A -- "$file"

    if ! git diff --cached --quiet -- "$file"; then
        git commit --only -m "chore: update $file" -- "$file"
    fi

done < "$tmpfile"

echo "Successfully committed changes as separate individual commits."
