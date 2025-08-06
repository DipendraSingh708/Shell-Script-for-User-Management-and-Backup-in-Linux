#!/bin/bash

echo "Welcome to monitor tab"

echo -e "Select an option:\n1. id\n2. whoami\n3. users\n4. last\n5. groups_user_info\n6. top\n7. pwd\n8. nproc\n9. lslogins\n10. cat /etc/group\n11. cat /etc/passwd"
read -p "Enter choice [1-11]: " choice

case "$choice" in
  1) id ;;
  2) whoami ;;
  3) users ;;
  4) last ;;
  5) groups ;;
  6) top ;;
  7) pwd ;;
  8) nproc ;;
  9) lslog ;;
  10) cat /etc/group ;;
  11) cat /etc/passwd ;;
  *) echo "Invalid choice!" ;;
esac
