#!/bin/bash

# Check if a title was provided
if [ $# -eq 0 ]; then
    echo "Please provide a title for the post"
    echo "Usage: $0 \"Your Post Title\""
    exit 1
fi

# Get the title from command line argument
title="$1"

# Generate filename-friendly version of the title
filename=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-zA-Z0-9-]//g')

# Get current date
date=$(date +%Y-%m-%d)

# Create the full filename
full_filename="posts/${date}-${filename}.md"

# Check if file already exists
if [ -f "$full_filename" ]; then
    echo "Error: File $full_filename already exists"
    exit 1
fi

# Create new post from template
cat templates/post.md | \
    sed "s/{{title}}/$title/g" | \
    sed "s/{{date}}/$date/g" \
    > "$full_filename"

echo "Created new post: $full_filename"

