# WoW Addon Development Workspace

Welcome to your World of Warcraft Addon Development Workspace!

## Workspace Structure

- `TemplateAddon/` - A basic boilerplate for a new Addon. You can duplicate this folder and rename it to start a new project.
- `.vscode/` - Recommended settings for VSCode (assuming you use it) to help with Lua and WoW API intellisense.
- `.gitignore` - Standard gitignore for WoW Addon development.

## Starting a New Addon

1. Copy the `TemplateAddon` folder and rename it to your Addon's name (e.g., `MyAwesomeAddon`).
2. Inside the folder, rename `TemplateAddon.toc` to `MyAwesomeAddon.toc`.
3. Open `MyAwesomeAddon.toc` and update the `## Title`, `## Notes`, and `## Author` fields.
4. Replace `TemplateAddonDB` with your own database name (e.g., `MyAwesomeAddonDB`) in both `.toc` and `main.lua`.
5. Start writing your Lua code in `main.lua`!

## Testing in-game

To test your addons in World of Warcraft, your addon folder must be in your WoW installation. The recommended way to develop is using symbolic links, so your changes in `Y:\WOW` take effect immediately in the game directory without copying files.

*Open PowerShell or Command Prompt as Administrator:*
```bash
# Example using mklink in cmd:
mklink /D "C:\Program Files (x86)\World of Warcraft\_retail_\Interface\AddOns\MyAwesomeAddon" "Y:\WOW\MyAwesomeAddon"
```
*(Adjust the paths according to where your WoW is installed.)*

## Recommended Tools

If you are using **Visual Studio Code**, a popup should appear prompting you to install the recommended workspace extensions. These include:
- `sumneko.lua` (Lua Language Server for syntax and errors)
- `ketho.wow-api` (WoW API Intellisense and Autocomplete)
- `tomeoflight.wow-toc-language-extension` (.toc file syntax highlighting)
