ssh_add_all() {
    grep -lsR "PRIVATE" ~/.ssh
    read -p "Please select your private key: " ID
    ssh-add "$ID"
}
