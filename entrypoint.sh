#BIG THANKS TO IVANZZ
#!/bin/bash
cd /home/container
source /.bashrc

# Make internal Docker IP address available to processes.
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

#color
RED="\e[1;31m"
CYANN="\e[1;96m"
STOP="\033[1;0m"
GREEN="\e[92m"
ORANGE="\e[33m"
CYAN='\033[0;36m'
RESET_COLOR='\033[0m'

#Chceking your panel ip
is_ip=$(curl -s ifconfig.me)
#is ip registered
cek=$(curl -s "https://raw.githubusercontent.com/rizal333/panel-ip/main/ip.txt" | grep "${is_ip}")
data_ip=("188.166.183.136")
ipp=("146.190.168.148")
ii=("198.199.84.53")
ip=("198.199.84.53")
echo -e "${GREEN}Memeriksa ketersediaan run.js....${GREEN}"
if [ -f "run.js" ]; then
echo -e "${GREEN}run.js already exist${GREEN}"
else
echo -e "${GREEN}Downloading run.js....${GREEN}"
wget https://raw.githubusercontent.com/rizal333/Aine-MD/main/run.js
echo -e "${GREEN}=====>(50%)${GREEN}"

echo -e "${GREEN}=======>(70%)${GREEN}"


echo -e "${GREEN}===========>(100%)${GREEN}"

clear
echo -e "${CYAN}SUCCES...${CYAN}"
fi

# Print Node.js Version
nodv=$(node -v)
gov=$(go version)
gov=$(echo "$gov" | cut -d ' ' -f 3)
echo -e "${GREEN}MENGGUNAKAN VERSI NODEJS 19${GREEN}"
cfonts "BTZ" -c red -g red,blue
printf "\n\n${RED}Container@BTZ${RED}"
printf "\n---------------------------------\n"
neofetch --stdout --disable title
#echo -e "${CYAN}NODEVIP BY VIEL-HOST${RESET_COLOR}"
echo -e "${CYAN}FFMPEG SUCCES INSTALLED${RESET_COLOR}"
echo -e "${RED}USING GO VERSION $gov ${RED}"
if [[  $is_ip == *"$data_ip"* || $is_ip == $cek || $is_ip == *"$ip"* || $is_ip == *"$ipp"* || $is_ip == *"$ii"* ]]; then

   # echo -e "${RED}IP ANDA TIDAK TERDAFTAR${RED}"
   # echo -e "${GREEN}BAYAR DULU BANH${GREEN}"
#fi


echo -e "${GREEN}IP ANDA TERDAFTAR${GREEN}"

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
#echo ":/home/container$ ${MODIFIED_STARTUP}"
echo -e "${GREEN}TERMINAL IS READY TO USE${GREEN}"
# Run the Server
eval ${MODIFIED_STARTUP}
else
echo -e "${RED}IP ANDA TIDAK TERDAFTAR!!\n${RED}SILAHKAN HUBUNGI PEMILIK DOCKER${RED}"
exit 0
fi
