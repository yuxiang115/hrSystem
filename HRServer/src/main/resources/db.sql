-- -----------------------------------
-- Table structure for job_level
-- -----------------------------------
DROP TABLE IF EXISTS job_level;
CREATE TABLE job_level(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    name            VARCHAR(32)  COMMENT 'Job Name', 
    title_level     VARCHAR(32),
    create_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    enabled         TINYINT(1) DEFAULT '1',
    PRIMARY KEY(id)  
) character set = utf8;

-- ---------------------------------------------
-- Table structure for address
-- ---------------------------------------------
DROP TABLE IF EXISTS address;
CREATE TABLE address(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    street          VARCHAR(255),
    city            VARCHAR(32),
    state           VARCHAR(32),
    zipcode         INT(5),
    nation          VARCHAR(32),
    PRIMARY KEY(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for department
-- ---------------------------------------------
DROP TABLE IF EXISTS department;
CREATE TABLE department(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    name            VARCHAR(32) COMMENT 'Department Name',
    parent_id       INT(11),
    dep_path        VARCHAR(255),
    enabled         TINYINT(1) DEFAULT '1',
    is_parent       TINYINT(1) DEFAULT '0',
    PRIMARY KEY(id),
    FOREIGN KEY (parent_id) REFERENCES department (id)
) character set = utf8;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
    id              INT(11) NOT NULL AUTO_INCREMENT,
    name            VARCHAR(32) UNIQUE COMMENT 'Postion Name',
    create_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    enabled         TINYINT(1) DEFAULT 1,
    PRIMARY KEY(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for salary
-- ---------------------------------------------
DROP TABLE IF EXISTS salary;
CREATE TABLE salary(
    id                      INT(11) NOT NULL AUTO_INCREMENT,
    basic_salary            INT(11),
    bouns                   INT(11),
    lunch_allowance         INT(11),
    traffic_allowance       INT(11),
    final_salary			INT(11),
    pension_base            INT(11),
    pension_rate            FLOAT,
    create_date             DATE,
    medical_base            INT(11),
    medical_rate            FLOAT,
    accumulation_fund_base  INT(11),
    accumulation_fund_rate  FLOAT,
    name                    VARCHAR(32),
    PRIMARY KEY(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for employee
-- ---------------------------------------------
DROP TABLE IF EXISTS employee; 
CREATE TABLE employee(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    first_name      VARCHAR(32),
    last_name       VARCHAR(32),
    gender          VARCHAR(32),
    birthday        DATE,
    id_card         VARCHAR(32),
    marital_status  ENUM('Single', 'Married', 'Divorced') COMMENT 'Marital Status',
    email           VARCHAR(64),
    phone           VARCHAR(10),
    address_id      INT(11),
    department_id   INT(11),
    job_level_id    INT(11),
    position_id     INT(11),
    engage_form     VARCHAR(64),
    tiptop_degree   ENUM('High School', 'Associate', 'Bachelor', 'Master', 'Doctor', 'Other'),
    major           VARCHAR(32),
    school          VARCHAR(32),
    begin_date      DATE,
    work_state      ENUM('Dimission', 'In-service'),
    work_id         VARCHAR(8),
    contract_term   DOUBLE,
    conversion_date DATE,
    leave_date      DATE,
    begin_contract  DATE,
    end_contract    DATE,
    work_duration   INT(11),
    PRIMARY KEY(id),
    FOREIGN KEY(position_id)	REFERENCES `position`(id),
    FOREIGN KEY(address_id)     REFERENCES address(id),
    FOREIGN KEY(department_id)  REFERENCES department(id),
    FOREIGN KEY(job_level_id)   REFERENCES job_level(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for employee_salary
-- ---------------------------------------------
DROP TABLE IF EXISTS employee_salary;
CREATE TABLE employee_salary(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    emp_id          INT(11),
    salary_id       INT(11),
    PRIMARY KEY(id),
    FOREIGN KEY (emp_id) 		REFERENCES `employee`(id),
    FOREIGN KEY (salary_id) 	REFERENCES `salary`(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for employee_bouns_penalty
-- ---------------------------------------------
DROP TABLE IF EXISTS employee_bouns_penalty;
CREATE TABLE employee_bouns_penalty(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    emp_id          INT(11) COMMENT 'Employee ID',
    bp_date         DATE,
    bp_reason       VARCHAR(32),
    bp_point        INT(11),
    bp_type         INT(11) COMMENT '0: Bouns, 1: Penaly',
    remark          VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(emp_id)  REFERENCES employee(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for employee_remove
-- ---------------------------------------------
DROP TABLE IF EXISTS employee_remove;
CREATE TABLE employee_remove(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    emp_id          INT(11),
    after_dep_id    INT(11),
    after_job_id    INT(11),
    remove_date     DATE,
    reason          VARCHAR(255),
    remark          VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(emp_id)         REFERENCES employee(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for employee_train
-- ---------------------------------------------
DROP TABLE IF EXISTS employee_train;
CREATE TABLE employee_train(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    emp_id          INT(11),
    train_date      DATE,
    train_content   VARCHAR(255),
    remark          VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(emp_id) REFERENCES employee(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for hr
-- ---------------------------------------------
DROP TABLE IF EXISTS hr;
CREATE TABLE hr(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    first_name      VARCHAR(32),
    last_name       VARCHAR(32),
    mobile_phone	VARCHAR(10),
    home_phone      VARCHAR(10),
    address_id      INT(11),
    enabled         TINYINT(1) DEFAULT '1',
    username        VARCHAR(255),
    password        VARCHAR(255),
    userface        VARCHAR(255),
    remark          VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(address_id) REFERENCES address(id)
) character set = utf8;


-- ---------------------------------------------
-- Table structure for operation_log
-- ---------------------------------------------
DROP TABLE IF EXISTS operation_log;
CREATE TABLE operation_log(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    hr_id           INT(11),
    add_date        DATE,
    operation       VARCHAR(255) COMMENT 'Operation Decription',
    PRIMARY KEY(id),
    FOREIGN KEY(hr_id) REFERENCES hr(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for message_content
-- ---------------------------------------------
DROP TABLE IF EXISTS message_content;
CREATE TABLE message_content(
    id              INT(11) NOT NULL AUTO_INCREMENT,
    title           VARCHAR(64),
    message         VARCHAR(255),
    create_date     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for sys_message
-- ---------------------------------------------
DROP TABLE IF EXISTS sys_message;
CREATE TABLE sys_message(
    id                  INT(11) NOT NULL AUTO_INCREMENT,
    hr_id               INT(11) COMMENT 'The people who will receive message',
    type                INT(11) DEFAULT 0 COMMENT '0 is group message',
    message_content_id  INT(11),
    state               INT(11) DEFAULT 0 COMMENT '0: unread, 1: read',
    PRIMARY KEY(id),
    FOREIGN KEY(hr_id)  REFERENCES hr(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for role
-- ---------------------------------------------
DROP TABLE IF EXISTS role;
CREATE TABLE role(
    id                  INT(11) NOT NULL AUTO_INCREMENT,
    name                VARCHAR(64),
    character_name      VARCHAR(64),
    PRIMARY KEY(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for hr_role
-- ---------------------------------------------
DROP TABLE IF EXISTS hr_role;
CREATE TABLE hr_role(
    id                  INT(11) NOT NULL AUTO_INCREMENT,
    hr_id               INT(11),
    role_id             INT(11),
    PRIMARY KEY(id),
    FOREIGN KEY(hr_id)      REFERENCES hr(id),
    FOREIGN KEY(role_id)    REFERENCES role(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for menu
-- ---------------------------------------------
DROP TABLE IF EXISTS menu;
CREATE TABLE menu(
    id                  INT(11) NOT NULL AUTO_INCREMENT,
    url                 VARCHAR(64),
    path                VARCHAR(64),
    component           VARCHAR(64),
    name                VARCHAR(64),
    icon_cls            VARCHAR(64),
    keep_alive          TINYINT(1),
    require_auth        TINYINT(1),
    parent_id           INT(11),
    enabled             TINYINT(1) DEFAULT 1,
    PRIMARY KEY(id),
    FOREIGN KEY(parent_id)  REFERENCES menu(id)
) character set = utf8;

-- ---------------------------------------------
-- Table structure for menu_role
-- ---------------------------------------------
DROP TABLE IF EXISTS menu_role;
CREATE TABLE menu_role(
    id                  INT(11) NOT NULL AUTO_INCREMENT,
    menu_id             INT(11),
    role_id             INT(11),
    PRIMARY KEY(id),
    FOREIGN KEY(menu_id)  REFERENCES menu(id),
    FOREIGN KEY(role_id)  REFERENCES role(id)
) character set = utf8;