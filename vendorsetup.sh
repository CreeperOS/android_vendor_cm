for combo in $(curl -s https://raw.githubusercontent.com/CreeperOS-Devices/hoopy/master/creeper-build-targets | sed -e 's/#.*$//' | grep OS-lp | awk '{printf "creeper_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
