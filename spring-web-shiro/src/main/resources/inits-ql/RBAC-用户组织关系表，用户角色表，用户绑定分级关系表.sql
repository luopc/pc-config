CREATE TABLE T_LINK_USER_ROLE (
  LUR_ID CHAR(32) NOT NULL CONSTRAINT PK_T_LINK_USER_ROLE PRIMARY KEY,
  USER_ID CHAR(32),
  ROLE_ID CHAR(32),
  IS_TEMPORARY NUMBER(2),
  START_DATE DATE,
  END_DATE DATE,
  TENANT_ID CHAR(32),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  SHOW_ORDER NUMBER(4),
  CREATE_USER CHAR(32),
  CREATE_TIME TIMESTAMP,
  MODIFY_USER CHAR(32),
  MODIFY_TIME TIMESTAMP,
  ORGANIZE_ID CHAR(32)
);
CREATE TABLE T_LINK_USER_ORGANIZATION (
  LRO_ID CHAR(32) NOT NULL CONSTRAINT PK_T_LINK_USER_ORGANIZATION PRIMARY KEY,
  USER_ID CHAR(32),
  ORGANIZATION_ID CHAR(32),
  TYPING NUMBER(2),
  START_TIME DATE,
  END_TIME DATE,
  TENANT_ID CHAR(32),
  SHOW_ORDER NUMBER(4),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  CREATE_TIME TIMESTAMP,
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  MODIFY_TIME TIMESTAMP,
  ROLE_TYPE NUMBER(2),
  UNIT_ID CHAR(32)
);
CREATE TABLE T_GRADE_CONTROL (
  GC_ID CHAR(32) NOT NULL CONSTRAINT PK_T_GRADE_CONTROL PRIMARY KEY,
  ORGANIZE_ID CHAR(32),
  USER_ID CHAR(32),
  CREATE_TIME TIMESTAMP,
  MODIFY_TIME TIMESTAMP,
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  SHOW_ORDER NUMBER(4),
  TENANT_ID CHAR(32)
);
