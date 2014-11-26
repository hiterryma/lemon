

-------------------------------------------------------------------------------
--  mail queue
-------------------------------------------------------------------------------
CREATE TABLE MAIL_QUEUE(
        ID BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL,
        SUBJECT VARCHAR(50),
	SENDER VARCHAR(200),
	RECEIVER VARCHAR(200),
	CC VARCHAR(200),
	BCC VARCHAR(200),
	CONTENT VARCHAR(65535),
	ATTACHMENT VARCHAR(200),
	DATA VARCHAR(65535),
	CREATE_TIME TIMESTAMP,
	STATUS VARCHAR(50),
	INFO VARCHAR(200),
	CONFIG_ID BIGINT,
	TEMPLATE_ID BIGINT,
	SCOPE_ID VARCHAR(50),
        CONSTRAINT PK_MAIL_QUEUE PRIMARY KEY(ID),
        CONSTRAINT FK_MAIL_QUEUE_CONFIG FOREIGN KEY(CONFIG_ID) REFERENCES MAIL_CONFIG(ID),
	CONSTRAINT FK_MAIL_QUEUE_TEMPLATE FOREIGN KEY(TEMPLATE_ID) REFERENCES MAIL_TEMPLATE(ID)
);
