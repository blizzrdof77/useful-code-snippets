timeout3
timeout3 -t2
timeout3 -t 2
timeout -t 2
timeout3 -t
timeout3 -t1 -i1 -d1
timeout3 -t 1 -i 1 -d 1
timeout3 -t 1 -i 1 -d 1 ls
sudo -i
sudo ls
sudo
sudo -i
su
sudo ls
sudo ls -al
sudo () {   if [ -z "$1" ]; then     echo "sudo what, bitch?";   else     if [ "$1" = "-i" ]; then       echo "windows blows, but we can pretend.";       timeout3 -t 1 -i 1 -d 1 echo ".";       timeout3 -t 1 -i 1 -d 1 echo "..";       timeout3 -t 1 -i 1 -d 1 echo "...";       echo "okay. now you're running commands as root (sudo)";     else       CMD=$1;       $CMD;     fi;   fi;    }
sudo () {   if [ -z "$1" ]; then     echo "sudo what, bitch?";   else     if [ "$1" = "-i" ]; then       echo "windows blows, but we can pretend.";       timeout3 -t 1 -i 1 -d 1 echo ".";       timeout3 -t 1 -i 1 -d 1 echo "..";       timeout3 -t 1 -i 1 -d 1 echo "...";       echo "okay. now you're running commands as root (sudo)";     else       CMD=$1;       echo "${!B*}";     fi;   fi;    }
sudo ls -al
sudo () {   if [ -z "$1" ]; then     echo "sudo what, bitch?";   else     if [ "$1" = "-i" ]; then       echo "windows blows, but we can pretend.";       timeout3 -t 1 -i 1 -d 1 echo ".";       timeout3 -t 1 -i 1 -d 1 echo "..";       timeout3 -t 1 -i 1 -d 1 echo "...";       echo "okay. now you're running commands as root (sudo)";     else       CMD=$1;       echo "${*}";     fi;   fi;    }
sudo ls -al
sudo () {   if [ -z "$1" ]; then     echo "sudo what, bitch?";   else     if [ "$1" = "-i" ]; then       echo "windows blows, but we can pretend.";       timeout3 -t 1 -i 1 -d 1 echo ".";       timeout3 -t 1 -i 1 -d 1 echo "..";       timeout3 -t 1 -i 1 -d 1 echo "...";       echo "okay. now you're running commands as root (sudo)";     else       CMD=${*};       CMD;     fi;   fi;    }
sudo ls -al
sudo () {   if [ -z "$1" ]; then     echo "sudo what, bitch?";   else     if [ "$1" = "-i" ]; then       echo "windows blows, but we can pretend.";       timeout3 -t 1 -i 1 -d 1 echo ".";       timeout3 -t 1 -i 1 -d 1 echo "..";       timeout3 -t 1 -i 1 -d 1 echo "...";       echo "okay. now you're running commands as root (sudo)";     else       CMD=${*};       $CMD;     fi;   fi;    }
sudo ls -al
sudo ls
ls -al
sudo ls -al
sudo ls -a
sudo ls -l
sudo ls -al
sudo cdp
cd projects/useful-code-snippets/
git status
mv queries/ sql-queries/
git add .
git add -u
git commit -m "bash functions added (mostly cygwin hacks) - imitate (ignore) sudo in commands; added timeout3 script (not by me)"
git push
cdp
su() {   if [ -z "$1" ]; then     HOST="staging-u01.fahlgrendigital.com";     USER="bwagner";     PORT="22";   else     USER=$1;     HOST="staging-u01.fahlgrendigital.com";   fi;    if [ -z "$2" ]; then     PORT=22;     HOST="staging-u01.fahlgrendigital.com";   else     if [ "$2" = "-h" ]; then       HOST=$3;     elif [ "$2" = "-p" ]; then       PORT=$3;     else       PORT=$2;     fi;   fi;        CMD="ssh $USER@$HOST -p$PORT";   echo $CMD;   $CMD ; }
su
su icanmakehistory
ssh formattedforlife@formattedforlife.com
ssh formattedforlife@formattedforlife.com -p21904
cdp
cd columbus-dispatch/formatted-for-life/web-root/
git checkout
git pull
i=0
while read line; do     array[ $i ]="$line"        ;     (( i++ )); done < <(ls -ls)
scandir() {   i=0;   while read line;   do       array[ $i ]="$line"        ;       (( i++ ));   done < <(ls -ls);    echo ${array[1]}; }
scandir
ls )
ls (
ls -ls
scandir
scandir() {   i=0;   while read line;   do       array[ $i ]="$line"        ;       (( i++ ));       echo "${array[1]}";   done < <(ls -ls);     }
scandir
start-tunnel
ping 216.128.16.86
ping www.sabatinoday.com
ping emerson.com
ping emersonnetworkpower.com
su icanmakehistory
ssh icanmakehistory@icanmakehistory.com
cdp
cd kroger/icanmakehistory/web-root
git checkout
git clone
git pull
ssh icanmakehistory@icanmakehistory.com -p21904
cdp
cd experience-columbus/expcolswpnetwork/
web-root/wp-content/
cd web-root/
cd wp-content/
cd themes/
mkdir make-it-columbus
cd make-it-columbus/
git clone git@git.fahlgrengrip.com:experience-columbus/make-it-columbus.git ./
cd ../join-us/
git status
git add front-page.php
git commit -m "changed 'view details' link text to 'learn more'"
git push
ping brandcolumbus.com
ssh toolkit@branduscolumbus.com -p21804
ssh toolkit@branduscolumbus.com -p21904
ssh toolkit@brandcolumbus.com -p21904
ssh fahlgren@brandcolumbus.com -p21904
su
ssh toolkit@brandcolumbus.com -p21904
npp .bash_rc
npp .bashrc
explorer ./
cd ../
git status
git add .
git status
cd-cooper
git status
rm \034\357\202\211D\342\211\224$\357\202\247
rm "\034\357\202\211D\342\211\224$\357\202\247"
ls -al
git status
git stash 
git status
rm test
git checkout
git pull 
rm D≔$
git status
git commit -m "removed useless UTF-8 file"
git add -u
git status
git commit -m "removed useless UTF-8 file"
git pull
git push
git branch
git branch -d mastercraft-homepage-slider 
git branch -d mastercraft-mobile 
git push
git pull
git add .
git add home
git add .
su
cd C:\
cd C:/
cd "C:\"
cd 'C:\'
cdp
git pull
git status
bash
cdp
cd -
cd-cooper 
git status
cdp
cd fahlgren/fahlgrenmortine-com/
cd web-root/
git status
/usr/bin/bash.exe -ubwagner
/usr/bin/bash.exe --login bwagner
git status
cd ../
git status
/usr/bin/bash.exe --login bwagner
git status
/usr/bin/bash.exe --login
apt-get install chere
cd ~/
chere -i
git
chere
ls /usr/bin/
git
/usr/bin/bash
/usr/bin/bash.exe --login
git
/usr/bin/bash.exe
git
bash --help
bash -c ls
git
cd -
-
cd -
git
/bin/xhere -
/bin/xhere cd -
/bin/xhere cd /bin/bash
/bin/xhere cd %C%
/bin/xhere %C%
/bin/xhere '%C%'
/bin/xhere '-'
/bin/xhere 'cd -'
cd -
/bin/xhere -
/bin/xhere cd -
/bin/xhere '-'
/bin/xhere 'cd -'
'/bin/xhere -'
git
/bin/xhere /bin/bash
git
git status
git pull 
ssh Administrator@166.78.28.178
ssh administrator@166.78.28.178
ping staging.fahlgrenmortine.com 
ping dev.fahlgrenmortine.com 
ping 
ping 10.40.3.13
ping fahlgren.com
ping fpc.staging.fahlgrendigital.com
ping staging.fpc.fahlgrendigital.com
ssh administrator@166.78.28.178
git checkout
cd C:\inetpub\wwwroot\fahlgrenmortine-kentico
cd "C:\inetpub\wwwroot\fahlgrenmortine-kentico"
git status
git pull
git checkout
cdp
cd vocera/
cd whats-next-email/
cd html/
gitorious-init git@git.fahlgrengrip.com:vocera/is06150_email_april_2013.git
cd-fpc 
git status
git checkout
sshtunnel-fm 
ping creativebeej.com
su
cd C:/
cd Program\ Files
cd Swish/
prereqs.bat
ls -al
cd-fpc 
git status
git checkout
git status
git pull
git stash
git pull origin master
git status
edit .bashrc
edit /home/bwagner/.bashrc
cd /home/bwagner/.bashrc
cd C:/Users/bwagner
edit .bashrc
cd ~
edit .bashrc
edit .bash_functions 
kill-tunnel 
sshtunnel-fm 
cd -
cd --
cd - -
cd -/-
cd-fpc 
cd ~
edit .bash_aliases 
kill-tunnel
sshtunnel-fm 
cd-fpc
git status
ssh bwagner@staging-w01.fahlgrendigital.com 
cdp
cd-cooper 
git status
cd C:/inetpub
cd wwwroot/
cd fahlgrenmortine-kentico/
git pull
sshtunnel-fm 
ping staging.fahlgrenmortine.com 
ping fahlgrenmortine.com
ping staging-wp01.fahlgrendigital.com
ping staging-wp-01.fahlgrendigital.com
ping staging-w01.fahlgrendigital.com
ping staging-wp01.fahlgrendigital.com
ping staging-w02.fahlgrendigital.com
ping staging-w-02.fahlgrendigital.com
ping staging-w01.fahlgrendigital.com
kill-tunnel 
start-tunnel
start-tunnel administrator@staging.fahlgrenmortine.com -w
start-tunnel Administrator@staging.fahlgrenmortine.com -w
git status
git checkout CMSTemplates/FahlgrenMortine/*.aspx
git checkout CMSTemplates/FahlgrenMortine/BlogPortal.aspx
git pull origin master
cp App_Themes/FahlgrenMortine/css/easy.css App_Themes/FahlgrenMortine/css/easy-backup.css
npp .gitignore
git status
git checkout CMSTemplates/FahlgrenMortine/Blog.aspx.cs CMSTemplates/FahlgrenMortine/Blog.aspx
git stash
git pull origin master
git checkout
git branch
git pull
start-tunnel administrator@staging.fahlgrenmortine.com -w
cd ../
mkdir fahlgrenmortine-kentico-2
cd fahlgrenmortine-kentico-2/
git clone git@git.fahlgrengrip.com:fahlgren-mortine/fahlgrenmortine-kentico.git ./
start-tunnel administrator@staging.fahlgrenmortine.com -w
cd-fpc
cd ../../../fahlgrenmortine-kentico
git fsck --cache --no-reflogs --lost-found --unreachable  HEAD
git pull
git log
git reset --hard 06ea88dd7da5d2a602bd4a8301bb7a430815b1da
start-tunnel administrator@staging.fahlgrenmortine.com -w
cd C:/
cd inetpub/wwwroot/fahlgrenmortine-kentico
git status
git add App_Themes/FahlgrenMortine/img/sidebar-bg.png App_Themes/FahlgrenMortine/img/sidebar-bg.png CMSTemplates/FahlgrenMortine/BlogPortal.aspx CMSTemplates/FahlgrenMortine/BlogPortal.aspx.cs CMSAdminControls/CKeditor/config.js  CMSAdminControls/CKeditor/config.js  CMSAdminControls/CKeditor/skins/kentico/editor.css  CMSAdminControls/CKeditor/skins/kentico/wireframe.css  CMSAdminControls/CKeditor/skins/kentico/templates.css  CMSAdminControls/CKeditor/skins/kentico/dialog.css App_Themes/Default/CMSDesk.css App_Themes/FahlgrenMortine/css/easy.css CMSAdminControls/CKeditor/skins/kentico
git commit -m "Customized HTML Editor toolbars and worked on blog portal template"
git push origin master
start-tunnel administrator@staging.fahlgrenmortine.com -w
git status
start-tunnel administrator@staging.fahlgrenmortine.com -w
cd C:/
cd inetpub/wwwroot/fahlgrenmortine-kentico
cdp
cd experience-columbus/cta-newsletter/html/
git status
git checkout index.html
git add img/cta-header.jpg
git commit -m "updated logo"
git push
git statuscd ../../2012-03-columbus-insiders-email-templates/
git status
git log 
git info
git branch
git remote show origin
git remote 
git remote show origin master
cd ../insiders-templates/html/
gitorious-init git@git.fahlgrengrip.com:experience-columbus/2012-03-columbus-insiders-email-templates.git
git clone git@git.fahlgrengrip.com:experience-columbus/2012-03-columbus-insiders-email-templates.git
cd -
git status
git add .
git status
git add *.html
git status
git push
git push origin master
cd ../insiders-templates/html/
git status
cd 2012-03-columbus-insiders-email-templates/
ls 
git status
git add .
git status
git add -u
git status
g commit -m "restored original repo contents (from greg's latest commit) - somehow the original was trambled by a newer project, which i've cloned and now stands alone as 'experience-columbus/is07266-cta-newsletter-exact-target-template.git'"
git commit 
git commit -m "restored original repo contents (from greg's latest commit) - somehow the original was trambled by a newer project, which i've cloned and now stands alone as 'experience-columbus/is07266-cta-newsletter-exact-target-template.git'"
git push
cd ../
cd ../../
cd cta-newsletter/
cd html/
git add .
git add -u
git commit -m "updated with most current exact target code"
git status
git
git log
cd ../
mkdir cta-newsletter-exact-target-template
cd cta-newsletter-exact-target-template/
git clone git @git.fahlgrengrip.com:experience-columbus/is07266-cta-newsletter-exact-target-template.git
git clone git@git.fahlgrengrip.com:experience-columbus/is07266-cta-newsletter-exact-target-template.git
git clone git@git.fahlgrengrip.com:experience-columbus/is07266-cta-newsletter-exact-target-template.git ./
git add .
git add -u
git commit -m "updated to reflect latest code"
git push
cd ../html/`
cd ../html/
cd ../html/
git checkout
git reset --hard HEAD
cd ../
cd cta-newsletter/html/
git clone git@git.fahlgrengrip.com:experience-columbus/2012-03-columbus-insiders-email-templates.git ../../insiders-templates
git clone git@git.fahlgrengrip.com:experience-columbus/2012-03-columbus-insiders-email-templates.git ../../insiders-templates-repo
git status
git add .
cd ../../insiders-templates-repo/
git statu
git statuz
git status
ls -al
git checkout
git pull
cd ../cta-newsletter-exact-target-template/
git status
git push
git pull
git checkout
cd C:\inetpub
cd wwwroot
cd fahlgrenmortine-kentico
git status
git add App_Themes/FahlgrenMortine/img/rss16x16.png
git commit -am "Blog changes"
git push
git pull
git checkout --ours WebProject.sln
git diff CMSTemplates/FahlgrenMortine/BlogPortal.aspx
git checkout --ours CMSTemplates/FahlgrenMortine/BlogPortal.aspx
git commit -a
git push
start-tunnel administrator@staging.fahlgrenmortine.com -w
cd C:/inetpub
cd wwwroot/
cd fahlgrenmortine-kentico
asdfgit reset --hard 06ea88dd7da5d2a602bd4a8301bb7a430815b1da
git status
git pull
git log
git reset --hard 29c97c6a314a3ee4986b03a00f7a7bd4aab079ec
git reset --hard ae687a526e1f121c8dc5985e78238fe0e11f8ca1
git reset --hard 20cfbbb92924e224bdd54f0d17e3f6f9aa8d3e3c
git reset --hard ae687a526e1f121c8dc5985e78238fe0e11f8ca1
git status
git log
git reset --hard 20cfbbb92924e224bdd54f0d17e3f6f9aa8d3e3c
git pull
git status
git add App_Themes/FahlgrenMortine/css/base.css 
git add App_Themes/FahlgrenMortine/css/base.css CMSTemplates/FahlgrenMortine/FahlgrenMortine.master CMSTemplates/FahlgrenMortine/FahlgrenMortine.master.cs
git commit -m "changed easy.css to bass.css and updated masterpage"
git add App_Themes/FahlgrenMortine/css/easy.css
git status
git checkout App_Code/CMSModules/TranslationServices/TranslationServicesFunctions.cs
git diff App_Themes/FahlgrenMortine/css/blog.css
git add App_Themes/FahlgrenMortine/css/blog.css
git commit -m "updated blog stylesheet"
git status
git push
start-tunnel gcsc@gcsc.fahlgrendigital.com -l
start-tunnel gcsc@gcsc.fahlgrendigital.com -u
start-tunnel gcsc@gcsc.fahlgrendigital.com -a
th1nkgr1p
start-tunnel gcsc@gcsc.fahlgrendigital.com -a
start-tunnel gcsc@staging-u01.fahlgrendigital.com -a
start-tunnel gcsc@lnxdev.fahlgrengrip.com -a
cdp
cd experience-columbus/gcsc/
cd web-root/
git checkout; git pull
cd ~/
apt-get install apache
apt-get install apache2
apache2
ls /etc/apache2/conf.d/
apt-get install pear
apt-get find pear
apt-get find php
git config core.filemode false
start-tunnel gcsc@lnxdev.fahlgrengrip.com -a
cdp
cd experience-columbus/gcsc/web-root/
chmod -R 0777 wp-content/
chmod -R 0777 ./
ls -al
chown -R www-data:www-data ./
chown -R Everyone:Everyone ./
chown everyone ./
chown bwagner:bwagner ./
chown
chown --help
ls -al
chmod 777 ./*
ls -al
chmod -R 777 ./*
chmod -R 755 ./*
ls -al
chmod -R 777 ./wp-content
start-tunnel gcsc@staging-u01.fahlgrendigital.com -a
start-tunnel gcsc@lnxdev.fahlgrengrip.com -a
sudo chmod -R 0777 *
chmod -R 0777 ../web-root/
cdp
ssh-keygen.exe --help
su
cd-cooper 
cd ../../fahlgrenmortine-kentico/
git status
start-tunnel administrator@staging.fahlgrenmortine.com -w
git push
git pull
git push
git status
start-tunnel gcsc@lnxdev.fahlgrengrip.com -a
notepad .bashrc
explorer ./
shopt 
bash-config 
bash-config --help
bash-config alias
edit .bash_aliases
edit killtunnel.exe
ps -aW
start-tunnel gcsc@lnxdev.fahlgrengrip.com -a
ssh administrator@166.78.28.178 
git clone git@git.fahlgrengrip.com:greater-columbus-sports-commission/greater-columbus-sports-commission.git ./
ssh administrator@166.78.28.178 
cd projects/useful-code-snippets/
git status
git add sql-queries/queries.sql
git commit -m "for useful SQL queries I don't wanna forget"
git add javascript/
git add .
git status
git commit -m "some bash scripts and a useful 'autoexex.bat' batch file that runs in windows cmd"
git push
