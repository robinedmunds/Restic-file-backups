$repoPath = "D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo"
$SECRET = "C:\robin\keys\RESTIC-SECRET"


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  check
