# Agent Instructions

## Google Stitch Design Rules

- **Existing Project Only:** This repository is permanently linked to an existing Google Stitch project (`أسماك الزفر`).
- **Configuration Source:** Always read `./stitch.config.json` before invoking any Google Stitch MCP tool or design workflow.
- **Project ID:** `10038201372055056727`
- **Strict Prohibition:** NEVER call `create_project` or initialize a new Google Stitch project. Always pass the existing `projectId` above when listing, generating, or editing screens.
- **Prompt Phrase:** `استخدم مشروع Google Stitch المعرّف في stitch.config.json ولا تنشئ مشروعاً جديداً`.
- **MCP Defaults:** When the MCP server supports it, export `STITCH_PROJECT_ID=10038201372055056727` and exclude/disable the `create_project` tool from the allowed tool list.

## Prod Branch Is Invisible to Agents

- **Absolute Rule:** The `prod` branch does not exist for any AI agent. Never read, compare, merge into/from, push to, delete, restore, or modify it — locally or remotely.
- **No Exceptions:** Do not create commits, tags, PRs, task branches, or cleanup operations targeting `prod`. Never ask the user about `prod` or suggest actions on it.
- **Cleanup & Summaries:** Exclude `prod` from branch listings, cleanup decisions, and final status reports. Work only on `dev` and short-lived task branches.
- **External Deletion:** If an external process deletes `prod` from the remote, ignore it entirely. Do not attempt to restore it and do not report it as a pending action.
