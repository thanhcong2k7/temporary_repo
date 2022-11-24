curl -Lo ngrok.tgz "https://is.gd/5eH56Y"
tar -xvf ngrok.tgz
rm -f ngrok.tgz
read -p "Paste authtoken here: " atkzz
./ngrok config add-authtoken $atkzz
echo Installing QEMU...
sudo apt -q install -y qemu-system-x86
echo Preparing...
curl -Lo 7X86SLKM.iso "https://docs.google.com/uc?export=download&confirm=t&id=1mj9pW_oR9slCgm77LPOI5mPQZyNbDsKY"
qemu-img create w7.img -f raw 4G
qemu-system-x86_64 -cdrom 7X86SLKM.iso -m 4096M -drive format=raw,file=w7.img -net nic -net user -vnc :5 &
echo System is up!
echo Now you just need to copy the URL at line "Forwarding ..."
echo link format: "https://*.*.ngrok.io"
echo After connecting to VPS, you need to install Windows by yourself 
echo //cuz now we dont support pre-installed Windows ;P
echo Good luck~
echo Redirecting after 10s
sleep 10s
./ngrok tcp 5905