# IO's Project
(Informacióon sobre el proyecto)
# Creación del proyecto
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

$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
(use "git add <file>..." to update what will be committed)
(use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

Untracked files:
(use "git add <file>..." to include in what will be committed)
        .gitignore

no changes added to commit (use "git add" and/or "git commit -a")

$ git add -A
warning: LF will be replaced by CRLF in README.md.
The file will have its original line endings in your working directory

$ git commit -m "Cambios:
> * .gitignore para proyectos de fluter agregado.
> * README.md contiene información sobre el proyecto y como utilizar el repositorio.
> "
[main ba4175a] Cambios: * .gitignore para proyectos de fluter agregado. * README.md contiene información sobre el proyecto y como utilizar el repositorio.
2 files changed, 84 insertions(+)
create mode 100644 .gitignore

$ git push
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 12 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 1.37 KiB | 1.37 MiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/droidbash/iosproject.git
5afeb1b..ba4175a  main -> main

$ flutter create .
Recreating project ....
    lib\main.dart (created)
    pubspec.yaml (created)
    .
    .
    .
    windows\runner\win32_window.cpp (created)
    windows\runner\win32_window.h (created)
    Running "flutter pub get" in iosproject...                       1,665ms
    Wrote 94 files.

    All done!
    In order to run your application, type:

    $ cd .
    $ flutter run

    Your application code is in .\lib\main.dart.

$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
(use "git add <file>..." to update what will be committed)
(use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

Untracked files:
(use "git add <file>..." to include in what will be committed)
        .metadata
        analysis_options.yaml
        android/
        ios/
        lib/
        pubspec.lock
        pubspec.yaml
        test/
        web/
        windows/

no changes added to commit (use "git add" and/or "git commit -a")

$ git add -A
warning: LF will be replaced by CRLF in README.md.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in pubspec.lock.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in windows/flutter/generated_plugin_registrant.cc.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in windows/flutter/generated_plugin_registrant.h.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in windows/flutter/generated_plugins.cmake.
The file will have its original line endings in your working directory

$ git commit -m "Cambios:
> * Creaci'on del proyecto de flutter
> "
[main eb4c315] Cambios: * Creaci'on del proyecto de flutter
 89 files changed, 2836 insertions(+), 39 deletions(-)
 create mode 100644 .metadata
 rewrite README.md (97%)
 create mode 100644 analysis_options.yaml
 create mode 100644 android/.gitignore
.
.
.
 create mode 100644 windows/runner/win32_window.cpp
 create mode 100644 windows/runner/win32_window.h

$ git push
Enumerating objects: 127, done.
Counting objects: 100% (127/127), done.
Delta compression using up to 12 threads
Compressing objects: 100% (103/103), done.
Writing objects: 100% (125/125), 116.62 KiB | 4.86 MiB/s, done.
Total 125 (delta 6), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (6/6), done.
To https://github.com/droidbash/iosproject.git
   ba4175a..eb4c315  main -> main
