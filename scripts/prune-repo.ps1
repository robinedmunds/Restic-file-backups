$repoPath = "D:\OneDrive\OneDrive - TERSE DIGITAL\robin\restic-repo"
$SECRET = "S:\documents\notes\tech\backups\restic\SECRET"


restic --repo $repoPath `
  --password-file $SECRET `
  --verbose `
  prune --dry-run


$title = "Choice"
$question = "The above was a dry run. Do you want to perform the prune?"
$choices = "&Yes", "&No"

$choice = $Host.UI.PromptForChoice($title, $question, $choices, 1)

if ($choice -eq 0) {
  restic --repo $repoPath `
    --password-file $SECRET `
    --verbose `
    prune
}
