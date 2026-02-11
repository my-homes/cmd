export C=/mnt/c
export PATH="$HOME/cmd:$PATH"
export PATH="$C/rider/bin:$PATH"
export PATH="$C/Program Files/Microsoft Visual Studio/18/Community/MSBuild/Current/Bin/amd64:$PATH"
export PATH="$C/Program Files/Microsoft Visual Studio/18/Community/Common7/IDE:$PATH"

git() {
    git.exe "$@"
}
cl() {
    git-cl "$@"
}
p() {
    git-put "$@"
}
a() {
    git add .
}
s() {
    git-st "$@"
}
c() {
    git-cl "$@"
}
n() {
    note.exe "$@"
}
r() {
    b release
}
y() {
    yazi "@a"
}
e() {
    emacsclient --reuse-frame "$@" &
}
d() {
    e .
}
o() {
    emacsclient -c -t "$@" &
}
E() {
    killall.exe emacs.exe
    runemacs.exe -mm --debug-init "$@"
}
D() {
    E .
}
rc() {
    e ~/.bashrc &
}
pr() {
    e ~/.profile &
}
RC() {
    E ~/.bashrc
}
PR() {
    E ~/.profile &
}
rc() {
    e ~/.bashrc &
}
pr() {
    e ~/.profile &
}
RC() {
    E ~/.bashrc
}
PR() {
    E ~/.profile &
}
f() {
    #start f.lnk `cygpath -w $(pwd)`
    FreeCommanderPortable.exe `cygpath -w $(pwd)` &
}
xpp() {
    #start x.lnk `cygpath -w $(pwd)`
    Explorer++Portable.exe `cygpath -w $(pwd)` &
}
x() {
    #start ex.lnk `cygpath -w $(pwd)`
    start .
}
7() {
    7-ZipPortable.exe `cygpath -w $(pwd)` &
}
fs() {
    FolderSize.exe -scan `cygpath -w $(pwd)` &
}
wm() {
    WinMergePortable.exe "$@" &
}
zlist() {
    zoxide query --list
}
zrm() {
    zoxide remove "$@"
    zoxide query --list
}
gotools() {
    cd /c/Users/user/.dotnet/tools
}
gofcbkup() {
    z /c/ProgramData/PortableApps/FreeCommanderPortable/App/FreeCommanderXE/Settings
}
winget-list-upgradeble() {
    winget upgrade --include-unknown
    winget list --upgrade-available --include-unknown
}
L() {
    dotnet list package --outdated
}
U() {
    dotnet-upgrade-packages.csx
}
yt() {
    cd ~/yt-dlp
}
alias gohome='cd ~/'
alias gocs='cd ~/cs'
alias godata='cd /c/ProgramData'
alias nuget='cd ~/nuget.org'
alias goprog='cd ~/_/programs'
alias goutil='cd ~/util'
alias gowork='cd ~/_'
#alias godocker='cd ~/_/docker'
alias gobg='cd ~/_/bg-04'
alias gocmd='cd ~/_/cmd-java'
alias gosetup='cd ~/_/bg-setup'
alias gocore='cd ~/_/jc-core'
alias gocart='cd ~/_/j2ee-shopping-cart'
alias gohaxe='cd ~/api/haxe'
alias golt='cd /c/Users/user/.lt'
alias gohtdocs='cd /c/xampp/htdocs'
alias gostraight='cd ~/.emacs.d/straight'
alias gomusic='cd /c/Users/user/Music'
alias gomedia='cd ~/nuget.org/my-media-player'
alias godownloads='cd /c/Users/user/Downloads'

## emacsclient をシームレスに使うための関数
function ecx(){
    echo "[$0] emacsclient -c -t $*";
    (emacsclient -c -t $* ||
        (echo "[$0] emacs --daemon"; emacs --daemon &&
            (echo "[$0] emacsclient -c -t $*"; emacsclient -c -t $*)) ||
        (echo "[$0] emacs $*"; emacs $*))
}

ps -efa | grep "emacs --daemon" | grep -v "grep emacs --daemon"
if [ "$?" == "1" ]; then
  emacs --daemon &
fi
