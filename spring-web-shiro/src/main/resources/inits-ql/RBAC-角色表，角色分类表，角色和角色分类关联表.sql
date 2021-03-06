
CREATE TABLE T_ROLE (
  ROLE_ID CHAR(32) NOT NULL CONSTRAINT PK_T_ROLE_INDEX PRIMARY KEY,
  NAME VARCHAR2(255),
  CODE VARCHAR2(255),
  COMMENTS VARCHAR2(255),
  TENANT_ID CHAR(32),
  CREATE_USER CHAR(32),
  CREATE_TIME TIMESTAMP,
  MODIFY_USER CHAR(32),
  MODIFY_TIME TIMESTAMP,
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  SHOW_ORDER NUMBER(4),
  SYSTEM_ID CHAR(32),
  IS_PUBLIC NUMBER(2),
  UNIT_ID CHAR(32),
  NAME_FIRST_SPELL VARCHAR2(255)
);

CREATE TABLE T_ROLECLASSIFICATION (
  RCI_ID CHAR(32) NOT NULL CONSTRAINT PK_T_ROLE_ATION_INDEX PRIMARY KEY,
  NAME VARCHAR(255),
  CODE VARCHAR(255),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  TENANT_ID CHAR(32),
  SHOW_ORDER NUMBER(4),
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  CREATE_TIME TIMESTAMP NULL ,
  MODIFY_TIME TIMESTAMP NULL ,
  PARENT_ID CHAR(32),
  COMMENTS VARCHAR(255),
  IS_PUBLIC NUMBER(2),
  UNIT_ID CHAR(32)
);

CREATE TABLE T_LINK_ROLE_ROLECLASS (
  LRR_ID CHAR(32) NOT NULL CONSTRAINT PK_T_LINK_ROLE_ROLECLASS PRIMARY KEY,
  ROLE_ID CHAR(32),
  ROLECLASS_ID CHAR(32),
  TENANT_ID CHAR(32),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  SHOW_ORDER NUMBER(4),
  CREATE_USER CHAR(32),
  CREATE_TIME TIMESTAMP,
  MODIFY_USER CHAR(32),
  MODIFY_TIME TIMESTAMP,
  UNIT_ID CHAR(32)
);