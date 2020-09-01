git_clone_https_aur() {
    [[ -z "$1" ]] && echo "usage: Ghaur <aur package name>: get AUR package PKGBUILD" && return 1
    git clone https://aur.archlinux.org/"$1".git
    rm -rf "$1"/.git*
    rm "$1"/.SRCINFO
}

git_clone_aur_aur() {
    [[ -z "$1" ]] && echo "usage: Gaaur <aur package name>: get AUR package PKGBUILD" && return 1
    git clone aur@aur.archlinux.org:"$1".git
}
