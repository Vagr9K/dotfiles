# Git (based on Prezto's Git submodule)
alias g='git'

# Branch (b)
alias gb='git branch'
alias gba='git branch --all --verbose --verbose'
alias gbc='git checkout -b'
alias gbd='git branch --delete'
alias gbl='git branch --verbose --verbose'
alias gbm='git branch --move'
alias gbs='git show-branch --all'

# Commit (c)
alias gc='git commit'
alias gca='git commit --all'
alias gcm='git commit --message'
alias gcam='git commit --all --message'
alias gco='git checkout'
alias gcf='git commit --amend --reuse-message HEAD'
alias gcF='git commit --amend'
alias gcp='git cherry-pick --ff'
alias gcP='git cherry-pick --no-commit'
alias gcr='git revert'
alias gcs='git show'

# Fetch (f)
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gfp='git pull'
alias gfr='git pull --rebase'
alias gfpr='git pull --rebase'

# Grep (g)
alias gg='git grep'
alias ggi='git grep --ignore-case'

# Index (i)
alias gia='git add'
alias giu='git add --update'
alias gid='git diff --no-ext-diff --cached'

# Log (l)
alias gl='git log'

# Merge (m)
alias gm='git merge'
alias gmt='git mergetool'

# Push (p)
alias gp='git push'
alias gpa='git push --all'
alias gpA='git push --all && git push --tags'
alias gpt='git push --tags'

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

# Working Copy (w)
alias gws='git status'
alias gwd='git diff'
