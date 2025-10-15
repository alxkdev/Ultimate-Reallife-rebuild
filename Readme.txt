Hallo,
da ich nicht mehr weiter an Ultimate arbeiten will und ehrlich gesagt keine Lust mehr auf ein neues Projekt habe, will ich hier gerne das Ultimate-RL Script ver�ffentlichen.

Ultimate-RL war eine Fortsetzung von Rise-RL.
Daher basiert es auf Vio-Extended.

Ultimate-RL ist jedoch vollkommen spielbar.
Mir sind nur wenige Bugs bekannt (alle haben mit Grove und Ballas zu tun), aber ich bin mir sicher, dass sich irgendwo noch welche aufhalten.
Es benutzt die MTA Datenbank-Funktionen wie dbConnect usw., also wird das MySQL-Modul nicht gebraucht oder verwendet.
Jedes einzelne Element-Data, welches mit Spielern zu tun hat, wurde einzeln durchgegangen und so bearbeitet, dass es entweder nicht als ElementData gespeichert wird (sondern in einer Tabelle) oder nur demjenigen Spieler selbst getriggert wird.
Dadurch erh�ht sich die Performance des Scripts sehr stark.
Jede Datenbank-Abfrage und Speicherung wurde versucht zu optimieren, sodass alles schneller geht.
Die Spieler bekommen alle eine UID, welches �berall benutzt wird statt dem Namen. Der Name wird nur in userdata und players gespeichert und benutzt.
Viele m�gliche Performance-Senkungen wurden angepasst und verbessert.

Sehr viele Bugs wurden gefixt.

Das Gangwar-System ist mein eigenes entbuggtes System in der anderen Dimension mit Damage-Anzeige usw.
Auf dem Server haben wir f�r das Gangwar nur eine Regel gebraucht:
Dass man nur auf D�cher drauf kann, wo man mit einem Landfahrzeug klettern kann.
Es werden automatisch 4 Burritos am TK gespawnt, die man anklicken und verschieben kann.
Au�erdem gibt es viele Befehle, die man per /gwbefehle einsehen kann.
Restliche Fahrzeuge k�nnen am Gebiet abgestellt und mitgenommen werden.

Ich habe leider erst sp�ter mit dem Update-Changelog angefangen, vorher hatte ich schon massig viel reingetan.
Den Changelog ab dem 04.01. kann man hier sehen:
Changelog
Der Changelog beginnt erst ab 04.01. ...

Viele kleine Bugfixes
Gangwar entbuggt
"Schreibt ..." als Status eingef�gt, falls man per T was schreibt
M4 Genauigkeit erh�ht
Deagle Genauigkeit erh�ht
Auto-Kauf-Bug entbuggt
Auto-Befehle entbuggt
PD und FBI ColShape zum Respawnen einzelner Fahrzeuge erstellt
Reporter Fraktionskasse gegeben
Reporter Stretch gegeben
Truth-Mission Geld-Output gefixt
Aztecas haben ein Tor bekommen
2 M�lltonnen auf der Stra�e vor der Triaden-Base entfernt
Eine Map f�r Tramjob reingetan (von Pluz.)
Wasserpanzer des FBI runter gesetzt
Viele kleine Bugs gefixt
Fallschaden im Gangwar deaktiviert (Testweise)
Tuning Geldbug gefixt
Gangwar-Fahrzeug-Verschiebung klein wenig ver�ndert
Automatische Wantedvergabe per /suspect [Abk] eingef�hrt. (Abk�rzungen sind in der Date fraktionen->sfpd->functions.lua ab Zeile 815) /su kann f�r manuelle Eingabe benutzt werden.
kleiner Gangwar-Bug gefixt
Drive-By im Gangwar deaktiviert
Knastausbruch entfernt
Los Aztecas Gate gefixt
Fernglas gefixt
Nervige Meldung bei /duty gefixt
Verbindung unterbrochen ... hoffentlich gefixt
Radarfalle gefixt
"mt" f�r suspect eingef�gt
Wanted-PC leicht vom Script her �berarbeitet
Beim Gangwar sollte nun nach dem Tod der Blip noch da bleiben und zu einem roten Kreuz wechseln.
FBI oben Duty-Marker hingestellt
/fskin f�r SFPD entbuggt
Atzen Gate entbuggt
PD Computer verschiebbar
Anglershop entbuggt
Casino vollkommen entbuggt
Katana Damage angepasst
Mehr Logs eingef�gt (z.B. Chat, Schlagen)
Busjob entbuggt
/grab gefixt
Anti-Spam Schutz f�r Chat drin
/suspect Nutzung erweitert
PD Computer wieder etwas bearbeitet
/b nun erst ab Rang 4
Anti-Spam drin
/self Sucht Fenster entbuggt
Onduty wird man nicht mehr von der Radarfalle erwischt
Beim Foto verschwinden Chat und Hud - einmal B dr�cke, damit sie wieder sichtbar sind
Coinshop erstellt - /coin an Hausmarker zum einsammeln, /coinshop f�r den Shop
In self-Men� unter Optionen kann man die Einloggvideos aktivieren und deaktivieren
Ressourcen-Name wurde zu ultimate unbenannt (wegen dem F9 Hilfemen�)
Anti-Spam f�r das Zielen angepasst
Ticketsystem �berarbeitet
Wanted-PC �berarbeitet
Statistik gefixt
Neue Infobox (von SuK)
Tazer entbuggt
Farmerjob-Fenster entbuggt
Viele kleine Fehlermeldungen gefixt
Bei Scriptrestart wird man nicht mehr gekickt
/restartresource drin - Speichert Position, Waffen und alles andere bei jedem Spieler
Optische Anzeige der Restzeit f�r Medic
Bank-Ped respawnt wieder
Fahrzeuge werden nun beim Offline gehen zerst�rt, Online kommen wieder respawn
Fraktionskassen f�r Medic&Mechaniker und Grove
Logsystem ver�ndert - wird in der Datenbank gespeichert
Radarfalle gefixt
Sozialer Status speichert nun wieder
Fliegender Schild am PD entfernt
VIP-Radio nun Standard auf 100% (nicht nur optisch)
Datenbank stark ver�ndert (von 1 bis 10 Uhr Nachts durchgearbeitet)
Einige Bugs gefixt
Drogenlabor Map gefixt
Gangwar-Damage-Anzeige gefixt
Hud Performance erh�ht
Wanted-Sterne ge�ndert
/newhouse gefixt
Army Offduty M�glichkeit gegeben ( "fskin und offduty benutzbar" )
RC-Club gefixt
Kaution wird nun in der Datenbank gespeichert und geladen
Army Maverick gegeben statt einem Cargobob
Bei Eintritt in die Bank wird Ped wiederbelebt, falls der BR geht
Gangwar Damage bei Kill Bug gefixt
Medic Funktionen gefixt
Performance klein wenig verbessert
Nach dem Gangwar kriegt man die Waffen nicht mehr zur�ck, wenn man gestorben ist
Man kann sich nur noch 3 Minuten nach dem letzten Hit heilen (nicht f�r VIP-Funktion eingestellt)
Race gefixt
Gangwar Teilnehmer nach nat�rlichem Tod gefixt



Ich habe mir beim Script wirklich sehr viel M�he gegeben und versucht so viel wie m�glich dran zu machen.
Befehle k�nnen alle per /commands gesehen werden.
Fraktionbefehle sind per /fraktioncommands zu erreichen.
Adminbefehle per /admincommands.