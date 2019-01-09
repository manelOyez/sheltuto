#!/bin/bash
blueback="\0033[1;37;44m"
function manip_presentation() {
 echo =========================
 echo  -e "$blueback Folder creation"
 echo =========================
 mkdir RepoShell
 echo =============================================
 echo  -e "$blueback End of creation ,copy file to new directory"
 echo =============================================
 cp   /home/geekette/Documents/Devops/ShellScripting.odp  RepoShell
 cd RepoShell
}
function log_gite() {
 echo ===========================
 echo  -e "$blueback Local Repo Initialization"
 echo ============================
 git init
 echo ===========================
 echo  -e "$blueback Add file"
 echo ===========================
 git add ShellScripting.odp
 echo ==========================
 echo  -e "$blueback Commit phase"
 echo ==========================
 git commit -m 'byshell'
 echo ==========================
 echo   -e "$blueback Firing up the Thing"
 echo ==========================
 git remote add origin https://github.com/manelOyez/sheltuto.git
 git push origin master

}
manip_presentation
log_gite
