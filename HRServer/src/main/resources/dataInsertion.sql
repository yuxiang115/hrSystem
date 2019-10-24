-- ----------------------------
-- Records of joblevel
-- ----------------------------
INSERT INTO `job_level` VALUES ('9', '教授', '正高级', '2018-01-11 21:19:14', '1');
INSERT INTO `job_level` VALUES ('10', '副教授', '副高级', '2018-01-11 21:19:20', '1');
INSERT INTO `job_level` VALUES ('12', '助教', '初级', '2018-01-11 21:35:39', '1');
INSERT INTO `job_level` VALUES ('13', '讲师', '中级', '2018-01-11 22:42:12', '1');
INSERT INTO `job_level` VALUES ('14', '初级工程师', '初级', '2018-01-14 16:18:50', '1');
INSERT INTO `job_level` VALUES ('15', '中级工程师', '中级', '2018-01-14 16:19:00', '1');
INSERT INTO `job_level` VALUES ('16', '高级工程师', '副高级', '2018-01-14 16:19:14', '1');
INSERT INTO `job_level` VALUES ('17', '骨灰级工程师', '正高级', '2018-01-14 16:19:24', '1');


-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '股东会', NULL, '.1', '1', '1');
INSERT INTO `department` VALUES ('4', '董事会', '1', '.1.4', '1', '1');
INSERT INTO `department` VALUES ('5', '总办', '4', '.1.4.5', '1', '1');
INSERT INTO `department` VALUES ('8', '财务部', '5', '.1.4.5.8', '1', '0');
INSERT INTO `department` VALUES ('78', '市场部', '5', '.1.4.5.78', '1', '1');
INSERT INTO `department` VALUES ('81', '华北市场部', '78', '.1.4.5.78.81', '1', '1');
INSERT INTO `department` VALUES ('82', '华南市场部', '78', '.1.4.5.78.82', '1', '0');
INSERT INTO `department` VALUES ('85', '石家庄市场部', '81', '.1.4.5.78.81.85', '1', '0');
INSERT INTO `department` VALUES ('86', '西北市场部', '78', '.1.4.5.78.86', '1', '1');
INSERT INTO `department` VALUES ('87', '西安市场', '86', '.1.4.5.78.86.87', '1', '1');
INSERT INTO `department` VALUES ('89', '莲湖区市场', '87', '.1.4.5.78.86.87.89', '1', '0');
INSERT INTO `department` VALUES ('91', '技术部', '5', '.1.4.5.91', '1', '0');
INSERT INTO `department` VALUES ('92', '运维部', '5', '.1.4.5.92', '1', '0');



-- ----------------------------
-- Records of hr
-- ----------------------------
INSERT INTO `hr` VALUES ('3', '系统管理员',null, '8568887789', '029-8288', NULL, '1', 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', 'http://bpic.588ku.com/element_pic/01/40/00/64573ce2edc0728.jpg', null);
INSERT INTO `hr` VALUES ('5','白', '李', '1823489', '0123434', null, '1', 'libai', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', null);
INSERT INTO `hr` VALUES ('10', '愈','韩' ,'1823666', '021555', null, '1', 'hanyu', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1406745149,1563524794&fm=27&gp=0.jpg', null);
INSERT INTO `hr` VALUES ('11', '宗元', '柳','1123377', '0211333', null, '1', 'liuzongyuan', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515233756&di=0856d923a0a37a87fd26604a2c871370&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-27%2F041716704.jpg', null);
INSERT INTO `hr` VALUES ('12', '巩', '曾','1828888', '011222', null, '1', 'zenggong', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', null);


-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_manager', '部门经理');
INSERT INTO `role` VALUES ('2', 'ROLE_personnel', '人事专员');
INSERT INTO `role` VALUES ('3', 'ROLE_recruiter', '招聘主管');
INSERT INTO `role` VALUES ('4', 'ROLE_train', '培训主管');
INSERT INTO `role` VALUES ('5', 'ROLE_performance', '薪酬绩效主管');
INSERT INTO `role` VALUES ('6', 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES ('13', 'ROLE_test2', '测试角色2');
INSERT INTO `role` VALUES ('14', 'ROLE_test1', '测试角色1');

-- ----------------------------
-- Records of hr_role
-- ----------------------------
INSERT INTO `hr_role` VALUES ('1', '3', '6');
INSERT INTO `hr_role` VALUES ('9', '5', '1');
INSERT INTO `hr_role` VALUES ('10', '5', '4');
INSERT INTO `hr_role` VALUES ('35', '12', '4');
INSERT INTO `hr_role` VALUES ('36', '12', '3');
INSERT INTO `hr_role` VALUES ('37', '12', '2');
INSERT INTO `hr_role` VALUES ('43', '11', '3');
INSERT INTO `hr_role` VALUES ('44', '11', '2');
INSERT INTO `hr_role` VALUES ('45', '11', '4');
INSERT INTO `hr_role` VALUES ('46', '11', '5');
INSERT INTO `hr_role` VALUES ('48', '10', '3');
INSERT INTO `hr_role` VALUES ('49', '10', '4');

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '/', null, null, '所有', null, null, null, null, '1');
INSERT INTO `menu` VALUES ('2', '/', '/home', 'Home', '员工资料', 'fa fa-user-circle-o', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('3', '/', '/home', 'Home', '人事管理', 'fa fa-address-card-o', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('4', '/', '/home', 'Home', '薪资管理', 'fa fa-money', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('5', '/', '/home', 'Home', '统计管理', 'fa fa-bar-chart', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('6', '/', '/home', 'Home', '系统管理', 'fa fa-windows', null, '1', '1', '1');
INSERT INTO `menu` VALUES ('7', '/employee/basic/**', '/emp/basic', 'EmpBasic', '基本资料', null, null, '1', '2', '1');
INSERT INTO `menu` VALUES ('8', '/employee/advanced/**', '/emp/adv', 'EmpAdv', '高级资料', null, null, '1', '2', '0');
INSERT INTO `menu` VALUES ('9', '/personnel/emp/**', '/per/emp', 'PerEmp', '员工资料', null, null, '1', '3', '0');
INSERT INTO `menu` VALUES ('10', '/personnel/ec/**', '/per/ec', 'PerEc', '员工奖惩', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('11', '/personnel/train/**', '/per/train', 'PerTrain', '员工培训', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('12', '/personnel/salary/**', '/per/salary', 'PerSalary', '员工调薪', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('13', '/personnel/remove/**', '/per/mv', 'PerMv', '员工调动', null, null, '1', '3', '1');
INSERT INTO `menu` VALUES ('14', '/salary/sob/**', '/sal/sob', 'SalSob', '工资账套管理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('15', '/salary/sobcfg/**', '/sal/sobcfg', 'SalSobCfg', '员工账套设置', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('16', '/salary/table/**', '/sal/table', 'SalTable', '工资表管理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('17', '/salary/month/**', '/sal/month', 'SalMonth', '月末处理', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('18', '/salary/search/**', '/sal/search', 'SalSearch', '工资表查询', null, null, '1', '4', '1');
INSERT INTO `menu` VALUES ('19', '/statistics/all/**', '/sta/all', 'StaAll', '综合信息统计', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('20', '/statistics/score/**', '/sta/score', 'StaScore', '员工积分统计', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('21', '/statistics/personnel/**', '/sta/pers', 'StaPers', '人事信息统计', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('22', '/statistics/recored/**', '/sta/record', 'StaRecord', '人事记录统计', null, null, '1', '5', '1');
INSERT INTO `menu` VALUES ('23', '/system/basic/**', '/sys/basic', 'SysBasic', '基础信息设置', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('24', '/system/cfg/**', '/sys/cfg', 'SysCfg', '系统管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('25', '/system/log/**', '/sys/log', 'SysLog', '操作日志管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('26', '/system/hr/**', '/sys/hr', 'SysHr', '操作员管理', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('27', '/system/data/**', '/sys/data', 'SysData', '备份恢复数据库', null, null, '1', '6', '1');
INSERT INTO `menu` VALUES ('28', '/system/init/**', '/sys/init', 'SysInit', '初始化数据库', null, null, '1', '6', '1');

-- ----------------------------
-- Records of message_content
-- ----------------------------
INSERT INTO `message_content` VALUES ('14', '2222222222', '11111111111111111', '2018-02-02 20:46:19');
INSERT INTO `message_content` VALUES ('15', '22222222', '3333333333333333333333', '2018-02-02 21:45:57');
INSERT INTO `message_content` VALUES ('16', '通知标题1', '通知内容1', '2018-02-03 11:41:39');
INSERT INTO `message_content` VALUES ('17', '通知标题2', '通知内容2', '2018-02-03 11:52:37');
INSERT INTO `message_content` VALUES ('18', '通知标题3', '通知内容3', '2018-02-03 12:19:41');

-- ----------------------------
-- Records of sys_message
-- ----------------------------
INSERT INTO `sys_message` VALUES ('57', '10', '0', '3', '1');
INSERT INTO `sys_message` VALUES ('58', '10', '0', '5', '1');
INSERT INTO `sys_message` VALUES ('59', '10', '0', '10', '1');
INSERT INTO `sys_message` VALUES ('60', '10', '0', '11', '0');
INSERT INTO `sys_message` VALUES ('61', '10', '0', '12', '0');
INSERT INTO `sys_message` VALUES ('62', '11', '0', '3', '1');
INSERT INTO `sys_message` VALUES ('63', '11', '0', '5', '1');
INSERT INTO `sys_message` VALUES ('64', '11', '0', '10', '1');
INSERT INTO `sys_message` VALUES ('65', '11', '0', '11', '0');
INSERT INTO `sys_message` VALUES ('66', '11', '0', '12', '0');
INSERT INTO `sys_message` VALUES ('67', '12', '0', '3', '1');
INSERT INTO `sys_message` VALUES ('68', '12', '0', '5', '1');
INSERT INTO `sys_message` VALUES ('69', '12', '0', '10', '1');
INSERT INTO `sys_message` VALUES ('70', '12', '0', '11', '0');
INSERT INTO `sys_message` VALUES ('71', '12', '0', '12', '0');
INSERT INTO `sys_message` VALUES ('72', '3', '0', '3', '1');
INSERT INTO `sys_message` VALUES ('73', '3', '0', '5', '1');
INSERT INTO `sys_message` VALUES ('74', '3', '0', '10', '1');
INSERT INTO `sys_message` VALUES ('75', '3', '0', '11', '0');
INSERT INTO `sys_message` VALUES ('76', '3', '0', '12', '0');
INSERT INTO `sys_message` VALUES ('77', '5', '0', '3', '1');
INSERT INTO `sys_message` VALUES ('78', '5', '0', '5', '0');
INSERT INTO `sys_message` VALUES ('79', '5', '0', '10', '0');
INSERT INTO `sys_message` VALUES ('80', '5', '0', '11', '0');
INSERT INTO `sys_message` VALUES ('81', '5', '0', '12', '0');

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES('1', '南山区', '深圳','广东', NULL, 'China' );
INSERT INTO `address` VALUES('2', '美兰区', '海口市','海南', NULL, 'China' );
INSERT INTO `address` VALUES('3', '莲湖区', '西安','陕西', NULL, 'China' );
INSERT INTO `address` VALUES('4', '莲湖区', '西安','陕西', NULL, 'China' );
INSERT INTO `address` VALUES('5', '人民大道58号', '洛阳','河南', NULL, 'China' );
INSERT INTO `address` VALUES('6', '新城区', '西安','陕西', NULL, 'China' );
INSERT INTO `address` VALUES('7', '天河区冼村路', '广州','广东', NULL, 'China' );
INSERT INTO `address` VALUES('8', NULL, '珠海','广东', NULL, 'China' );
INSERT INTO `address` VALUES('9', '雁塔区', '西安','陕西', NULL, 'China' );
INSERT INTO `address` VALUES('10', '美兰区', '海口','海南', NULL, 'China' );


-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '一点雨', '江南', '男', '1990-01-01', '610122199001011256', 'Married', 'laowang@qq.com', '185558897', '1', '5', '9', '29', '劳务合同', 'Bachelor', '信息管理与信息系统', '深圳大学', '2018-01-01', 'In-service', '00000001', '2', '2018-04-01', null, '2018-01-01', '2020-01-01', null);
INSERT INTO `employee` VALUES ('2', '静', '陈', '女', '1989-02-01', '421288198902011234', 'Married', 'chenjing@qq.com', '18795693', '2', '8', '12', '30', '劳动合同', 'High School', '市场营销', '武汉大学', '2015-06-09', 'In-service', '00000002', '3', '2015-09-10', null, '2015-06-09', '2018-06-08', null);
INSERT INTO `employee` VALUES ('3', '琳浩', '赵','男', '1993-03-04', '610122199303041456', 'Single','zhao@qq.com', '1569885', '3', '91', '12', '33', '劳动合同', 'Doctor', '电子工程', '哈尔滨理工大学', '2018-01-01', 'In-service', '00000003', '3.5', '2018-04-01', null, '2018-01-01', '2021-07-14', null);
INSERT INTO `employee` VALUES ('4', '存亮', '鹿','男', '1990-01-03', '610122199001031456', 'Married', 'zhao@qq.com', '12347795', '4', '92', '12', '34', '劳动合同', 'High School', '电子工程', '哈尔滨理工大学', '2018-01-01', 'In-service', '00000004', '3.5', '2018-04-01', null, '2018-01-01', '2021-07-14', null);
INSERT INTO `employee` VALUES ('5', '森', '姚','男', '1991-02-05', '610122199102058952', 'Married', 'yaosen@qq.com', '14559936', '5', '92', '15', '34', '劳动合同', 'Master', '室内装修设计', '西北大学', '2017-01-02', 'In-service', '00000005', '7', '2017-04-02', null, '2017-01-02', '2024-01-17', null);
INSERT INTO `employee` VALUES ('6', '星', '云','女', '1993-01-05', '610122199301054789', 'Married', 'yunxing@qq.com', '154442252', '6', '92', '16', '34', '劳务合同', 'Master', '通信工程', '西安电子科技学校', '2018-01-01', 'In-service', '00000006', '5.25', '2018-04-01', null, '2018-01-01', '2023-04-13', null);
INSERT INTO `employee` VALUES ('7', '旭明','贾', '男', '1993-11-11', '610122199311111234', 'Married', 'jiaxuming@qq.com', '144441234', '7', '78', '15', '33', '劳务合同', 'Associate', '通信工程', '西北大学', '2018-01-01', 'In-service', '00000007', '5.25', '2018-04-01', null, '2018-01-01', '2023-04-13', null);
INSERT INTO `employee` VALUES ('8', '黎明', '张','男', '1991-02-01', '610144199102014569', 'Married', 'zhangliming@qq.com', '179994478', '8', '91', '15', '33', '劳动合同', 'High School', '考古', '清华大学', '2018-01-01', 'In-service', '00000008', '7', '2018-04-01', null, '2018-01-01', '2025-01-30', null);
INSERT INTO `employee` VALUES ('9', '磊', '薛','男', '1992-07-01', '610144199207017895', 'Married', 'xuelei@qq.com', '156488741', '9', '92', '14', '34', '劳动合同', 'Associate', '无', '华胥中学', '2018-01-01', 'In-service', '00000009', '6', '2018-04-01', null, '2018-01-01', '2024-01-17', null);
INSERT INTO `employee` VALUES ('10', '洁', '张','女', '1990-10-09', '420177199010093652', 'Single', 'zhangjie@qq.com', '15557742', '10', '92', '16', '34', '劳动合同', 'High School', '无', '海南侨中', '2018-01-01', 'In-service', '00000010', '1', '2018-01-31', null, '2018-01-01', '2019-01-01', null);



-- ----------------------------
-- Records of employee_salary
-- ----------------------------
INSERT INTO `employee_salary` VALUES ('6', '4', '10');
INSERT INTO `employee_salary` VALUES ('7', '3', '9');
INSERT INTO `employee_salary` VALUES ('8', '1', '10');
INSERT INTO `employee_salary` VALUES ('10', '5', '9');
INSERT INTO `employee_salary` VALUES ('11', '6', '13');
INSERT INTO `employee_salary` VALUES ('12', '7', '13');
INSERT INTO `employee_salary` VALUES ('13', '2', '13');
INSERT INTO `employee_salary` VALUES ('14', '8', '10');
INSERT INTO `employee_salary` VALUES ('15', '9', '10');
INSERT INTO `employee_salary` VALUES ('16', '10', '13');


