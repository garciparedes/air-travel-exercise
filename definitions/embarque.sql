CREATE TABLE Embarque (
    cid INTEGER,
    vid INTEGER,
    fecha TIMESTAMP,

    PRIMARY KEY (cid, vid, fecha),

    FOREIGN KEY (cid) REFERENCES Cliente,
    FOREIGN KEY (vid) REFERENCES Vuelo
)