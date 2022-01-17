$repoPath = "D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo"
$SECRET = "S:\documents\notes\tech\backups\restic\SECRET"


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  check
