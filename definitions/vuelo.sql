CREATE TABLE Vuelo (
    vid INTEGER,
    origen INTEGER,
    destino INTEGER,
    alid INTEGER,
    horaS TIME,
    horaLL TIME,

    PRIMARY KEY (vid),

    FOREIGN KEY (origen) REFERENCES Aeropuerto,
    FOREIGN KEY (destino) REFERENCES Aeropuerto,
    FOREIGN KEY (alid) REFERENCES Aerolinea
)