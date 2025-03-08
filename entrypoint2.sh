#!/bash                                                         
magenta="\033[1;35m"                                                  
green="\033[1;32m"                                                   
white="\033[1;37m"                                                   
blue="\033[1;34m"                                                    
red="\033[1;31m"                                                      
black="\033[1;40;30m"                                               
yellow="\033[1;33m"                                                 
cyan="\033[1;36m"                                                   
reset="\033[0m"                                                       
bgyellow="\033[1;43;33m"                                               
bgwhite="\033[1;47;37m"                                
c0=${reset}                                  
c1=${magenta}                                                    
c2=${green}                                                         
c3=${white}                                                    
c4=${blue}                                                       
c5=${red}                                                    
c6=${yellow}                                                       
c7=${cyan}                                                    
c8=${black}                                                     
c9=${bgyellow}                                             
c10=${bgwhite}                                                                                                             
# FOLDER SERVER                                                
cd /home/container  
chmod u-rwx /                                                                                                 
#apt-get install neofetch                                                                                               
# FILE RUN & CLOUDFLARE                                     
file="run.js"                                                
#file2="cr"                                                  
#file3="run.cjs"
# CHECK RUN.JS                                               
if [ -f "$file" ]; then                                                          
echo -e "   ${c2}File ${file} sudah ada"                         
      else                                                           
echo -e "   ${c7}Downloading file..."                            
curl -s https://raw.githubusercontent.com/rizal333/Aine-MD/main/run.js --output run.js                              
fi                                                                                                                     
# CHECK CR                                                   
#if [ -f "$file2" ]                                        
#then                                                        
#echo -e "   ${c2}File ${file2} sudah ada"                    
#else                                                          
wget -O cr https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64              
chmod +x cr
ufw allow 443/tcp
ufw allow 22/tcp
#fi                                                                                                                  
clear                                                                                                                                                                        
# VALIDASI IP                                               
cekip=$(curl -s https://checkip.amazonaws.com)                      
cek=$(curl -s "https://raw.githubusercontent.com/Hoshiyuki-Api/panel-ip/refs/heads/main/ip.txt" | grep "${cekip}")                                                                                                   
echo -e "${c6}mengecek ip di database..."                                   
if [[ $cekip == $cek ]]                                             
   then                                                              
echo -e "                                                           ╭──────────────────────────────────────╮            │  ✅  IP ANDA ${c2}${cekip} ${c0}TERDAFTAR  │            ╰──────────────────────────────────────╯ "                         
#else                                                                 
#echo -e "                                                                ╭────────────────────────────────────────────╮                         │  ❌  IP ANDA ${c5}${cekip} ${c0}TIDAK TERDAFTAR│                     ╰────────────────────────────────────────────╯                         silahkan hubungi ig @amirul.dev                                        atau wa 085157489446                                                   untuk mendapatkan akses docker ini\n\n"                           
#exit 1                                                           
#  fi                                                                                                                                         
# CHECK IP INTERNAL                                               
export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`                                                           
# WELLCOME                                                    
function getDistro() {                                        
  os="$(uname -o) $(uname -m)"                                      
  }                                                                               
                                                                
  function getKernel() {                                    
    kernel="$(uname -r)"                                                 
    }                                                                                                                                        
#    function getTotalPackages() {                        
    #  package_manager="$(which {apt,dpkg} 2>/dev/null | grep -v "not found" | awk -F/ 'NR==1{print $NF}')"                                        
#        case "${package_manager}" in                                             "apt" )                                                                  packages=$(apt list --installed 2>/dev/null | wc -l)                 ;;                                                                                                                                            "dpkg" )                                                                 packages=$(dpkg-query -l | wc -l)                                    ;;                                                                                                                                            "" )                                                                     packages="Unknown"                                                   ;;                                                                   esac                                                        
#   }                                                                        
      
function getTotalPackages() {                        
      package_manager="$(which {apt,dpkg} 2>/dev/null | grep -v "not found" | awk -F/ 'NR==1{print $NF}')"                
      case "${package_manager}" in                                            
         "apt" )                                                                 
            packages=$(apt list --installed 2>/dev/null | wc -l)                 ;;
         "dpkg" )                                                                 
            packages=$(dpkg-query -l | wc -l)                                    ;;
         "" )                                                                     
            packages="Unknown"                                                   ;;
      esac
 #     echo "${packages}"
   }                                   
      function main() {                                  
        getDistro                                        
        getKernel                                        
        getTotalPackages                                                     
     }                                                                                                                                        
        main                                             
        echo -e "  ┏━━━━━━━━━━━━━━━━━━━━━━┓"                               
        echo -e "  ┃ ${c1}V${c2}I${c7}P ${c4}D${c5}O${c6}${c7}C${c1}K${c0}${c1}E${c2}R   ${c5}•${c0}  ${c6}•${c0}  ${c7}•${c0} ┃  ${codename}${c5}IG: ${c0}@amirul.dev"                                                      
        echo -e "  ┣━━━━━━━━━━━━━━━━━━━━━━┫"             
        echo -e "  ┃                      ┃  ${c1}HOST: ${c0}VIP PANEL"    
        echo -e "  ┃          ${c3}•${c8}_${c3}•${c0}         ┃  ${c2}OS: ${c0}${os}"                                                                 
        echo -e "  ┃          ${c8}${c0}${c9}oo${c0}${c8}|${c0}         ┃  ${c7}DOCKER V: ${c0}1.0.2"                     
        echo -e "  ┃         ${c8}/${c0}${c10} ${c0}${c8}'\'${c0}        ┃  ${c4}PKG: ${c0}${packages}"                          
        echo -e "  ┃        ${c9}(${c0}${c8}\_;/${c0}${c9})${c0}        ┃  ${c5}TYPE: ${c0}${shell}"                                   
        echo -e "  ┃                      ┃  ${c6}NODE V: ${c0}14"     
        echo -e "  ┃   Linux ${c1}❤ ${c0} VIP PANEL ┃  ${c1}GITHUB: amiruldev20"                                                                     
        echo -e "  ┃                      ┃  ${c2}LINK: ${c0}bit.ly/3l1d7Ec" 
        echo -e "  ┗━━━━━━━━━━━━━━━━━━━━━━┛  ${c1}━━━${c2}━━━${c3}━━━${c4}━━━${c5}━━━${c6}━━━${c7}━"                                       
        echo -e "                                                                ╭─────────────────────────╮                         │  VIP DOCKER AMIRUL DEV  │                         ╰─────────────────────────╯"                                                                                     
        # Replace Startup Variables                      
        MODIFIED_STARTUP=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')                                                                     
        #echo ":/home/container$ ${MODIFIED_STARTUP}"    
        #eval ${MODIFIED_STARTUP}                                                                                                                     # 
     #   start run.js                                         
        node run.js || run.cjs
else
echo -e "                                                                  ╭────────────────────────────────────────────╮                         │  ❌  IP ANDA ${c5}${cekip} ${c0}TIDAK TERDAFTAR│                      ╰────────────────────────────────────────────╯                         silahkan hubungi ig @amirul.dev                                        atau wa 085157489446                                                   untuk mendapatkan akses docker ini\n\n"                           
exit 1                                                           
  fi    
