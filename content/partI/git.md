# Getting Started with git (local)



```
bash-3.2$ mkdir myrepos
bash-3.2$ cd myrepos/
bash-3.2$ ls
```

## Creating a repo

```
bash-3.2$ git init
Initialized empty Git repository in /Users/serge/Dropbox/g/GIS321/F16/book/content/partI/git/myrepos/.git/
bash-3.2$ git status
On branch master

Initial commit

nothing to commit (create/copy files and use "git add" to track)
bash-3.2$
```

### Adding to the repos
```
bash-3.2$ echo '# My repository' > README.md
bash-3.2$ cat README.md
# My repository
bash-3.2$
```

```
bash-3.2$ git add README.md
bash-3.2$ git commit -m 'initial commit'
[master (root-commit) 0c58567] initial commit
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
bash-3.2$ git status
On branch master
nothing to commit, working directory clean
bash-3.2$
```
### Config

```
bash-3.2$ ls -al
total 8
drwxr-xr-x@  4 serge  staff  136 Sep 12 12:47 .
drwxr-xr-x@  3 serge  staff  102 Sep 12 12:44 ..
drwxr-xr-x@ 12 serge  staff  408 Sep 12 12:48 .git
-rw-r--r--@  1 serge  staff   16 Sep 12 12:47 README.md
bash-3.2$ cd .git
bash-3.2$ ls -al
total 40
drwxr-xr-x@ 12 serge  staff  408 S		ep 12 12:48 .
drwxr-xr-x@  4 serge  staff  136 Sep 12 12:47 ..
-rw-r--r--@  1 serge  staff   15 Sep 12 12:48 COMMIT_EDITMSG
-rw-r--r--@  1 serge  staff   23 Sep 12 12:45 HEAD
-rw-r--r--@  1 serge  staff  137 Sep 12 12:45 config
-rw-r--r--@  1 serge  staff   73 Sep 12 12:45 description
drwxr-xr-x@ 11 serge  staff  374 Sep 12 12:45 hooks
-rw-r--r--@  1 serge  staff  137 Sep 12 12:48 index
drwxr-xr-x@  3 serge  staff  102 Sep 12 12:45 info
drwxr-xr-x@  4 serge  staff  136 Sep 12 12:48 logs
drwxr-xr-x@  7 serge  staff  238 Sep 12 12:48 objects
drwxr-xr-x@  4 serge  staff  136 Sep 12 12:45 refs
bash-3.2$ cat config
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
	ignorecase = true
	precomposeunicode = true
bash-3.2$
```

Note that configuration files can be stored in three different places:

1. systemwide `/etc/gitconfig`
2. global (user) `~/.gitconfig` or `~/.config/gig/config`
3. current working directory `.git/config`


On Windows Git looks in `C:\User\$USER` for `.gitconfig`

### Global configuration

```
bash-3.2$ ls ~/.gitconfig
/Users/serge/.gitconfig
bash-3.2$ cat ~/.gitconfig
[user]
	name = Serge Rey
	email = sjsrey@gmail.com
[alias]
	timeline = log --oneline --pretty --graph --decorate
bash-3.2$
```

To set your global configuration:

```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```

### Log

```
bash-3.2$ git log
commit 0c585673fc9dd2250d3992bf5df7229a7e8382ec
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 12:48:02 2016 -0700

    initial commit
bash-3.2$
```

Change the file to add a line:

```
bash-3.2$ cat README.md
# My repository

This is the readme for the project.
bash-3.2$
```

and, check the status of the repos

```
bash-3.2$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
bash-3.2$
```

Add the file that we have changed
```
bash-3.2$ git add README.md
bash-3.2$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   README.md

bash-3.2$
```

Let's commit the file and add a commit message:

```

bash-3.2$ git commit -m 'first line added'
[master 458889d] first line added
 1 file changed, 2 insertions(+)
bash-3.2$ git status
On branch master
nothing to commit, working directory clean
bash-3.2$
```

## Branching

```
bash-3.2$ git branch
* master
bash-3.2$
```

Let's create a new branch called `greatIdea` where we can explore some new ideas:

```
bash-3.2$ git checkout -b greatIdea
Switched to a new branch 'greatIdea'
bash-3.2$ git branch
* greatIdea
  master
bash-3.2$
```

We can now work on the `README.md` file and not worry about breaking the version in our `master` branch.

To see this change the file to look like:

```
bash-3.2$ cat README.md
# My repository

This is the readme for the project.

In this project we will do some brilliant things.
bash-3.2$
```

Check the status:

```
bash-3.2$ git status
On branch greatIdea
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
bash-3.2$ git branch
* greatIdea
  master
bash-3.2$
```

Add, commit the changes:

```
bash-3.2$ git add README.md
bash-3.2$ git commit -m 'Updating with goals'
[greatIdea 5690f06] Updating with goals
 1 file changed, 2 insertions(+)
bash-3.2$ git status
On branch greatIdea
nothing to commit, working directory clean
bash-3.2$
```


Now we change back to master and see that the original file is untouched.

```
bash-3.2$ git checkout master
Switched to branch 'master'
bash-3.2$ cat README.md
# My repository

This is the readme for the project.
bash-3.2$
```

We can then switch back to our new branch and add a file:

```
bash-3.2$ git checkout greatIdea
Switched to branch 'greatIdea'
bash-3.2$ ls
README.md
bash-3.2$ vim data.csv
bash-3.2$ cat data.csv
1,2,3
4,5,6
bash-3.2$ git status
On branch greatIdea
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	data.csv

nothing added to commit but untracked files present (use "git add" to track)
bash-3.2$
```

Let's add and commit the file:

```
bash-3.2$ git add data.csv
bash-3.2$ git commit -m 'added data file'
[greatIdea 55f236d] added data file
 1 file changed, 2 insertions(+)
 create mode 100644 data.csv
bash-3.2$ git status
On branch greatIdea
nothing to commit, working directory clean
bash-3.2$ ls
README.md
data.csv
bash-3.2$
```

Now switch back to `master` and see the directory structure:

```
bash-3.2$ git checkout master
Switched to branch 'master'
bash-3.2$ ls
README.md
bash-3.2$
```

Note the absence of the new file `data.csv` which lives only in the new branch not master.
## Diffs

```
bash-3.2$ git diff master greatIdea
diff --git a/README.md b/README.md
index 4b2ee3a..c52ee51 100644
--- a/README.md
+++ b/README.md
@@ -1,3 +1,5 @@
 # My repository

 This is the readme for the project.
+
+In this project we will do some brilliant things.
diff --git a/data.csv b/data.csv
new file mode 100644
index 0000000..da813b6
--- /dev/null
+++ b/data.csv
@@ -0,0 +1,2 @@
+1,2,3
+4,5,6

```

Reverse the order for the diff:

```
bash-3.2$ git diff greatIdea master
diff --git a/README.md b/README.md
index c52ee51..4b2ee3a 100644
--- a/README.md
+++ b/README.md
@@ -1,5 +1,3 @@
 # My repository

 This is the readme for the project.
-
-In this project we will do some brilliant things.
diff --git a/data.csv b/data.csv
deleted file mode 100644
index da813b6..0000000
--- a/data.csv
+++ /dev/null
@@ -1,2 +0,0 @@
-1,2,3
-4,5,6
bash-3.2$
```


## Merge

If we are done with our great ideas in the new branch and we want to merge them back to master we do this with:

```
bash-3.2$ git branch
  greatIdea
* master
bash-3.2$ git merge greatIdea
Updating 458889d..55f236d
Fast-forward
 README.md | 2 ++
 data.csv  | 2 ++
 2 files changed, 4 insertions(+)
 create mode 100644 data.csv
```

Check the diffs:
```
bash-3.2$ git diff master greatIdea
bash-3.2$ git diff greatIdea master
bash-3.2$
```

and see that the data file has now been added to `master`

```
bash-3.2$ ls
README.md   data.csv	
```

## Conflicts

Conflicts can arise when we have two different branches that have changes to the same lines in a file.

```
bash-3.2$ git checkout -b betterIdea
Switched to a new branch 'betterIdea'
bash-3.2$ vim data.csv
bash-3.2$ cat data.csv
1,2,3
9,5,6
bash-3.2$ git add data.csv
bash-3.2$ git commit -m 'tweaking the data'
[betterIdea 283f215] tweaking the data
 1 file changed, 1 insertion(+), 1 deletion(-)
bash-3.2$
```


```
bash-3.2$ git checkout greatIdea
Switched to branch 'greatIdea'
bash-3.2$ vim data.csv
bash-3.2$ cat data.csv
1,2,3
4,5,0
bash-3.2$ git add data.csv
bash-3.2$ git commit -m 'tweaking the data'
[greatIdea 236048b] tweaking the data
 1 file changed, 1 insertion(+), 1 deletion(-)
```

Now let's say we merge from betterIdea into greatIdea

```
bash-3.2$ git branch
  betterIdea
* greatIdea
  master
bash-3.2$ git merge betterIdea
Auto-merging data.csv
CONFLICT (content): Merge conflict in data.csv
Automatic merge failed; fix conflicts and then commit the result.
bash-3.2$
```

What does this look like?

```
bash-3.2$ cat data.csv
1,2,3
<<<<<<< HEAD
4,5,0
=======
9,5,6
>>>>>>> betterIdea
bash-3.2$
```

```
bash-3.2$ vim data.csv
bash-3.2$ cat data.csv
1,2,3
9,5,0
bash-3.2$ git status
On branch greatIdea
You have unmerged paths.
  (fix conflicts and run "git commit")

Unmerged paths:
  (use "git add <file>..." to mark resolution)

	both modified:   data.csv

no changes added to commit (use "git add" and/or "git commit -a")
bash-3.2$ git diff data.csv
diff --cc data.csv
index dd3bc7c,455d471..0000000
--- a/data.csv
+++ b/data.csv
@@@ -1,2 -1,2 +1,2 @@@
  1,2,3
- 4,5,0
 -9,5,6
++9,5,0
bash-3.2$
```

```
bash-3.2$ git add data.csv
bash-3.2$ git commit -m 'resolving conflict'
[greatIdea 7169bb1] resolving conflict
```

Now merge those changes into master

```
bash-3.2$ git checkout master
Switched to branch 'master'
bash-3.2$ git merge greatIdea
Updating 55f236d..7169bb1
Fast-forward
 data.csv | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
bash-3.2$ cat data.csv
1,2,3
9,5,0
```

Get the log of what we have been doing thus far:
```
bash-3.2$ git log
commit 7169bb12d4b3d00ea2ab4c96ab9be9937bafcbc4
Merge: 236048b 283f215
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 13:35:34 2016 -0700

    resolving conflict

commit 236048b9523d449270622a7d43b8492ca63b4fbf
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 13:29:35 2016 -0700

    tweaking the data

commit 283f21520d3153b130ba60a7655217ad4da6a12c
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 13:28:11 2016 -0700

    tweaking the data

commit 55f236d6c733ad016788777c6bd85f5821fe2dec
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 13:14:59 2016 -0700

    added data file

commit 5690f0677f9ae2b2d88361dc2457915ba74f2dcc
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 13:09:10 2016 -0700

    Updating with goals

commit 458889d1372f81a3c6cc017150ac80e4e16aafdd
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 13:02:47 2016 -0700

    first line added

commit 0c585673fc9dd2250d3992bf5df7229a7e8382ec
Author: Serge Rey <sjsrey@gmail.com>
Date:   Mon Sep 12 12:48:02 2016 -0700

    initial commit
```


### Cleaning up branches

We can delete branches locally when we are done:

```
bash-3.2$ git branch
  betterIdea
  greatIdea
* master
bash-3.2$ git branch -d greatIdea
Deleted branch greatIdea (was 7169bb1).
bash-3.2$ git branch
  betterIdea
* master
bash-3.2$
```
