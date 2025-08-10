echo "Welcome to User management ops"
cd operation
chmod +x create-user.sh
chmod +x user-del.sh
chmod +x user-group.sh
chmod +x group-add.sh
chmod +x group-del.sh
chmod +x group-mod.sh
chmod +x monitor.sh
chmod +x backup.sh
echo -e "Freature avaliable right now: \n1. User\n2. Group\n3. Monitoring\n4. Backup"
read -p "Enter choice [1-4]: " choice

case "$choice" in
        1)
            echo -e "Select the option: \n1. ADD User\n2. DELETE User\n3. CHANGE User_location in group"
            read -p "Enter choice [1-3]: " option

            case "$option" in
                1) ./create-user.sh ;;
                2) ./user-del.sh ;;
                3) ./user-group.sh ;;
                *) echo "Invalid Input" ;;
            esac
            ;;
        2)
            echo -e "Select the option: \n1. ADD Group\n2. DELETE Group\n3. MODIFY/rename Group"
            read -p "Enter choice [1-3]: " ops

            case "$ops" in
                1) ./group-add.sh ;;
                2) ./group-del.sh ;;
                3) ./group-mod.sh ;;
                *) echo "Invalid Input" ;;
            esac
            ;;
        3) ./monitor.sh ;;
        4) sudo ./backup.sh ;;
        *) echo "Invalid Input" ;;
esac
