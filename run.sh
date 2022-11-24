echo Installing QEMU...
sudo apt -q install -y qemu-system-x86
echo Starting...
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
