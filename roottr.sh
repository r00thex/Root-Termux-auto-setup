#!/data/data/com.termux/files/usr/bin/bash

# ───── Colors ─────
green='\e[1;92m'
red='\e[1;91m'
cyan='\e[1;96m'
yellow='\e[1;93m'
nc='\e[0m'

# ───── Banner ─────
banner() {
    clear
    echo -e "${green}"
    cat << "EOF"
    ⠄⠄⠄⠄⠄⣀⣀⣤⣤⣴⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣦⣤⣤⣄⣀⡀⠄⠄⠄⠄⠄
   ⠄⠄⠄⠄⣴⣿⣿⡿⣿⢿⣟⣿⣻⣟⡿⣟⣿⣟⡿⣟⣿⣻⣟⣿⣻⢿⣻⡿⣿⢿⣷⣆⠄⠄⠄
   ⠄⠄⠄⢘⣿⢯⣷⡿⡿⡿⢿⢿⣷⣯⡿⣽⣞⣷⣻⢯⣷⣻⣾⡿⡿⢿⢿⢿⢯⣟⣞⡮⡀⠄⠄
   ⠄⠄⠄⢸⢞⠟⠃⣉⢉⠉⠉⠓⠫⢿⣿⣷⢷⣻⣞⣿⣾⡟⠽⠚⠊⠉⠉⠉⠙⠻⣞⢵⠂⠄⠄
   ⠄⠄⠄⢜⢯⣺⢿⣻⣿⣿⣷⣔⡄⠄⠈⠛⣿⣿⡾⠋⠁⠄⠄⣄⣶⣾⣿⡿⣿⡳⡌⡗⡅⠄⠄
   ⠄⠄⠄⢽⢱⢳⢹⡪⡞⠮⠯⢯⡻⡬⡐⢨⢿⣿⣿⢀⠐⡥⣻⡻⠯⡳⢳⢹⢜⢜⢜⢎⠆⠄⠄
   ⠄⠄⠠⣻⢌⠘⠌⡂⠈⠁⠉⠁⠘⠑⢧⣕⣿⣿⣿⢤⡪⠚⠂⠈⠁⠁⠁⠂⡑⠡⡈⢮⠅⠄⠄
   ⠄⠄⠠⣳⣿⣿⣽⣭⣶⣶⣶⣶⣶⣺⣟⣾⣻⣿⣯⢯⢿⣳⣶⣶⣶⣖⣶⣮⣭⣷⣽⣗⠍⠄⠄
   ⠄⠄⢀⢻⡿⡿⣟⣿⣻⣽⣟⣿⢯⣟⣞⡷⣿⣿⣯⢿⢽⢯⣿⣻⣟⣿⣻⣟⣿⣻⢿⣿⢀⠄⠄
   ⠄⠄⠄⡑⡏⠯⡯⡳⡯⣗⢯⢟⡽⣗⣯⣟⣿⣿⣾⣫⢿⣽⠾⡽⣺⢳⡫⡞⡗⡝⢕⠕⠄⠄⠄
   ⠄⠄⠄⢂⡎⠅⡃⢇⠇⠇⣃⣧⡺⡻⡳⡫⣿⡿⣟⠞⠽⠯⢧⣅⣃⠣⠱⡑⡑⠨⢐⢌⠂⠄⠄
   ⠄⠄⠄⠐⠼⣦⢀⠄⣶⣿⢿⣿⣧⣄⡌⠂⠢⠩⠂⠑⣁⣅⣾⢿⣟⣷⠦⠄⠄⡤⡇⡪⠄⠄⠄
   ⠄⠄⠄⠄⠨⢻⣧⡅⡈⠛⠿⠿⠿⠛⠁⠄⢀⡀⠄⠄⠘⠻⠿⠿⠯⠓⠁⢠⣱⡿⢑⠄⠄⠄⠄
   ⠄⠄⠄⠄⠈⢌⢿⣷⡐⠤⣀⣀⣂⣀⢀⢀⡓⠝⡂⡀⢀⢀⢀⣀⣀⠤⢊⣼⡟⡡⡁⠄⠄⠄⠄
   ⠄⠄⠄⠄⠄⠈⢢⠚⣿⣄⠈⠉⠛⠛⠟⠿⠿⠟⠿⠻⠻⠛⠛⠉⠄⣠⠾⢑⠰⠈⠄⠄⠄⠄⠄
   ⠄⠄⠄⠄⠄⠄⠄⠑⢌⠿⣦⡡⣱⣸⣸⣆⠄⠄⠄⣰⣕⢔⢔⠡⣼⠞⡡⠁⠁⠄⠄⠄⠄⠄⠄
   ⠄⠄⠄⠄⠄⠄⠄⠄⠄⠑⢝⢷⣕⡷⣿⡿⠄⠄⠠⣿⣯⣯⡳⡽⡋⠌⠄⠄⠄⠄⠄⠄⠄⠄⠄
   ⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠙⢮⣿⣽⣯⠄⠄⢨⣿⣿⡷⡫⠃⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
   ⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠘⠙⠝⠂⠄⢘⠋⠃⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
EOF
    echo -e "${cyan}🔥 Root_hex auto Termux setup Tools 🔥${nc}"
    echo -e "${green}📘 FB:${nc} https://www.facebook.com/maxroot55"
    echo -e "${green}📢 TG:${nc} https://t.me/roothexc"
    echo ""
}

# ───── Pre-checks ─────
check_requirements() {
    if [ "$PREFIX" != "/data/data/com.termux/files/usr" ]; then
        echo -e "${red}[✘] This script is only for Termux!${nc}"
        exit 1
    fi

    if ! ping -q -c 1 -W 1 google.com > /dev/null 2>&1; then
        echo -e "${red}[✘] No internet connection. Turn on data/wifi.${nc}"
        exit 1
    fi

    if [ "$(id -u)" -eq 0 ]; then
        echo -e "${yellow}[!] Warning: You're running as root. Some tools may break.${nc}"
    fi
}
# ───── Option Functions ─────
basic_setup() {
    pkg update -y && pkg upgrade -y
    pkg install -y git curl wget nano vim zip unzip python python2 openssh clang php ruby nodejs
    pip install --upgrade pip
    pip install requests bs4 rich
}

custom_login_msg() {
    echo -e "${cyan}Enter your welcome message:${nc}"
    read -p "👉 " msg
    if [ "$SHELL" = "/data/data/com.termux/files/usr/bin/zsh" ]; then
        echo "echo '$msg'" >> ~/.zshrc
    else
        echo "echo '$msg'" >> ~/.bashrc
    fi
    echo -e "${green}✅ Message added. Restart Termux to see it.${nc}"
}

extra_tools() {
    echo -e "${cyan}[~] Installing Extra Tools...${nc}"

    pkg install -y nmap || echo -e "${red}[!] Failed to install nmap${nc}"

    # Hydra requires x11-repo
    if ! command -v hydra &>/dev/null; then
        pkg install -y x11-repo
        pkg install -y hydra || echo -e "${red}[!] Hydra install failed${nc}"
    else
        echo -e "${green}[✓] hydra already installed.${nc}"
    fi

    # SQLMap from Git
    if [ ! -d "$HOME/sqlmap" ]; then
        git clone https://github.com/sqlmapproject/sqlmap.git ~/sqlmap || echo -e "${red}[!] SQLMap clone failed${nc}"
    else
        echo -e "${green}[✓] sqlmap already present at ~/sqlmap${nc}"
    fi

    echo -e "${green}✅ Extra tools setup complete.${nc}"
}

about_fcf() {
    echo -e "${cyan}📢 TBDF Admins:${nc}\n1. Root_hex"
}

setup_termux_banner() {
    echo -e "${cyan}[~] Setting up your root Termux Banner...${nc}"
    pkg install -y figlet lolcat > /dev/null 2>&1
    BANNER_FILE="$HOME/.termux_banner"
    cat << 'EOF' > $BANNER_FILE
figlet "F.C.F" | lolcat
echo -e "\e[1;96m🔥 Welcome to Feni TEAM BD DARK FORCE 🔥\e[0m"
EOF
    if ! grep -qF "bash \$HOME/.termux_banner" "$HOME/.bashrc"; then
        echo -e "\n# Load FCF Termux Banner\nbash \$HOME/.termux_banner" >> "$HOME/.bashrc"
    fi
    echo -e "${green}✅ Banner successfully installed!"
    echo -e "${yellow}🔁 Restart Termux to see your custom banner.${nc}"
}
system_info() {
    pkg install -y neofetch htop && neofetch
}

network_tools() {
    pkg install -y net-tools dnsutils && ifconfig
}

tweak_terminal() {
    pkg install -y zsh && chsh -s zsh
    echo -e "${green}✅ ZSH installed. Use 'zsh' to start shell.${nc}"
}

fun_stuff() {
    pkg install -y cmatrix cowsay sl && cmatrix
}

update_this_script() {
    echo -e "${cyan}🔄 Updating from GitHub...${nc}"
    if [ -d ".git" ]; then
        git pull origin main || git pull origin master
        echo -e "${green}✅ Script updated successfully. Restart to apply changes.${nc}"
    else
        echo -e "${yellow}[!] This script is not cloned from Git. Cannot auto-update.${nc}"
    fi
}

auto_restart_setup() {
    echo "termux-reload-settings" >> ~/.bashrc
    echo -e "${green}✅ Auto reload added to bashrc.${nc}"
}

backup_termux() {
    if ! command -v tar &> /dev/null; then
        echo -e "${red}[✘] tar not installed. Cannot backup.${nc}"
    else
        tar -czvf ~/termux-backup.tar.gz ~ --exclude='*/cache/*' --exclude='*/Downloads/*'
        echo -e "${green}✅ Backup saved to ~/termux-backup.tar.gz${nc}"
    fi
}

developer_stuff() {
    pkg install -y clang make cmake build-essential
    echo -e "${green}✅ Dev tools installed.${nc}"
}

theme_selector() {
    echo -e "${cyan}[~] Available Themes:\n1) Matrix\n2) Classic\n3) Exit${nc}"
    read -p "Choose theme number: " t
    case $t in
        1) echo "cmatrix" >> ~/.bashrc && echo -e "${green}✅ Matrix theme applied.${nc}" ;;
        2) echo "clear && echo Welcome!" >> ~/.bashrc && echo -e "${green}✅ Classic theme set.${nc}" ;;
        3) return ;;
        *) echo -e "${red}[!] Invalid. Returning...${nc}" ;;
    esac
}
secure_tools() {
    pkg install -y openssl termux-auth
    echo -e "${green}✅ Security tools ready.${nc}"
}

scan_ports() {
    if ! command -v nmap &> /dev/null; then
        echo -e "${yellow}[~] Installing nmap...${nc}"
        pkg install nmap -y
    fi
    read -p "🔍 Enter IP to scan: " ip
    nmap "$ip"
}

view_logs() {
    logcat -d | tail -n 40
}

optimize_termux() {
    pkg autoclean && echo -e "${green}✅ Cleanup done.${nc}"
}

silent_mode() {
    pkg install -y sl > /dev/null 2>&1
    echo -e "${green}✅ Installed in silent mode.${nc}"
}

# ───── Main Menu ─────
main_menu() {
    while true; do
        banner
        echo -e "${green}1) Basic Termux Setup"
        echo "2) Custom Login Message"
        echo "3) Extra Tools"
        echo "4) About TBDF"
        echo "5) Termux Banner Setup"
        echo "6) System Info Tools"
        echo "7) Network Tools"
        echo "8) Terminal Customizer"
        echo "9) Fun Tools"
        echo "10) Update Script"
        echo "11) Auto Restart Termux"
        echo "12) Backup Termux"
        echo "13) Developer Tools"
        echo "14) Theme Selector"
        echo "15) Security Tools"
        echo "16) Port Scanner"
        echo "17) View Logs"
        echo "18) Cleanup + Optimize"
        echo "19) Silent Mode Installer"
        echo "20) Exit${nc}"
        echo ""
        read -p "👉 Enter your choice: " opt
        case $opt in
            1) basic_setup ;;
            2) custom_login_msg ;;
            3) extra_tools ;;
            4) about_fcf ;;
            5) setup_termux_banner ;;
            6) system_info ;;
            7) network_tools ;;
            8) tweak_terminal ;;
            9) fun_stuff ;;
            10) update_this_script ;;
            11) auto_restart_setup ;;
            12) backup_termux ;;
            13) developer_stuff ;;
            14) theme_selector ;;
            15) secure_tools ;;
            16) scan_ports ;;
            17) view_logs ;;
            18) optimize_termux ;;
            19) silent_mode ;;
            20) echo -e "${green}👋 Exit...${nc}"; exit ;;
            *) echo -e "${red}[!] Invalid Option${nc}" ;;
        esac
        read -p "↩️ Press Enter to return to menu..."
    done
}

# ───── Start ─────
check_requirements
main_menu
