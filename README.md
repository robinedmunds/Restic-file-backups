# Restic file backups

[Restic Documentation](https://restic.readthedocs.io/en/stable/index.html)

## Repo setup

`restic init --repo $repoPath`

Type encryption password.

## Creating snapshots

```powershell

$repoPath = 'D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo'
$exclusionsFile = 'S:\documents\notes\tech\backups\restic\exclusions.txt'
$SECRET = "..\SECRET"


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  backup --tag music 'S:\music'

```

## List snapshots

```powershell

$repoPath = 'D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo'
$SECRET = "..\SECRET"


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  snapshots

```

## Remove snapshots

Removing snapshots does not delete data. For that you must **prune**.

