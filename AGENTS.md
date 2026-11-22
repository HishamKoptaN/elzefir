# Agent Instructions

## Google Stitch Design Rules

- **Existing Project Only:** This repository is permanently linked to an existing Google Stitch project (`أسماك الزفر`).
- **Configuration Source:** Always read `./stitch.config.json` before invoking any Google Stitch MCP tool or design workflow.
- **Project ID:** `10038201372055056727`
- **Strict Prohibition:** NEVER call `create_project` or initialize a new Google Stitch project. Always pass the existing `projectId` above when listing, generating, or editing screens.
- **Prompt Phrase:** `استخدم مشروع Google Stitch المعرّف في stitch.config.json ولا تنشئ مشروعاً جديداً`.
- **MCP Defaults:** When the MCP server supports it, export `STITCH_PROJECT_ID=10038201372055056727` and exclude/disable the `create_project` tool from the allowed tool list.
