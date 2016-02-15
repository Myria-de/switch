# switch
Incron Switch Demo in Verbindung mit einem Ifttt-Ereignis (www.ifttt.com)

Kopieren Sie switch.sh in Ihr Home-Verzeichnis und machen Sie das Script mit 

chmod 755 switch.sh

ausführbar.

Auf Ihrem Linux-PC installieren Sie das Paket incron und tragen Ihren Benutzernamen in die Datei „/etc/incron.allow“ ein. Rufen Sie folgenden Befehl auf:

incrontab -e

Tragen Sie im Editor folgende Zeile ein:

/home/hans/Dropbox/IFTTT/Gmail/ IN_CREATE /home/hans/switch.sh

Passen Sie die Pfade für Ihr Home-Verzeichnis an. 

Wenn jetzt die Datei /home/hans/Dropbox/IFTTT/Gmail/email.txt mit dem Inhalt "on" entsteht, führt das Script den Codeblock echo "Schalter an" aus. Bauen Sie hier einen Programm-Aufruf ein, mit dem Sie beispielsweise Lampen oder eine Steckdose einschalten. Entsprechend verfahren Sie unterhalb von echo "Schalter aus", zum Ausschalten des Gerätes.

Ein passendes Tool für Lampen mit dem Philips-Hue-System finden Sie unter http://www.floodgap.com/software/huepl/. Eine Python-Bibliothek, um FRITZ!Box SmartHome-Geräte (DECT 200, PowerLine 546E, ...) zu steuern, gibt es auf https://github.com/DerMitch/fritzbox-smarthome.
