# Writing Repository

This repository serves as a centralized location for blog content, organized in a way that's compatible with Obsidian for writing and editing, while maintaining a clean structure for potential rendering elsewhere.

## Purpose

This repository is dedicated solely to writing content in markdown format. It's designed to:
- Maintain a clean separation between content and rendering
- Support Obsidian's markdown features and linking capabilities
- Organize blog posts and related assets efficiently
- Keep work-in-progress separate from published content

## Directory Structure

```
.
├── posts/         # Published blog posts
├── drafts/       # Work in progress posts
├── assets/       # Images, media, and other static files
│   ├── images/   # Image files used in posts
│   └── files/    # Other static files (PDFs, etc.)
└── .obsidian/    # Obsidian workspace settings (gitignored)
```

## Obsidian Compatibility

This repository is set up to work seamlessly with Obsidian:
- Supports Obsidian's markdown syntax
- Enables internal linking between documents
- Maintains compatibility with Obsidian's attachments handling
- Preserves Obsidian's metadata through YAML frontmatter

## Usage Guidelines

1. **New Posts**
- Start new posts in the `drafts/` directory
- Move to `posts/` when ready for publication

2. **Assets**
- Store all images in `assets/images/`
- Use relative paths for image links

3. **Metadata**
- Include YAML frontmatter in all posts
- Maintain consistent metadata structure

## Getting Started

1. Clone this repository
2. Open the repository folder as a vault in Obsidian
3. Begin writing in the `drafts/` directory
4. Move completed posts to the `posts/` directory

## Version Control

- Commit messages should be clear and descriptive
- Use branches for major content revisions
- The `.gitignore` file is configured to exclude Obsidian workspace files and system artifacts

