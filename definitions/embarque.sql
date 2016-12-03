CREATE TABLE Embarque (
    cid INTEGER,
    vid INTEGER,
    fecha DATE,

    PRIMARY KEY (cid, vid, fecha),

    FOREIGN KEY (cid) REFERENCES Cliente,
    FOREIGN KEY (vid) REFERENCES Vuelo
)