# jusleysmaly.com

## Project Context

This is the personal portfolio website of Jusley Smaly.

The website was originally built from an existing template and has evolved over time.
The current production version is based on the existing codebase and must be preserved.

## Working Principles

- Preserve the existing architecture unless explicitly asked to change it.
- Prefer small, incremental changes over large refactors.
- Do not replace the existing template or framework.
- Do not rewrite working components unnecessarily.
- Do not delete files, folders, assets, pages, or historical versions unless explicitly requested.
- Do not modify unrelated files when implementing a requested change.
- Before making a structural change, explain what will be affected.
- Preserve the current visual layout when the request is about content or behavior only.
- When modifying visual elements, maintain consistency with the existing design system.
- Preserve responsive behavior for desktop and mobile.

## Git

GitHub is the source of truth for the project.

The main branch is the production branch.

Before making significant changes:
- inspect the relevant files first;
- identify dependencies and potential side effects;
- make the smallest change necessary.

Never use destructive Git commands such as:
- git reset --hard
- git clean -fd
- git push --force

unless explicitly requested by the user.

Do not commit generated files, temporary analysis files, or unrelated changes.

## Editing

When asked to modify the website:

1. Inspect the relevant existing code.
2. Explain briefly what will be changed if the change has architectural implications.
3. Modify only the necessary files.
4. Preserve existing functionality.
5. Check for obvious broken references or syntax issues.
6. Do not make additional improvements that were not requested.

## Important

This is a hybrid development workflow.

The code may be edited:
- manually by the developer in VS Code;
- with Claude Code.

Claude must treat manually written code as intentional and must not overwrite or refactor it simply because another implementation would be preferred.