// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DigitalProductFingerprint {

    // Eigentümer des Smart Contracts
    address private owner;

	// Weltweit einzigartige ID des Products, die in der Asset Administration Shell definiert ist
    string public productId; 

    // Speichert den Hash-Wert
    bytes32 private storedData;

    // Konstruktor, durch den der Eigentümer festgelegt wird und der Smart Contract mit der Asset Administration Shell verbunden wird
    constructor(string _productId) {
        owner = msg.sender;
		productId = _productId;
    }

    // Funktion zum Speichern eines Hash-Werts
    function setData(bytes32 _storedData) public {
        // Nur der Eigentümer kann diese Funktion ausführen
		require(msg.sender == owner);
        storedData = _storedData;
    }

    // Funktion zum Abrufen des gespeicherten Hash-Werts
    function getValue() public view returns (bytes32) {
        return storedData;
    }

    // Funktion, um die Eigentümerschaft zu übertragen
    function transferOwnership(address newOwner) public {
        // Nur der Eigentümer kann diese Funktion ausführen        
		require(msg.sender == owner);
        owner = newOwner;
    }

    // Funktion zum Löschen des Eigentümers
    function deleteOwner() public {
        // Nur der Eigentümer kann diese Funktion ausführen
		require(msg.sender == owner);
        owner = address(0); // Setze den Eigentümer auf die Nulladresse
    }
}
