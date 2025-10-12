echo -e "\nSetting static IP from hostname"
if [ "$(hostname)" == "rpi5" ]; then
    IP="192.168.2.6"
elif [ "$(hostname)" == "rpi4" ]; then
    IP="192.168.2.8"
elif [ "$(hostname)" == "rpi3" ]; then
    IP="192.168.2.9"
fi
if [ -n "$IP" ]; then
    echo "Setting static IP to $IP"
    # nmcli connection show
    # nmcli connection modify <connection_name> ipv4.addresses <static_ip>/<subnet_mask>
    sudo nmcli connection modify "Wired connection 1" connection.id eth0
    sudo nmcli con mod eth0 ipv4.addresses "$IP/24"
    sudo nmcli con mod eth0 ipv4.gateway "192.168.2.1"
    sudo nmcli con mod eth0 ipv4.dns "192.168.1.1"
    sudo nmcli con mod eth0 ipv4.method manual
    sudo nmcli con mod eth0 connection.autoconnect yes
    sudo systemctl restart NetworkManager
else
    echo "Hostname not recognized, skipping static IP setup"
    exit 1
fi
echo "Static IP setup complete"
echo "You may need to reconnect to the device using the new IP: $IP"
