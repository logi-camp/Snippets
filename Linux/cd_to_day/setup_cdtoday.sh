#!/usr/bin/env bash
set -e

FISH_FUNCTIONS_DIR="$HOME/.config/fish/functions"
FISH_CONFIG="$HOME/.config/fish/config.fish"

# Create fish functions directory if missing
mkdir -p "$FISH_FUNCTIONS_DIR"

# Write the cdtoday function
cat > "$FISH_FUNCTIONS_DIR/cdtoday.fish" << 'EOF'
function cdtoday
    if test "$PWD" = "$HOME"
        set -l today (date +%Y-%m-%d)
        mkdir -p /tmp/$today
        cd /tmp/$today
    end
end
EOF

echo "Created $FISH_FUNCTIONS_DIR/cdtoday.fish"

# Create config.fish if it doesn't exist
touch "$FISH_CONFIG"

# Add cdtoday call inside is-interactive block if not already present
if grep -q "cdtoday" "$FISH_CONFIG"; then
    echo "cdtoday already present in $FISH_CONFIG — skipping"
elif grep -q "status is-interactive" "$FISH_CONFIG"; then
    sed -i '/status is-interactive/,/^end/{/^end/i\    cdtoday
}' "$FISH_CONFIG"
    echo "Added cdtoday call to existing is-interactive block in $FISH_CONFIG"
else
    cat >> "$FISH_CONFIG" << 'EOF'

if status is-interactive
    cdtoday
end
EOF
    echo "Added is-interactive block with cdtoday to $FISH_CONFIG"
fi

echo "Done. Open a new fish terminal to test."
