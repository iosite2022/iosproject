# IO's Project
$ mkdir iosproject

$ cd iosproject

$ git init
Initialized empty Git repository in C:/Users/drock/tec20211/IOs/iosproject/.git/

$ echo "# IO's Project" >> README.md

$ git config user.name "Diego Mendivil Rodriguez"

$ git config user.email "al16760562@ensenada.tecnm.mx"

$ git add -A
warning: LF will be replaced by CRLF in README.md.
The file will have its original line endings in your working directory

$ git commit -m "First commit"
[main (root-commit) 5afeb1b] First commit
 1 file changed, 1 insertion(+)
 create mode 100644 README.md

$ git branch -M main

$ git remote add origin https://github.com/droidbash/iosproject.git

$ git push u origin main
error: src refspec origin does not match any
error: failed to push some refs to 'u'

$ git push -u origin main
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 247 bytes | 247.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/droidbash/iosproject.git
 * [new branch]      main -> main
branch 'main' set up to track 'origin/main'.