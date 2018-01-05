git config --global alias.cp 'cherry-pick'
git config --global alias.st 'status -sb'
git config --global alias.cl 'clone'
git config --global alias.ci 'commit'
git config --global alias.co 'checkout'
git config --global alias.br 'branch'
git config --global alias.dc 'diff --cached'
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.la "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %Cblue<%an>%Creset' --abbrev-commit --date=relative --all"
git config --global alias.last 'log -1 --stat'
git config --global alias.unstage 'reset HEAD --'
git config --global alias.boom 'reset --hard HEAD'
git config --global alias.zap 'reset --hard origin/master'

#submodules
git config --global alias.pullall '!f(){ git pull "$@" && git submodule update --init --recursive; }; f'

#Gerrit
git config --global alias.gpm 'push origin HEAD:refs/for/master'
git config --global alias.gdm 'push origin HEAD:refs/drafts/master'

#Thanks to https://gist.github.com/jasonrudolph/1810768
alias gitBranchHistory='for branch in `git branch | grep -v HEAD`;do echo -e `git show --format="%ci %cr" $branch | head -n 1` \\t$branch; done | sort -r | less'
alias gitBranchHistoryRemote='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%ci %cr" $branch | head -n 1` \\t$branch; done | sort -r | less'
