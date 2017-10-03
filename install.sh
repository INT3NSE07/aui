# Root
if [ $EUID != 0 ]; then
    echo -e "Script requires root access"
    sudo "$0" "$@"
    exit $?
fi

sudo ./fifo
sudo ./lilo
