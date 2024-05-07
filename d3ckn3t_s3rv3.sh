#!/bin/bash

default_port=1337
hostname=$(hostname)
ip_address=$(hostname -I | awk '{print $1}')


# Function to display usage information
usage() {
    cat <<"EOF"

         __       _ _____      _                    _____ _     __ 
        | _|   __| |___ /  ___| | __          _ __ |___ /| |_  |_ |
        | |   / _` | |_ \ / __| |/ /  _____  | '_ \  |_ \| __|  | |
        | |  | (_| |___) | (__|   <  |_____| | | | |___) | |_   | |
        | |   \__,_|____/ \___|_|\_\         |_| |_|____/ \__|  | |
        |__|                                                   |__|
                           [d3k@t3dd3r4]:[2024]
                   __       _____            _____   __ 
                  | _|  ___|___ / _ ____   _|___ /  |_ |
                  | |  / __| |_ \| '__\ \ / / |_ \   | |
                  | |  \__ \___) | |   \ V / ___) |  | |
                  | |  |___/____/|_|    \_/ |____/   | |
                  |__|                              |__|
EOF
    echo "Usage: d3ckn3t-s3rv3 [-p <port>] [-d <directory>]"
    echo "Options:"
    echo "  -p, --port <port>       Specify the port number (default is $default_port)"
    echo "  -d, --directory <path>  Specify the directory to serve files from"
    exit 1
}

# Function to handle keyboard interrupt
cleanup() {
        clear
        #cat <<"EOF"
#[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]
#
#         __       _ _____      _                    _____ _     __ 
#        | _|   __| |___ /  ___| | __          _ __ |___ /| |_  |_ |
#        | |   / _` | |_ \ / __| |/ /  _____  | '_ \  |_ \| __|  | |
#        | |  | (_| |___) | (__|   <  |_____| | | | |___) | |_   | |
#        | |   \__,_|____/ \___|_|\_\         |_| |_|____/ \__|  | |
#        |__|                                                   |__|
#                           [d3k@t3dd3r4]:[2024]
#                   __       _____            _____   __ 
#                  | _|  ___|___ / _ ____   _|___ /  |_ |
#                  | |  / __| |_ \| '__\ \ / / |_ \   | |
#                  | |  \__ \___) | |   \ V / ___) |  | |
#                  | |  |___/____/|_|    \_/ |____/   | |
#                  |__|                              |__|
#[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓][↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]
#EOF

#laptop ascii
    cat <<"EOF"
|[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]|

     __       _ _____      _           _____ _                 _____            _____   __    
    | _|   __| |___ /  ___| | __ _ __ |___ /| |_           ___|___ / _ ____   _|___ /  |_ |     [d3ckn3t-s3rv3]:[v1]
    | |   / _` | |_ \ / __| |/ /| '_ \  |_ \| __|  _____  / __| |_ \| '__\ \ / / |_ \   | |     [d3k@t3ss3r4]:[2024]
    | |  | (_| |___) | (__|   < | | | |___) | |_  |_____| \__  \__) | |   \ V / ___) |  | |     [hack.the.planet]
    | |   \__,_|____/ \___|_|\_\|_| |_|____/ \__|         |___/____/|_|    \_/ |____/   | |     [all.your.nekworkz.are.belong.us]
    |__|                                                                               |__|


|[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]|
EOF
    sleep .5
    echo
    echo -e "[\e[5m!\e[25m]:[d3ckn3t-s3rv3]:[operator.interference]"
    sleep .3
    echo -e "[\e[5m!\e[25m]:[\e[5mABORT\e[25m]:[\e[5m!\e[25m]:[d3ckn3t-s3rv3]:[\e[5mABORT\e[25m]:[\e[5m!\e[25m]\n"
    sleep 1
    echo "[x]:[d3ckn3t-s3rv3]:[deactivating server]:[-]"
    sleep .3
    echo "[.]:[...]"
    sleep .3
    echo -e "[\e[5m↓\e[25m]:[d3ckn3t-s3rv3]:[\e[5m↓\e[25m]:[$hostname]:[$directory]:[server]:[$ip_address]:[$port]:[\e[5m↓\e[25m]:[-]"
    sleep .3
    echo -e "[.]:[...]"
    sleep .3
    echo -e "[\e[5mx\e[25m]:[d3ckn3t-s3rv3]:[exiting]:[...]:[\e[5mx\e[25m]:\n"
    sleep 1
    echo -e "[.]:[...]"
    sleep 2
    clear


    exit 0
}

# Set trap for keyboard interrupt (Ctrl+C)
trap cleanup SIGINT
# Parse command line options
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -p|--port)
            port="$2"
            shift
            shift
            ;;
        -d|--directory)
            directory="$2"
            shift
            shift
            ;;
        *)
            usage
            ;;
    esac
done

# Set default port if not specified
if [ -z "$port" ]; then
    port=$default_port    
fi

# If directory is not specified, use the current directory
if [ -z "$directory" ]; then
    directory=$(pwd)
    fi

# Check if the provided directory exists
if [ ! -d "$directory" ]; then
    echo "[x]:[$hostname]:[server]:[invalid input]:[Directory $directory does not exist.]"
    sleep .5
    echo "[.]:[...]"
    exit 1
fi

# Change to the provided directory
cd "$directory" || exit

# Start the Python 3 HTTP server
clear
echo
#cyberdeck ascii
    #cat <<"EOF"
#[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]|
#         __       _ _____      _                    _____ _     __
#        | _|   __| |___ /  ___| | __          _ __ |___ /| |_  |_ |
#        | |   / _` | |_ \ / __| |/ /  _____  | '_ \  |_ \| __|  | |
#        | |  | (_| |___) | (__|   <  |_____| | | | |___) | |_   | |
#        | |   \__,_|____/ \___|_|\_\         |_| |_|____/ \__|  | |
#        |__|                                                   |__|
#                           [d3k@t3dd3r4]:[2024]
#                   __       _____            _____   __ 
#                  | _|  ___|___ / _ ____   _|___ /  |_ |
#                  | |  / __| |_ \| '__\ \ / / |_ \   | |
#                  | |  \__ \___) | |   \ V / ___) |  | |
#                  | |  |___/____/|_|    \_/ |____/   | |
#                  |__|                              |__|
#EOF

#laptop ascii
    cat <<"EOF"
|[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]:[↑]|

     __       _ _____      _           _____ _                 _____            _____   __    
    | _|   __| |___ /  ___| | __ _ __ |___ /| |_           ___|___ / _ ____   _|___ /  |_ |     [d3ckn3t-s3rv3]:[v1]
    | |   / _` | |_ \ / __| |/ /| '_ \  |_ \| __|  _____  / __| |_ \| '__\ \ / / |_ \   | |     [d3k@t3ss3r4]:[2024]
    | |  | (_| |___) | (__|   < | | | |___) | |_  |_____| \__  \__) | |   \ V / ___) |  | |     [hack.the.planet]
    | |   \__,_|____/ \___|_|\_\|_| |_|____/ \__|         |___/____/|_|    \_/ |____/   | |     [all.your.nekworkz.are.belong.us]
    |__|                                                                               |__|


|[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]:[↓]|
EOF

sleep 1
echo
echo "[=]:[d3ckn3t-s3rv3]:[configuration]:[initializing]:[>]"
sleep .3
echo "[.]:[...]"
sleep .3
echo "[=]:[d3ckn3t-s3rv3]:[configuring]:[hostname]:[$hostname]:[+]"
sleep .3
echo "[.]:[...]"
sleep .3
echo "[=]:[d3ckn3t-s3rv3]:[configuring]:[ipv4]:[$ip_address]:[+]"
sleep .3
echo "[.]:[...]"
sleep .3
echo "[=]:[d3ckn3t-s3rv3]:[configuring]:[directory]:[$directory]:[+]"
sleep .3
echo "[.]:[...]"
sleep .3
echo "[=]:[d3ckn3t-s3rv3]:[configuring]:[port]:[$port]:[+]"
sleep .3
echo "[.]:[...]"
sleep .3
echo "[.]:[d3ckn3t-s3rv3]:[deploying server]:[\e[5m↑\e[25m]"
sleep .3
echo "[.]:[...]"
sleep .3
echo -e "[\e[5m↑\e[25m]:[d3ckn3t-s3rv3]:[\e[5m↑\e[25m]:[$hostname]:[$directory]:[server]:[$ip_address]:[$port]:[\e[5m↑\e[25m]"
sleep .3
echo "[.]:[...]"
echo -e "[\e[5m↑\e[25m]:[d3ckn3t-s3rv3]:[x]:[_sigterm=quit_]:[x]:[\e[5m↑\e[25m]:[\e[5m↑\e[25m]:[\e[5m↑\e[25m]:[\e[5m↑\e[25m]:\n"

(python3 -m http.server "$port")
