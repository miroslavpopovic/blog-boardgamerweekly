$gitStatus = (git status -z) | Out-String
if ($gitStatus)
{
    Write-Error "The git working directory is dirty. Please commit any pending changes."
    exit 1
}

Write-Output "Deleting old publication"
Remove-Item -Recurse -Force public
New-Item -ItemType Directory -Path public
git worktree prune
# Remove-Item -Recurse -Force .git/worktrees/public/

Write-Output "Checking out gh-pages branch into public"
git worktree add -B gh-pages ./public origin/gh-pages --force

Write-Output "Removing existing files"
Remove-Item -Recurse -Force public/*

Write-Output "Generating site"
hugo

Write-Output "Updating gh-pages branch"
Set-Location public 
git add --all
git commit -m "Publishing to gh-pages (publish.ps1)"

Write-Output "Pushing to github"
git push --all
Set-Location ..