# apigen

Keeps TOPdeskPS in step with the official TOPdesk API
([developers.topdesk.com](https://developers.topdesk.com/explorer/)).

```bash
pip install pyyaml
python3 build/apigen/apigen.py fetch      # download the newest spec of every API area into specs/
python3 build/apigen/apigen.py fetch --locked   # download the versions recorded in specs.lock.json
python3 build/apigen/apigen.py generate   # write TOPdeskPS/data/operations.json, FunctionsToExport and docs/api-coverage.md
python3 build/apigen/apigen.py check      # dry run: list what generate would change (exit code 1 if anything)
```

- `specs/` holds the downloaded specifications (not committed), `specs.lock.json` the versions in use.
- Every operation that no hand-written function covers becomes a command in
  `TOPdeskPS/data/operations.json`, one line per command. At import the module turns each line into a
  small function (`ConvertTo-TdOperationScript`) whose body calls the shared `Invoke-TdOperation`.
- Hand-written functions are found by scanning the URIs they call. To change one, edit it by hand;
  the generator will not touch it.
- `overrides.yaml` holds the curated exceptions: function names, operations covered by
  hand-written functions that the scanner cannot see, operations to skip, and report notes.
- `docs/api-coverage.md` lists every operation of every area with the function that covers it,
  and the hand-written functions that still call deprecated or unlisted endpoints.

Naming rules: `GET` -> `Get-`, `POST` on a collection -> `New-`, `PUT`/`PATCH` -> `Set-`,
`DELETE` -> `Remove-`, uploads -> `Send-`, downloads -> `Save-` (with `-OutFile`).
`archive`/`unarchive` become `Set-Td<Noun>ArchiveStatus -Archive|-Unarchive`, other actions use the
matching approved verb (`Approve-`, `Deny-`, `Stop-`, `Move-`, `Copy-`, `Add-`, `Remove-`).
List endpoints get `-ResultSize`/`-Start` and page automatically through `Invoke-TdPagedRequest`.
