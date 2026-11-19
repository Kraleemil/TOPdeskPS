# Build

- `apigen/`: generates commands from the official TOPdesk API specifications, see [apigen/README.md](apigen/README.md).
- `New-TdCommandDoc.ps1`: writes the command reference in `docs/commands`.
- `build.ps1` / `../psake.ps1`: the original psake build (module manifest update and tests), usable locally.

CI runs in GitHub Actions: [.github/workflows](../.github/workflows).
