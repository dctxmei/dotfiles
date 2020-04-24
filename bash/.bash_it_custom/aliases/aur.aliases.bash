Ghaur() {
    [ -z "$1" ] && echo "usage: Ghaur <aur package name>: get AUR package PKGBUILD" && return 1
    git clone https://aur.archlinux.org/"$1".git
    rm -rf "$1"/.git*
    rm "$1"/.SRCINFO
}

Gaaur() {
    [ -z "$1" ] && echo "usage: Gaaur <aur package name>: get AUR package PKGBUILD" && return 1
    git clone aur@aur.archlinux.org:"$1".git
}
