#!/bin/bash

# Default values
DEFAULT_USER=$USER
DEFAULT_TARGET=$TARGET
DEFAULT_PORT=22
DEFAULT_COMMAND='echo "Connected!"'

# Configuration file location
CONFIG_FILE="d3ckn3t_config.sh"

hostname=$(hostname)
operator=$(whoami)

read_config() {
  if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE"
  fi
}
read_config

# Function to set up default values interactively
setup_defaults() {
  clear
  cat << "EOF"
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣛⣻⠿⢖⣒⣒⡒⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠈⠁⠀⢾⣿⠛⠛⠛⠛⠓⠀⠈⢇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣀⡤⢴⠇⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3ckn3t-sh3ll]:[v1]
⠀⢀⡤⣲⣯⣶⣿⡿ ⠀.|3|@|<|-|@t. ⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3k4]:[2024]
⢠⢟⣿⠟⠛⠉⢀⣧⣤⣀⣀⡀⠀⠀⣀⡤⠤⠐⠒⠒⠒⠒⠚⠒⠒⠢⢤⡀⠀⠀               [hack.the.planet]    
⣾⡞⠁⠀⠀⠀⠸⢿⣿⣿⣿⠿⠛⠉   .|3|G|R0|\|.⠀⠉⠢⡀               [all.your.nekworkz.are.belong.to.us]
⣷⠀⠀⠀⠀⠀⠀⣀⠤⠋⠁⠀⠀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⢱
⠘⢮⣦⣠⣄⣴⡯⠥⠴⠒⠚⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠒⠋       
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF
  sleep .2
  echo -e "\n[!]:[sysangel@d3ckn3t]:[Welcome to the set^ process for d3ckn3t-sh3ll,$operator.]:[!]\n"
  sleep .2
  read -p "[?]:[d3ckn3t]:[set^]:[Enter default --user]:[default is $DEFAULT_USER]:[?] " USER
  sleep .2
  echo "[.]:[...]"
  sleep .2
  read -p "[?]:[d3ckn3t]:[set^]:[Enter default --target]:[default is $DEFAULT_TARGET]:[?] " TARGET
  sleep .2
  echo "[.]:[...]"
  sleep .2
  read -p "[?]:[d3ckn3t]:[set^]:[Enter default --port]:[default is $DEFAULT_PORT]:[?] " PORT
  sleep .2
  echo "[.]:[...]"
  sleep .2
  read -p "[?]:[d3ckn3t]:[set^]:[Enter default --target]:[default is '$DEFAULT_COMMAND']:[?] " COMMAND
  echo "DEBUG: USER=$USER, TARGET=$TARGET, PORT=$PORT, COMMAND=$COMMAND"

  sleep .2
  echo "[.]:[...]"
  sleep .2

# Write the configuration to the file
  echo "DEFAULT_USER=${USER:-$DEFAULT_USER}" > "$CONFIG_FILE"
  echo "DEFAULT_TARGET=${TARGET:-$DEFAULT_TARGET}" >> "$CONFIG_FILE"
  echo "DEFAULT_PORT=${PORT:-$DEFAULT_PORT}" >> "$CONFIG_FILE"
  echo "DEFAULT_COMMAND='${COMMAND:-$DEFAULT_COMMAND}'" >> "$CONFIG_FILE"


  echo -e "[!]:[sysangel@d3ckn3t]:[Configuration complete, time to break ice, cowboy!]:[!]\n"
}


# Function to print usage information
usage() {
  clear
  cat << "EOF"
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣛⣻⠿⢖⣒⣒⡒⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠈⠁⠀⢾⣿⠛⠛⠛⠛⠓⠀⠈⢇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣀⡤⢴⠇⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3ckn3t-sh3ll]:[v1]
⠀⢀⡤⣲⣯⣶⣿⡿ ⠀.|3|@|<|-|@t. ⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3k4]:[2024]
⢠⢟⣿⠟⠛⠉⢀⣧⣤⣀⣀⡀⠀⠀⣀⡤⠤⠐⠒⠒⠒⠒⠚⠒⠒⠢⢤⡀⠀⠀               [hack.the.planet]    
⣾⡞⠁⠀⠀⠀⠸⢿⣿⣿⣿⠿⠛⠉   .|3|G|R0|\|.⠀⠉⠢⡀               [all.your.nekworkz.are.belong.to.us]
⣷⠀⠀⠀⠀⠀⠀⣀⠤⠋⠁⠀⠀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⢱
⠘⢮⣦⣠⣄⣴⡯⠥⠴⠒⠚⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠒⠋       
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF
  echo -e "\nUsage: $0 [-u --user] [-t --target] [-p --port] [-c --command]"
  echo -e "\nOptions:"
    echo "  -u, --user <USER>       Specify the SSH user. (default is $USER)"
    echo "  -t, --target <IP>       Specify the IP of the target Host. (default is $TARGET)"
    echo "  -p, --port <PORT>       Specify the IP of the target Host. (default is 22)"
    echo "  -c, --command <command> Set login command for ssh session. (defult is $login_command)"
    echo
    echo "  -s, --setup             Run setup to configure default values."
    echo "  -h, --help              Display this usage / help message."
  exit 1
}

# Function to handle script exit
exit_script() {
  echo -e "\n[+]:[d3ckn3t]:[target lock failure]:[$DEFAULT_USER@$TARGET]"
            sleep .2
            echo "[.]:[...]"
            sleep .2
            echo "[!]:[d3Kd3k4t3ss3r4:]:[thanks for using d3ckn3t-t00ls, $operator]:[!]"
            sleep .2
            echo "[.]:[...]"
            sleep .3
            echo -e "\n[x]:[exiting...]:[hack_the_planet]:[x]"
  exit 0
}

# Function to ping the target IP
ping_target() {
  clear
  cat << "EOF"
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣛⣻⠿⢖⣒⣒⡒⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠈⠁⠀⢾⣿⠛⠛⠛⠛⠓⠀⠈⢇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣀⡤⢴⠇⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3ckn3t-sh3ll]:[v1]
⠀⢀⡤⣲⣯⣶⣿⡿ ⠀.|3|@|<|-|@t. ⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3k4]:[2024]
⢠⢟⣿⠟⠛⠉⢀⣧⣤⣀⣀⡀⠀⠀⣀⡤⠤⠐⠒⠒⠒⠒⠚⠒⠒⠢⢤⡀⠀⠀               [hack.the.planet]    
⣾⡞⠁⠀⠀⠀⠸⢿⣿⣿⣿⠿⠛⠉   .|3|G|R0|\|.⠀⠉⠢⡀               [all.your.nekworkz.are.belong.to.us]
⣷⠀⠀⠀⠀⠀⠀⣀⠤⠋⠁⠀⠀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⢱
⠘⢮⣦⣠⣄⣴⡯⠥⠴⠒⠚⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠒⠋       
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF
  echo -e "\n[=]:[d3ckn3t]:[AP]:[ssh link is up]"
  sleep .3
  echo "[.]:[...]"
  sleep .3
  echo "[#]:[d3ckn3t]:[AP]:[ping]:[$TARGET]"
  sleep .3
  echo "[.]:[...]"
  if ping -c 1 "$TARGET" &> /dev/null; then
    ssh_connect
  else
    show_menu
  fi
}

# Function to connect to the target using SSH
ssh_connect() {
  echo "[+]:[d3ckn3t]:[client]:[$TARGET]:[Found]"
  sleep .2
  echo "[.]:[...]"
  sleep .2 
  echo "[+]:[d3ckn3t]:[target locked]:[$USER@$TARGET]"
  sleep .2
  echo "[.]:[...]"
  ssh -p "$PORT" "$USER@$TARGET" #"$COMMAND"
}

# Function to show the menu
show_menu() {
  echo -e "\n[+]:[d3ckn3t]:[client]:[$TARGET]:[Not Found]"
  sleep .2
  echo "[.]:[...]"
  sleep .2
  echo "[.]:[Options]:"
  echo -e "\n[1]:[d3ckn3t]:[AP]:[ping]:[$TARGET]"
  echo "[2]:[$hostname][nmap]:[sub.net scan]:["${TARGET%.*}.0/24"]"
  echo -e "[3]:[Exit]\n"  
  sleep .2
  read -p "[?]:[Enter your choice:] [1-3]: " choice

  case $choice in
    1)
      ping_target
      ;;
    2)
      scan_subnet
      ;;
    3)
      exit_script
      ;;
    *)
      echo "Invalid option."
      show_menu
      ;;
  esac
}

# Function to scan the subnet using nmap
scan_subnet() {
  clear
  cat << "EOF"
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣛⣻⠿⢖⣒⣒⡒⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠈⠁⠀⢾⣿⠛⠛⠛⠛⠓⠀⠈⢇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣀⡤⢴⠇⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3ckn3t-sh3ll]:[v1]
⠀⢀⡤⣲⣯⣶⣿⡿ ⠀.|3|@|<|-|@t. ⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3k4]:[2024]
⢠⢟⣿⠟⠛⠉⢀⣧⣤⣀⣀⡀⠀⠀⣀⡤⠤⠐⠒⠒⠒⠒⠚⠒⠒⠢⢤⡀⠀⠀               [hack.the.planet]    
⣾⡞⠁⠀⠀⠀⠸⢿⣿⣿⣿⠿⠛⠉   .|3|G|R0|\|.⠀⠉⠢⡀               [all.your.nekworkz.are.belong.to.us]
⣷⠀⠀⠀⠀⠀⠀⣀⠤⠋⠁⠀⠀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⢱
⠘⢮⣦⣠⣄⣴⡯⠥⠴⠒⠚⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠒⠋       
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF
    echo -e "\n[+]:[d3ckn3t]:[client]:[$TARGET]:[Not Found]"
    sleep .2
    echo "[.]:[...]"
    sleep .2
    echo "[+]:[$hostname]:[nmap]:[sub.net scan]:["${TARGET%.*}.0/24"]"
    sleep .2
    echo "[.]:[...]"
    
  nmap_output=$(nmap -p 22 "${TARGET%.*}.0/24" | awk '/Nmap scan report/{ip=$5; hostname=$NF; next} /Host is up/{status="closed"; next} /22\/open\/tcp\/ssh/{status="ssh: open"} {if(ip && status) {printf "%-32s %-22s %-25s\n", ip, hostname, status; ip=""; hostname=""; status=""}}')
  if [ -z "$nmap_output" ]; then
    echo "No hosts found."
  else
    clear
    cat << "EOF"
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣛⣻⠿⢖⣒⣒⡒⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠈⠁⠀⢾⣿⠛⠛⠛⠛⠓⠀⠈⢇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣀⡤⢴⠇⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3ckn3t-sh3ll]:[v1]
⠀⢀⡤⣲⣯⣶⣿⡿ ⠀.|3|@|<|-|@t. ⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3k4]:[2024]
⢠⢟⣿⠟⠛⠉⢀⣧⣤⣀⣀⡀⠀⠀⣀⡤⠤⠐⠒⠒⠒⠒⠚⠒⠒⠢⢤⡀⠀⠀               [hack.the.planet]    
⣾⡞⠁⠀⠀⠀⠸⢿⣿⣿⣿⠿⠛⠉   .|3|G|R0|\|.⠀⠉⠢⡀               [all.your.nekworkz.are.belong.to.us]
⣷⠀⠀⠀⠀⠀⠀⣀⠤⠋⠁⠀⠀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⢱
⠘⢮⣦⣠⣄⣴⡯⠥⠴⠒⠚⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠒⠋       
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF
    echo -e "\nHostname                        IP Address             SSH    "
    echo "--------------------------      ---------------        -------"
    echo "$nmap_output"
  fi
  
  echo -e "\n[1]:[set]:[alternate.user]:[+]:[alternate.target]"
  echo "[2]:[Return]:[>]:[recon.menu]"
  echo "[3]:[Exit.]"
  read -p "[?]:[Enter your choice:] " choice
  
  case $choice in
    1)
      echo
      read -p "[?]:[d3ckn3t]:[set^]:[alternate.user]:[?]: " new_user
      read -p "[?]:[d3ckn3t]:[set^]:[alternate.target]:[?]: " new_target
      USER="$new_user"
      TARGET="$new_target"
      ping_target
      ;;
    2)
      clear
      cat << "EOF"
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣛⣻⠿⢖⣒⣒⡒⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠈⠁⠀⢾⣿⠛⠛⠛⠛⠓⠀⠈⢇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣀⡤⢴⠇⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3ckn3t-sh3ll]:[v1]
⠀⢀⡤⣲⣯⣶⣿⡿ ⠀.|3|@|<|-|@t. ⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3k4]:[2024]
⢠⢟⣿⠟⠛⠉⢀⣧⣤⣀⣀⡀⠀⠀⣀⡤⠤⠐⠒⠒⠒⠒⠚⠒⠒⠢⢤⡀⠀⠀               [hack.the.planet]    
⣾⡞⠁⠀⠀⠀⠸⢿⣿⣿⣿⠿⠛⠉   .|3|G|R0|\|.⠀⠉⠢⡀               [all.your.nekworkz.are.belong.to.us]
⣷⠀⠀⠀⠀⠀⠀⣀⠤⠋⠁⠀⠀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⢱
⠘⢮⣦⣠⣄⣴⡯⠥⠴⠒⠚⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠒⠋       
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF
      show_menu
      ;;
    3)
      clear
      cat << "EOF"
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢖⣛⣻⠿⢖⣒⣒⡒⠒⠲⠤⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⠈⠁⠀⢾⣿⠛⠛⠛⠛⠓⠀⠈⢇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣀⡤⢴⠇⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3ckn3t-sh3ll]:[v1]
⠀⢀⡤⣲⣯⣶⣿⡿ ⠀.|3|@|<|-|@t. ⠀⢸⠀⠀⠀⠀⠀⠀⠀               [d3k4]:[2024]
⢠⢟⣿⠟⠛⠉⢀⣧⣤⣀⣀⡀⠀⠀⣀⡤⠤⠐⠒⠒⠒⠒⠚⠒⠒⠢⢤⡀⠀⠀               [hack.the.planet]    
⣾⡞⠁⠀⠀⠀⠸⢿⣿⣿⣿⠿⠛⠉   .|3|G|R0|\|.⠀⠉⠢⡀               [all.your.nekworkz.are.belong.to.us]
⣷⠀⠀⠀⠀⠀⠀⣀⠤⠋⠁⠀⠀⣀⣀⣀⣠⣤⣤⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⢱
⠘⢮⣦⣠⣄⣴⡯⠥⠴⠒⠚⠛⠛⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠒⠒⠋       
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
EOF
      exit_script
      ;;
    *)
      echo "Invalid option."
      scan_subnet
      ;;
  esac
}

while [[ "$#" -gt 0 ]]; do
  case "$1" in
    -u|--user)
      USER="$2"
      shift 2
      ;;
    -t|--target)
      TARGET="$2"
      shift 2
      ;;
    -p|--port)
      PORT="$2"
      shift 2
      ;;
    -c|--command)
      COMMAND="$2"
      shift 2
      ;;
    -s|--setup)
      setup_defaults
      exit 0
      ;;
    -h|--help)
      usage
      ;;
    *)
      echo "Unknown option: $1"
      usage
      ;;
  esac
done

# Use default values if not specified
USER=${USER:-$DEFAULT_USER}
TARGET=${TARGET:-$DEFAULT_TARGET}
PORT=${PORT:-$DEFAULT_PORT}
COMMAND=${COMMAND:-$DEFAULT_COMMAND}

# Trap SIGTERM signal to ensure exit message is displayed
trap exit_script SIGTERM

# Start by pinging the target
ping_target