```
Evans-MacBook-Pro:~ evan$ git config --global color.ui true
Evans-MacBook-Pro:~ evan$ cd Projects/code/
Evans-MacBook-Pro:code evan$ mkdir git_test
Evans-MacBook-Pro:code evan$ cd git_test/
Evans-MacBook-Pro:git_test evan$ git init
Initialized empty Git repository in /Users/evan/Projects/code/git_test/.git/
Evans-MacBook-Pro:git_test evan$ touch readme.txt
Evans-MacBook-Pro:git_test evan$ subl readme.txt
-bash: subl: command not found
Evans-MacBook-Pro:git_test evan$ open readme.txt
Evans-MacBook-Pro:git_test evan$ git status
On branch master

Initial commit

Untracked files:
(use "git add <file>..." to include in what will be committed)

readme.txt

nothing added to commit but untracked files present (use "git add" to track)
Evans-MacBook-Pro:git_test evan$ git add readme.txt
Evans-MacBook-Pro:git_test evan$ git status
On branch master

Initial commit

Changes to be committed:
(use "git rm --cached <file>..." to unstage)

new file:   readme.txt

Evans-MacBook-Pro:git_test evan$ git commit -m 'first commit'
[master (root-commit) 26521df] first commit
1 file changed, 2 insertions(+)
create mode 100644 readme.txt
Evans-MacBook-Pro:git_test evan$ open readme.txt 
Evans-MacBook-Pro:git_test evan$ git status
On branch master
Changes not staged for commit:
(use "git add <file>..." to update what will be committed)
(use "git checkout -- <file>..." to discard changes in working directory)

modified:   readme.txt

no changes added to commit (use "git add" and/or "git commit -a")
Evans-MacBook-Pro:git_test evan$ git add .
Evans-MacBook-Pro:git_test evan$ git commit -m 'second commit'
[master 8dc1a6c] second commit
1 file changed, 3 insertions(+), 1 deletion(-)
Evans-MacBook-Pro:git_test evan$ git log
commit 8dc1a6c32f5cd01b0b9af1dc820dda12cbf26364
Author: Evan Moore <etmoore@gmail.com>
Date:   Tue Apr 1 21:07:41 2014 -0600

second commit

commit 26521dff6ea48336de60ccf3c81f68072aaf49a6
Author: Evan Moore <etmoore@gmail.com>
Date:   Tue Apr 1 21:06:18 2014 -0600

first commit
Evans-MacBook-Pro:git_test evan$ cd ..
Evans-MacBook-Pro:code evan$ cd git_test
Evans-MacBook-Pro:git_test evan$ git checkout -b new-branch
Switched to a new branch 'new-branch'
Evans-MacBook-Pro:git_test evan$ git status
On branch new-branch
nothing to commit, working directory clean
Evans-MacBook-Pro:git_test evan$ open readme.txt
Evans-MacBook-Pro:git_test evan$ git add .
Evans-MacBook-Pro:git_test evan$ git commit -m 'Added a line in a new branch'
[new-branch 8ae26ac] Added a line in a new branch
1 file changed, 2 insertions(+), 1 deletion(-)
Evans-MacBook-Pro:git_test evan$ git checkout master
Switched to branch 'master'
Evans-MacBook-Pro:git_test evan$ open readme.txt
Evans-MacBook-Pro:git_test evan$ git merge new-branch
Updating 8dc1a6c..8ae26ac
Fast-forward
readme.txt | 3 ++-
1 file changed, 2 insertions(+), 1 deletion(-)
Evans-MacBook-Pro:git_test evan$ git status
On branch master
nothing to commit, working directory clean
Evans-MacBook-Pro:git_test evan$ open readme.txt
Evans-MacBook-Pro:git_test evan$ git branch -d new-branch
Deleted branch new-branch (was 8ae26ac).
Evans-MacBook-Pro:git_test evan$ 
```