Im Smart Contract werden drei Variablen definiert: Die Adresse des Eigentümers (owner), die weltweit einzigartige Identifikation des Produkts (productId) und der zuletzt gespeicherte Fingerprint der AAS (storedData). 
Der Fingerprint ist als String mit einer definierten Größe von 32 Bytes gespeichert. 
Dies ist die Größe eines Hashes, der mit dem SHA-256 Algorithmus berechnet wird, mit der die AAS kodiert wird. 
Bei der Instanziierung des Smart Contracts auf der Blockchain wird der Konstruktor ausgeführt, in dem die Identifikation des Produkts übergeben wird. 
Somit besteht eine eindeutige Verbindung zwischen dem Smart Contract und dem Produkt und dessen AAS. 
Die Adresse des Nodes, die den Konstruktor ausgeführt hat, wird automatisch als Eigentümer (owner) des Smart Contracts deklariert und bekommt damit die im Code definierten Schreibrechte. 
Dies ermöglicht das Schreiben eines neuen Fingerprints des DPP in den Smart Contract (setData) oder das Einfügen einer anderen Adresse ein neuer Eigentümer (transferOwnership). 
Zudem kann der Eigentümer zukünftige Bearbeitungen des Smart Contracts ausschließen, indem er die Funktion closeSmartContract ausführt. 
Diese setzt die Adresse des Eigentümers zurück, sodass niemand mehr berechtigt ist, die schreibberechtigten Funktionen mehr auszuführen. 
Unabhängig davon ist es zu jeder Zeit von jedem Node aus möglich, die gespeicherten Fingerprints der DPPs durch die Funktion getData abzurufen. 
Da die Ethereum-Blockchain vollständig öffentlich ist, kann zudem die gesamte Bearbeitungs-Historie (z.B. ehemalige Besitzer, Erstellungsdatum, etc.) nachvollzogen können.

![4_SmartContract](https://github.com/nicir/DppSmartContract/assets/60216452/91ad90aa-1d60-4667-8fe7-7acb78e1b728)
