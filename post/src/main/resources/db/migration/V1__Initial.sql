CREATE TABLE POST
(
    ID                 SERIAL8 PRIMARY KEY,
    USER_ID            INTEGER NOT NULL,
    CONTENT            TEXT    NOT NULL,
    LIKES              INTEGER NOT NULL,
    CREATED_DATE       DATE,
    LAST_MODIFIED_BY   VARCHAR(60),
    LAST_MODIFIED_DATE TIMESTAMP
);

CREATE TABLE COMMENT
(
    ID                 SERIAL8 PRIMARY KEY,
    USER_ID            INTEGER                      NOT NULL,
    POST_ID            INTEGER REFERENCES POST (ID) NOT NULL,
    CONTENT            TEXT                         NOT NULL,
    CREATED_DATE       TIMESTAMP,
    LAST_MODIFIED_BY   VARCHAR(60),
    LAST_MODIFIED_DATE DATE
);

CREATE TABLE POST_PHOTO
(
    ID      SERIAL8 PRIMARY KEY,
    POST_ID INTEGER REFERENCES POST (ID) NOT NULL,
    URL     TEXT                         NOT NULL
);

CREATE TABLE POST_LIKE
(
    ID      SERIAL8 PRIMARY KEY,
    POST_ID INTEGER REFERENCES POST (ID) NOT NULL,
    USER_ID INTEGER                      NOT NULL
);

CREATE TABLE COMMENT_LIKE
(
    ID         SERIAL8 PRIMARY KEY,
    COMMENT_ID INTEGER REFERENCES COMMENT (ID) NOT NULL,
    USER_ID    INTEGER                         NOT NULL
);