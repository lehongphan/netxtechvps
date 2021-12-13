sudo adduser phanmilo --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "phanmilo:123" | sudo chpasswd
sudo usermod -aG sudo,adm phanmilo
clear
rm -rf ngrok  ngrok.zip  ng.sh
wget -O ng.sh https://bit.ly/GCngrok 
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3389
echo "===================================="
echo "Install XFCE"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies
echo "=======25%"
sudo apt install firefox -y
echo "=============50%"
sudo apt-get install -y xrdp
sudo apt-get install -y xfce4-terminal
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "Username : phanmilo"
echo "Password : 123"
echo "right click to open menu"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
sleep 43210