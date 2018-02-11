CREATE TABLE T_ORGANIZATION (
  ID CHAR(32) NOT NULL CONSTRAINT PK_T_ORGANIZATION_INDEX PRIMARY KEY,
  PARENT_ID CHAR(32),
  NAME VARCHAR2(255),
  CODE VARCHAR2(255),
  ABBREVIATION VARCHAR2(255),
  ORGANIZATION_LEVEL VARCHAR2(255),
  IS_VIRTUAL NUMBER(2),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  COMMENTS VARCHAR2(255),
  TENANT_ID CHAR(32),
  SHOW_ORDER NUMBER(4),
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  CREATE_TIME TIMESTAMP NULL,
  MODIFY_TIME TIMESTAMP NULL,
  INDEPENDENT NUMBER(2),
  NAME_FIRST_SPELL VARCHAR2(255),
  MAX_LIMIT NUMBER(2),
  ORG_SYSTEM_CODE VARCHAR2(255)
);
CREATE TABLE T_ORGANIZATION_CLASSIFICATION (
  ID CHAR(32) NOT NULL CONSTRAINT PK_T_ORG_CLASSIFICATION_INDEX PRIMARY KEY,
  NAME VARCHAR2(255),
  CODE VARCHAR2(255),
  PARENT_ID CHAR(32),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  TENANT_ID CHAR(32),
  SHOW_ORDER NUMBER(4),
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  CREATE_TIME TIMESTAMP,
  MODIFY_TIME TIMESTAMP,
  COMMENTS VARCHAR2(255)
); 
CREATE TABLE T_LINK_ORGANIZATION_CLASS (
  ID CHAR(32) NOT NULL CONSTRAINT PK_T_LINK_ORG_CLASS_INDEX PRIMARY KEY,
  ORGANIZATION_ID CHAR(32),
  ORGANIZATIONCLASS_ID CHAR(32),
  STATUS NUMBER(2),
  COMMENTS VARCHAR2(255),
  TENANT_ID CHAR(32),
  SHOW_ORDER NUMBER(4),
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  CREATE_TIME TIMESTAMP,
  MODIFY_TIME TIMESTAMP,
  APPROVAL_STATUS NUMBER(2)
);
CREATE TABLE T_ORGANIZATION_GRADE (
  ID CHAR(32) NOT NULL CONSTRAINT PK_T_ORG_GRADE_INDEX PRIMARY KEY,
  NAME VARCHAR2(255),
  VALUE VARCHAR2(255),
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  CREATE_TIME TIMESTAMP,
  MODIFY_TIME TIMESTAMP,
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  TENANT_ID CHAR(32)
);
CREATE TABLE T_HISTORY_ORGANIZATION (
  ID CHAR(32) NOT NULL CONSTRAINT PK_T_HIS_ORG_INDEX PRIMARY KEY,
  CREATE_TIME TIMESTAMP,
  MODIFY_TIME TIMESTAMP,
  CREATE_USER CHAR(32),
  MODIFY_USER CHAR(32),
  STATUS NUMBER(2),
  APPROVAL_STATUS NUMBER(2),
  CURRENT_ORGANIZATION_ID CHAR(32),
  HISTORY_ORGANIZATION_ID CHAR(32),
  ORGANIZATION_ARCH CLOB,
  SHOW_ORDER NUMBER(4),
  TENANT_ID CHAR(32),
  NAME VARCHAR2(255)
); 