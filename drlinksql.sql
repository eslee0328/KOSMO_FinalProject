
 
create table drlink (
    dl_name varchar2(20) not null,
    dl_tel varchar2(20) not null,
    dl_faxtel varchar2(20) not null
);

insert into drlink values('Dr.Link','02-2025-4119','02-2025-4120');

create table dl_admin (
    id varchar2(20),
    pwd varchar2(20)
);
insert into dl_admin values('admin', '123');

create table dl_user (      
    patient_num number(4) constraint dl_patient_num_pk primary key,
    p_id varchar2(20) not null,
    p_pwd varchar2(20) not null,
    p_name varchar2(10) not null,
    p_gender char(1) not null,
    p_jumin_num char(20) not null,
    p_phone_num char(13) not null,
    p_zipcode varchar2(50) not null,
    p_address1 varchar2(60) not null,
    p_address2  varchar2(50),
    p_email varchar2(30) not null,
    bloodtype varchar2(8) not null,
    p_photo varchar2(50),
    height char(10),
    weight char(10),
    allergy char(1) not null,
    p_regdate date default sysdate,
    p_retire_date date default null
);

create sequence dl_patient_num  -- ȸ����ȣ ������
increment by 1
start with 1;


--alter table dl_user add p_retire_date date default null;

insert into dl_user values (dl_patient_num.nextval, 'p_test1', '1111', '�����','1', '9510271579526', '01000001111','48653','����� ��õ�� ���굿 1','1��', 'asd123@naver.com','O+','p_img (1).jpg','160','54','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test2', '1111', '�̼���','2', '9012302489567', '01000002222','52595','����� ��õ�� ���굿 2','2��', 'asd345@naver.com','O-','p_img (2).jpg','160','50','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test3', '1111', '�ڵ���','1', '9703051657985', '01000003333','52553','����� ��õ�� ���굿 3','3��', 'asd678@naver.com','A+','p_img (3).jpg','180','64','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test4', '1111', '������','2', '9101052459870', '01000004444','52553','����� ��õ�� ���굿 4','4��', 'asd910@naver.com','A-','p_img (4).jpg','180','60','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test5', '1111', '�̿���','1', '8805171657892', '01000005555','52553','����� ��õ�� ���굿 5','5��', 'asd111@naver.com','AB+','p_img (5).gif','170','64','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval,'p_test6','1111','������','1','9405261562486','01045465412','06334','����Ư���� ������ ������109�� 62',null,'p_test6@naver.com','O+','p_photo1.jpg','180','70','0',to_date('20/12/13', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test7','1111','�迹��','2','8412072459842','01045465413','06334','����Ư���� ������ ������109�� 62',null,'p_test7@naver.com','O+','p_photo2.jpg','160','55','0',to_date('20/12/14', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test8','1111','������','1','9108141547850','01045465414','04209','����Ư���� ������ �������14��� 10',null,'p_test8@naver.com','A-','p_photo3.jpg','165','60','0',to_date('20/12/15', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test9','1111','�ڹμ�','2','9405172657952','01045465415','07956','����Ư���� ��õ�� ���߾ӳ���16���� 16-11',null,'p_test9@naver.com','A+','p_photo4.jpg','170','65','0',to_date('20/12/16', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test10','1111','������','1','8501151265786','01045465416','02493','����Ư���� ���빮�� ����ø����29�� 20-1',null,'p_test10@naver.com','AB+','p_photo5.jpg','170','65','1',to_date('20/12/17', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test11','1111','������','2','8911142459853','01045465417','04209','����Ư���� ������ �������14��� 10',null,'p_test11@naver.com','AB+','p_photo6.jpg','165','60','1',to_date('20/12/18', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test12','1111','������','1','0012193657863','01045465418','06334','����Ư���� ������ ������109�� 62',null,'p_test12@naver.com','B+','p_photo7.jpg','174','69','0',to_date('20/12/30', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test13','1111','�Ǽ���','2','1103173657803','01045465419','02493','����Ư���� ���빮�� ����ø����29�� 20-1',null,'p_test13@naver.com','B+','p_photo8.jpg','166','61','1',to_date('20/12/31', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test14','1111','���ֿ�','1','1103171657803','01045465420','04189','����Ư���� ������ ������ 114',null,'p_test14@naver.com','O+','p_photo9.jpg','175','65','1',to_date('21/01/01', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test15','1111','�����','2','9710262845987','01045465421','04189','����Ư���� ������ ������ 114',null,'p_test15@naver.com','O+','p_photo10.jpg','168','63','0',to_date('21/01/02', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test16','1111','����ȣ','1','9510101579510','01045465422','06334','����Ư���� ������ ������109�� 62',null,'p_test16@naver.com','A+','p_photo11.jpg','180','75','0',to_date('21/01/03', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test17','1111','������','2','6902102459875','01045465423','06334','����Ư���� ������ ������109�� 62',null,'p_test17@naver.com','AB+','p_photo12.jpg','153','48','0',to_date('21/01/03', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test18','1111','������','1','8001261268450','01045465424','04189','����Ư���� ������ �����37�� 26',null,'p_test18@naver.com','A+','p_photo13.jpg','168','63','1',to_date('21/01/03', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test19','1111','��ä��','2','9309172657853','01045465425','07952','����Ư���� ��õ�� ���߾ӳ���16�� 43',null,'p_test19@naver.com','A+','p_photo14.jpg','159','54','1',to_date('21/01/04', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test20','1111','������','1','9612311579543','01045465426','02493','����Ư���� ���빮�� ����ø����29�� 20-1',null,'p_test20@naver.com','AB+','p_photo15.jpg','178','73','1',to_date('21/01/04', 'YY/MM/DD'),default);


create table department (  -- �μ�
    dep_num number(3) constraint dep_num_pk primary key,
    dep_name varchar(50)
);

create sequence dep_num_seq  -- �μ� ������
increment by 10
start with 0
maxvalue 9999999
minvalue 0;


insert into department values( dep_num_seq.nextval, '�Ȱ�');
insert into department values( dep_num_seq.nextval, '�Ǻΰ�');
insert into department values( dep_num_seq.nextval, '���Űǰ����а�');

commit;

--alter table dl_doctor add d_retire_date date default null;

create table dl_doctor (   -- �ǻ�
    doctor_num number(4) constraint doctor_num_pk primary key,
    d_id varchar2(20) not null,
    d_pwd varchar2(20) not null,
    d_name varchar2(15) not null,
    d_gender char(1) not null,
    d_jumin_num char(13) not null,
    d_phone_num char(13) not null,
    d_zipcode varchar2(50) not null,
    d_address1 varchar2(60) not null,
    d_address2  varchar2(50),
    d_email varchar2(30) not null,
    dep_num number,
    d_graduation varchar2(150) not null,
    d_career varchar2(200),
    d_licence varchar2(100),
    d_licence_num varchar2(20),
    d_photo varchar2(50),
    d_regdate date default sysdate, 
    d_content varchar2(500),
    d_field varchar2(100),
    d_retire_date date default null,
    constraint dl_doctor_dep_num_fk foreign key(dep_num)
    references department(dep_num) 
);

create sequence doctor_num  -- �ǻ� ������
increment by 1
start with 1;


insert into dl_doctor values (doctor_num.nextval,'doctor1','1111','������','1','1234561234567','01000001111  ','21429','��õ������ ���� ������ 4','406ȣ','asd123@naver.com',10,'���縯���б�,�ǰ�����,2015,�������б�,�ǰ�����,2018','�λ꼺��Ȱ����� �Ȱ�,������,2015,�λ꼺��Ȱ����� ����,������,2018','�Ȱ�������','1234','d_img (1).jpg',sysdate,'"�ּ�"�̶� ���� å���� �� �ִ� �ǻ�','Ȳ�ݺ���, ����ü��ȯ, �索��������, �����ڸ�, �鳻��',default);
insert into dl_doctor values (doctor_num.nextval,'doctor2','1111','��ܿ�','2','1234561234567','01000002222  ','08317','����Ư���� ���α� ���ɷ� 378','305ȣ','asd345@naver.com',20,'������б�,�ǰ����� ���л�,1993,������б�,�ǰ����п� ���м���,1997','������б�����,�ӻ󰭻�,2001,������б�,�ǰ����� �Ǻΰ��б��� ����,2017- ����','�Ǻΰ�������','5678','d_img (2).jpg',sysdate,'�� ������, �� �������� ������ ��� �����մϴ�.','�Ǽ�,���帧(���帧����),�ֻ�, �ȸ�ȫ��',default);
insert into dl_doctor values (doctor_num.nextval,'doctor3','1111','������','1','1234561234567','01000003333  ','30130','����Ư����ġ�� �Ѵ������ 157','503ȣ','asd678@naver.com',30,'������а�,�ǰ����� ���а�,1995,������б�,�ǰ����п� ���йڻ�,2001','������б�����,���Űǰ����а� ������,2000,�д缭����б�����,���Űǰ����а� ����,2014-����','���Űǰ����а� ������','9874','d_img (3).jpg',sysdate,'����� �ð� �̾߱⸦ ������ �����ϰ�, � ������ ���� �� ������ �Բ� �����մϴ�.','�Ҿ�,û�ҳ� ADHD,ƽ,�����ൿ���',default);
insert into dl_doctor values (doctor_num.nextval,'doctor4','1111','������','1','1234561234567','01000004444  ','04383','����Ư���� ��걸 ������� 137',null,'asd945@naver.com',20,'������б�,�ǰ����� ���а�,1997- 2001,������б�,�ǰ����� ���а� �Ǻΰ��� ����(����),2003- 2005','������б�����,�Ǻΰ� ���ᱳ��,2012,������б�,�ǰ����� �α���,2019- ����','�Ǻΰ�������','9874','d_img (4).jpg',sysdate,'ȿ�����̰� ������ ġ�Ḧ ���� ȯ�ڰ� �� �ູ���� �� �ֵ��� ����ϰڽ��ϴ�.',' �Ǽ�, �չ߹ٴڳ�����, ���ų����Ǽ�',default);
insert into dl_doctor values (doctor_num.nextval,'doctor5','1111','������','1','1234561234567','01000005555  ','03902','����Ư���� ������ ������ 117',null,'asd498@naver.com',30,'������б�,���а�,2006,������б�,�ǰ����� ���Ű��� �ڻ�,2013 ','������б�����,���Űǰ����а� ������,2007,�д缭����б�����,���Űǰ����а� ������,2018- ����','���Űǰ����а� ������','9874','d_img (5).jpg',sysdate,'���� �ǻ�','��ü�������,�����,��Ȳ���',default);
insert into dl_doctor values (doctor_num.nextval,'doctor6','1111','������','2','1234561234567','01000006666  ','04108','����Ư���� ������ ���2�� 17',null,'asd902@naver.com',20,'������б�,�ǰ����� ���а�,2006,������б�,�ǰ����� �Ǻΰ��� ����,2011','������б�����,�Ǻΰ� ������,2007-2011,�д缭����б�����,�Ǻΰ� �α���,2020-����','�Ǻΰ�������','9874','d_img (6).jpg',sysdate,'�� ������, �� �������� ������ ��� �����մϴ�.','Ż��, ����Ż��, �Ǻ�����, ����ġ��',default);
insert into dl_doctor values (doctor_num.nextval,'doctor7','1111','������','2','8510142657841','01024997532','01035','����Ư���� ���ϱ� ����107�� 51',null,'doctor7@naver.com',10,'������б�,�ǰ�����,1995','����ƻ꺴�� �Ȱ�,������,2003- 2018,����ƻ꺴�� �Ȱ��˻��,��米��,����','�Ȱ� ������','25486','d_photo1.jpg',to_date('20/12/08', 'RRRR-MM-DD'),'�ϰ� ã�ƿͼ� ����ϰ� ������� �� �ִ� �ǻ�','���,��',null);
--�� 2
insert into dl_doctor values (doctor_num.nextval,'doctor8','1111','���Ƹ�','2','8304252157963','01024997533','02810','����Ư���� ���ϱ� ���Ϸ�13���� 11-3',null,'doctor8@naver.com',10,'���縯���б�,�ǰ�����,2000','����ƻ꺴��,�ӻ󰭻�,2017- 2019','�Ȱ� ������','18667','d_photo2.jpg',to_date('20/12/09', 'RRRR-MM-DD'),'ǳ���� ����� ������ ���� ���йڻ�','�鳻�� ������,',null);
--�� 3
insert into dl_doctor values (doctor_num.nextval,'doctor9','1111','ä��ȭ','2','8006302159745','01024997534','04309','����Ư���� ��걸 û�ķ�47�� 62',null,'doctor9@naver.com',10,'���縯���б�,�ǰ�����,1998,���縯�߾��Ƿ��,�Ȱ� ������,2002','���������Ȱ�,����,2005,���縯�ǰ����� �߾��Ƿ��,�ܷ�����,2006- 2018','�Ȱ� ������','18668','d_photo3.jpg',to_date('20/12/20', 'RRRR-MM-DD'),'ȯ�� ���� ����� �ֻ��� ����� �߱��մϴ�.','������Լ�, ������',null);
--�� 4
insert into dl_doctor values (doctor_num.nextval,'doctor10','1111','��ȫ��','1','9209111657481','01024997535','01035','����Ư���� ���ϱ� ����107�� 51',null,'doctor10@naver.com',10,'���縯���б�,�ǰ�����,2000,���縯�߾��Ƿ��,�Ȱ� ������,2005','��ġ������Ȱ�,����,2005,�ѱ��ܾȺ���ȸ,��ȸ��,2006- 2019','�Ȱ� ������','25489','d_photo4.jpg',to_date('20/12/21', 'RRRR-MM-DD'),'������ �Ƿ°� ������ ���� ����մϴ�.','�����϶�',null);
--�� 5
insert into dl_doctor values (doctor_num.nextval,'doctor11','1111','�뼮��','1','8507131649213','01024997536','02810','����Ư���� ���ϱ� ���Ϸ�13���� 11-3',null,'doctor11@naver.com',20,'�Ѿ���б�,�ǰ�����,2001,�Ѿ���б�,���п� ���а�,2005','�������б� ��������,�α���,2008,�������б��Ƿ�� �Ƿ������ó,��ó��,2013','�Ǻΰ� ������','18665','d_photo5.jpg',to_date('21/01/02', 'RRRR-MM-DD'),'ã�ƿ��ô� ��� �е��� �ǰ��� �ູ�� ���� ����մϴ�.','���帧, �̿�, �Ǻ��Ϲ���ȯ',null);
--�� 6
insert into dl_doctor values (doctor_num.nextval,'doctor12','1111','�߹���','2','9009112657481','01024997537','04309','����Ư���� ��걸 û�ķ�47�� 62',null,'doctor12@naver.com',20,'�߾Ӵ��б�,�ǰ�����,2001,�߾Ӵ��б�,���п� ���а�,2006','�߾Ӵ��б� ��������,�α���,2008,�߾Ӵ��б��Ƿ�� �Ƿ������ó,��ó��,2014','�Ǻΰ� ������','18666','d_photo6.jpg',to_date('21/01/03', 'RRRR-MM-DD'),'ȯ���� ������� ���� ��������� �����ϰ� �ذ����� - ��������','�������Ǻο�, Ż��, �����, �Ǽ�',null);
--�� 7
insert into dl_doctor values (doctor_num.nextval,'doctor13','1111','�㼱��','2','8911032015480','01024997538','03394','����Ư���� ���� ��������10�� 5-1?',null,'doctor13@naver.com',30,'��ϴ��б�,�ǰ�����,1997','��ϴ��б����� �Ű����Ű�,������,2002,������б����� �Ű����Ű�,�ӻ󰭻�,2005','�Ű����Ű� ������','14117','d_photo7.jpg',to_date('21/01/03', 'RRRR-MM-DD'),'����ó�� ������ ���� �����ϰڽ��ϴ�.','ġ��, ���μ� ������ȯ',null);
--�� 8
insert into dl_doctor values (doctor_num.nextval,'doctor14','1111','��ġȫ','1','8606021954359','01024997539','03394','����Ư���� ���� ��������10�� 5-1?',null,'doctor14@naver.com',30,'�������б�,�ǰ�����,2000,������б� ���Ǵ��п�,������,2004','����ƻ꺴�� ���Űǰ����а�,������,2005,������б����� ��̺���,�ӻ󰭻�,2008','���Űǰ����а� ������','10705','d_photo8.jpg',to_date('21/01/04', 'RRRR-MM-DD'),'���λ��õ��','�������, ��Ʈ����/�Ҿ� ���, ������(�����/������)',null);
--�� 9
insert into dl_doctor values (doctor_num.nextval,'doctor15','1111','������','2','9101302068452','01024997540','01035','����Ư���� ���ϱ� ����107�� 51',null,'doctor15@naver.com',30,'�����Ǵ�,����,2003,�����Ǵ�,���Ű��� �ڻ�,2006','����뺴�� ���Ű�,������,2008,�̱� ��ǹٴϾ� �Ǵ� �Ű����Ű� ������,����������,2010','���Űǰ����а� ������','18669','d_photo9.jpg',to_date('21/01/04', 'RRRR-MM-DD'),'ȯ�ں��� ���忡�� �����ϰ� �ǰ��� �ູ�� ã�� �� �ֵ��� �ּ��� ���ϰڽ��ϴ�','���źп���, �Ҿ����, ������(�����/������)',null);


create table appointment(    -- ����
    appointment_num number constraint appointment_appointment_num_pk primary key,
    patient_num number,
    doctor_num number,
    dep_num number,
    appointment_date varchar2(25) not null,
    appointment_time varchar2(25) not null,
    reg_date date default sysdate,
    constraint appointment_patient_num1_fk foreign key(patient_num)
    references dl_user(patient_num),
    constraint appointment_doctor_num1_fk foreign key(doctor_num)
    references dl_doctor(doctor_num),
    constraint dep_num1_fk foreign key(dep_num)
    references department(dep_num)
);

create sequence appointment_num  -- ���� ������
increment by 1
start with 1;

insert into appointment values (appointment_num.nextval,21,2,10,'2020-12-26','9:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 2
insert into appointment values (appointment_num.nextval,20,3,20,'2020-12-26','10:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 3
insert into appointment values (appointment_num.nextval,19,4,30,'2020-12-26','11:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 4
insert into appointment values (appointment_num.nextval,18,5,20,'2020-12-26','12:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 5
insert into appointment values (appointment_num.nextval,17,6,30,'2020-12-26','1:30 ����',to_date('2020/12/21', 'RRRR-MM-DD'));
--�� 6
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,7,20,'2020-12-27','9:30 ����',to_date('2020/12/21', 'RRRR-MM-DD'));
--�� 7
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,8,10,'2020/12/27','10:30 ����',to_date('2020/12/21', 'RRRR-MM-DD'));
--�� 8
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,9,10,'2020/12/27','11:30 ����',to_date('2020/12/21', 'RRRR-MM-DD'));
--�� 9
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,10,10,'2020/12/27','12:30 ����',to_date('2020/12/21', 'RRRR-MM-DD'));
--�� 10
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,11,10,'2020/12/27','1:30 ����',to_date('2020/12/21', 'RRRR-MM-DD'));
--�� 11
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,12,20,'2020/12/27','2:30 ����',to_date('2020/12/22', 'RRRR-MM-DD'));
--�� 12
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,13,20,'2020/12/28','9:30 ����',to_date('2020/12/23', 'RRRR-MM-DD'));
--�� 13
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,14,30,'2020/12/28','10:30 ����',to_date('2020/12/24', 'RRRR-MM-DD'));
--�� 14
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,15,30,'2020/12/28','11:30 ����',to_date('2020/12/24', 'RRRR-MM-DD'));
--�� 15
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,16,30,'2020/12/28','12:30 ����',to_date('2020/12/24', 'RRRR-MM-DD'));
--�� 16
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,2,10,'2020/12/29','9:30 ����',to_date('2020/12/25', 'RRRR-MM-DD'));
--�� 17
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,3,20,'2020/12/29','10:30 ����',to_date('2020/12/26', 'RRRR-MM-DD'));
--�� 18
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,4,30,'2020/12/29','11:30 ����',to_date('2020/12/27', 'RRRR-MM-DD'));
--�� 19
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,5,20,'2020/12/30','9:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 20
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,6,30,'2020/12/30','10:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 21
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,7,20,'2020/12/30','11:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 22
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,8,10,'2020/12/30','12:30 ����',to_date('2020/12/20', 'RRRR-MM-DD'));
--�� 23
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,9,10,'2020/12/30','1:30 ����',to_date('2020/12/21', 'RRRR-MM-DD'));
--�� 24
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,10,10,'2021/01/04','9:30 ����',to_date('2020/12/30', 'RRRR-MM-DD'));
--�� 25
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,11,10,'2021/01/04','10:30 ����',to_date('2020/12/30', 'RRRR-MM-DD'));
--�� 26
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,12,20,'2021/01/04','11:30 ����',to_date('2020/12/30', 'RRRR-MM-DD'));
--�� 27
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,13,20,'2021/01/04','12:30 ����',to_date('2020/12/30', 'RRRR-MM-DD'));
--�� 28
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,14,30,'2021/01/04','1:30 ����',to_date('2020/12/31', 'RRRR-MM-DD'));
--�� 29
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,15,30,'2021/01/04','2:30 ����',to_date('2021/01/01', 'RRRR-MM-DD'));
--�� 30
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,16,30,'2021/01/04','3:30 ����',to_date('2021/01/02', 'RRRR-MM-DD'));
--�� 31
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,2,10,'2021/01/05','3:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 32
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,3,20,'2021/01/05','4:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 33
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,4,30,'2021/01/05','5:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 34
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,5,20,'2021/01/06','9:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 35
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,6,30,'2021/01/06','10:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 36
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,17,7,20,'2021/01/06','11:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 37
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,18,8,10,'2021/01/06','12:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 38
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,19,9,10,'2021/01/06','1:30 ����',to_date('2021/01/03', 'RRRR-MM-DD'));
--�� 39
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,20,10,10,'2021/01/06','2:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 40
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,21,11,10,'2021/01/06','3:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 41
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,18,12,20,'2021/01/06','4:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 42
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,13,20,'2021/01/07','9:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 43
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,21,14,30,'2021/01/07','10:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 44
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,15,30,'2021/01/07','11:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 45
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,16,30,'2021/01/07','12:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 46
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,2,10,'2021/01/07','1:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 47
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,3,20,'2021/01/07','2:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 48
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,20,4,30,'2021/01/07','3:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 49
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,5,20,'2021/01/07','4:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 50
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,6,30,'2021/01/08','11:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 51
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,7,20,'2021/01/08','12:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 52
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,8,10,'2021/01/08','1:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 53
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,9,10,'2021/01/08','2:30 ����',to_date('2021/01/04', 'RRRR-MM-DD'));
--�� 54
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,10,10,'2021/01/11','9:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 55
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,11,10,'2021/01/11','10:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 56
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,12,20,'2021/01/11','11:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 57
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,13,20,'2021/01/11','12:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 58
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,17,14,30,'2021/01/11','1:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 59
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,15,30,'2021/01/11','2:30 ����',to_date('2021/01/05', 'RRRR-MM-DD'));
--�� 60
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,19,16,30,'2021/01/12','9:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 61
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,2,10,'2021/01/12','10:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 62
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,3,20,'2021/01/12','11:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 63
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,4,30,'2021/01/12','12:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 64
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,18,5,20,'2021/01/12','1:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 65
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,19,6,30,'2021/01/12','2:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 66
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,7,20,'2021/01/12','3:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 67
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,8,10,'2021/01/14','9:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 68
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,9,10,'2021/01/14','10:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 69
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,10,10,'2021/01/14','11:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 70
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,11,10,'2021/01/14','12:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 71
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,12,20,'2021/01/14','1:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 72
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,13,20,'2021/01/14','2:30 ����',to_date('2021/01/06', 'RRRR-MM-DD'));
--�� 73
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,20,14,30,'2021/01/14','3:30 ����',to_date('2021/01/07', 'RRRR-MM-DD'));
--�� 74
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,15,30,'2021/01/14','4:30 ����',to_date('2021/01/07', 'RRRR-MM-DD'));
--�� 75
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,16,30,'2021/01/14','5:30 ����',to_date('2021/01/07', 'RRRR-MM-DD'));
--�� 76
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,17,2,10,'2021/01/15','9:30 ����',to_date('2021/01/07', 'RRRR-MM-DD'));
--�� 77
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,3,20,'2021/01/15','10:30 ����',to_date('2021/01/07', 'RRRR-MM-DD'));
--�� 78
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,21,4,30,'2021/01/15','11:30 ����',to_date('2021/01/08', 'RRRR-MM-DD'));
--�� 79
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,5,20,'2021/01/15','12:30 ����',to_date('2021/01/08', 'RRRR-MM-DD'));
--�� 80
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,6,30,'2021/01/15','1:30 ����',to_date('2021/01/08', 'RRRR-MM-DD'));



create table treatment_record (   -- ���� ���
    treatment_num number(5) constraint treatment_num_pk primary key,
    patient_num number,
    doctor_num number,
    dep_num number,
    appointment_num number,  -- �����ȣ fk �߰�
    start_treatment_time date default sysdate,
    monitoring_time number(5),
    
    constraint treat_patient_num_fk foreign key(patient_num)
    references dl_user(patient_num),
    constraint treat_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num),
    constraint treat_dep_num_fk foreign key(dep_num)
    references department(dep_num),
    constraint treat_appointment_num_fk foreign key(appointment_num)
    references appointment(appointment_num)
);

create sequence treatment_num  -- ���� ��� ������
increment by 1
start with 100;


insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,21,2,10,2,to_date('2020/12/26', 'RR/MM/DD'),30);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,20,3,20,3,to_date('2020/12/26', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,19,4,30,4,to_date('2020/12/26', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,18,5,20,5,to_date('2020/12/26', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,17,6,30,6,to_date('2020/12/26', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,16,7,20,7,to_date('2020/12/26', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,15,8,10,8,to_date('2020/12/26', 'RR/MM/DD'),30);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,14,9,10,9,to_date('2020/12/27', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,13,10,10,10,to_date('2020/12/27', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,12,11,10,11,to_date('2020/12/27', 'RR/MM/DD'),15);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,11,12,20,12,to_date('2020/12/27', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,10,13,20,13,to_date('2020/12/27', 'RR/MM/DD'),30);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,9,14,30,14,to_date('2020/12/27', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,8,15,30,15,to_date('2020/12/28', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,7,16,30,16,to_date('2020/12/28', 'RR/MM/DD'),15);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,6,2,10,17,to_date('2020/12/28', 'RR/MM/DD'),15);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,5,3,20,18,to_date('2020/12/28', 'RR/MM/DD'),30);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,4,4,30,19,to_date('2020/12/29', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,3,5,20,20,to_date('2020/12/30', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,2,6,30,21,to_date('2020/12/30', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,2,7,20,22,to_date('2020/12/30', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,3,8,10,23,to_date('2020/12/30', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,4,9,10,24,to_date('2020/12/30', 'RR/MM/DD'),30);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,5,10,10,25,to_date('2021/01/04', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,6,11,10,26,to_date('2021/01/04', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,7,12,20,27,to_date('2021/01/04', 'RR/MM/DD'),15);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,8,13,20,28,to_date('2021/01/04', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,9,14,30,29,to_date('2021/01/04', 'RR/MM/DD'),30);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,10,15,30,30,to_date('2021/01/04', 'RR/MM/DD'),20);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,11,16,30,31,to_date('2021/01/04', 'RR/MM/DD'),10);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,12,2,10,32,to_date('2021/01/05', 'RR/MM/DD'),15);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,13,3,20,33,to_date('2021/01/05', 'RR/MM/DD'),15);

insert into treatment_record (treatment_num, patient_num, doctor_num, dep_num, appointment_num, start_treatment_time, monitoring_time) values (treatment_num.nextval,14,4,30,34,to_date('2021/01/05', 'RR/MM/DD'),20);


create table prescription (     -- ó����
    prescription_num number(4) constraint prescription_num_pk primary key,
    patient_num number,
    doctor_num number,
    medicine_num varchar2(20), -- REFERENCES treatment_record (start_treatment_time)
    payment_check char(1) default '0',
    treatment_num number,
    dosage varchar2(20), --������
    quantity varchar2(20), --Ƚ��
    taking_date varchar2(20), --�ϼ�
    prescription_date date default sysdate,
    price number(7),
    
    constraint prescription_treatment_num_fk foreign key(treatment_num)
    references treatment_record (treatment_num),
    constraint prescription_patient_num_fk foreign key(patient_num)
    references dl_user(patient_num),
    constraint prescription_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num)
);

create sequence prescription_num  -- ó���� ������
increment by 1
start with 100;

insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,21,2,'10','0',101,'2,2','2,3','2,4',to_date('20/12/26', 'RRRR-MM-DD'),4300);
--�� 2
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,20,3,'20','0',102,'2,2,2','2,2,3','2,2,4',to_date('20/12/26', 'RRRR-MM-DD'),5000);
--�� 3
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,19,4,'30','1',103,'1,1','1,2','1,3',to_date('20/12/26', 'RRRR-MM-DD'),3200);
--�� 4
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,18,5,'20','0',104,'1,1,1','1,1,2','1,1,3',to_date('20/12/26', 'RRRR-MM-DD'),6100);
--�� 5
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,17,6,'30','0',105,'2,2','2,3','2,4',to_date('20/12/26', 'RRRR-MM-DD'),4200);
--�� 6
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,16,7,'20','0',106,'2,2,2','2,2,3','2,2,4',to_date('20/12/26', 'RRRR-MM-DD'),6500);
--�� 7
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,15,8,'10','0',107,'1,1,1','1,1,1','1,1,1',to_date('20/12/26', 'RRRR-MM-DD'),6100);
--�� 8
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,14,9,'10','0',108,'1,1,1','1,1,1','1,1,1',to_date('20/12/27', 'RRRR-MM-DD'),5800);
--�� 9
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,13,10,'10','1',109,'2,2','2,3','2,4',to_date('20/12/27', 'RRRR-MM-DD'),4200);
--�� 10
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,12,11,'10','0',110,'1,1,1','1,1,2','1,1,3',to_date('20/12/27', 'RRRR-MM-DD'),5600);
--�� 11
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,11,12,'20','0',111,'2,2','2,3','2,4',to_date('20/12/27', 'RRRR-MM-DD'),4550);
--�� 12
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,10,13,'20','1',112,'2,2,2','2,2,3','2,2,4',to_date('20/12/27', 'RRRR-MM-DD'),8450);
--�� 13
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,9,14,'30','1',113,'1,1','1,2','1,3',to_date('20/12/27', 'RRRR-MM-DD'),4500);
--�� 14
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,8,15,'30','0',114,'1,1,1','1,1,2','1,1,3',to_date('20/12/28', 'RRRR-MM-DD'),7540);
--�� 15
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,7,16,'30','0',115,'2,2,2','2,2,3','2,2,4',to_date('20/12/28', 'RRRR-MM-DD'),7541);
--�� 16
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,6,2,'10','0',116,'1,1','1,2','1,3',to_date('20/12/28', 'RRRR-MM-DD'),4550);
--�� 17
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,5,3,'20','1',117,'1,1,1','1,1,2','1,1,3',to_date('20/12/28', 'RRRR-MM-DD'),8100);
--�� 18
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,4,4,'30','1',118,'1,1','1,2','1,3',to_date('20/12/29', 'RRRR-MM-DD'),4500);
--�� 19
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,3,5,'20','0',119,'1,1,1','1,1,1','1,1,1',to_date('20/12/30', 'RRRR-MM-DD'),6500);
--�� 20
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,2,6,'30','0',120,'2,2','2,3','2,4',to_date('20/12/30', 'RRRR-MM-DD'),6540);
--�� 21
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,2,7,'20','0',121,'2,2,2','2,2,3','2,2,4',to_date('20/12/30', 'RRRR-MM-DD'),7600);
--�� 22
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,3,8,'10','0',122,'1,1','1,2','1,3',to_date('20/12/30', 'RRRR-MM-DD'),3800);
--�� 23
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,4,9,'10','0',123,'2,2','2,3','2,4',to_date('20/12/30', 'RRRR-MM-DD'),3950);
--�� 24
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,5,10,'10','1',124,'2,2,2','2,2,3','2,2,4',to_date('21/01/04', 'RRRR-MM-DD'),7450);
--�� 25
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,6,11,'10','1',125,'1,1','1,2','1,3',to_date('21/01/04', 'RRRR-MM-DD'),6500);
--�� 26
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,7,12,'20','0',126,'1,1,1','1,1,2','1,1,3',to_date('21/01/04', 'RRRR-MM-DD'),6500);
--�� 27
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,8,13,'20','0',127,'2,2','2,3','2,4',to_date('21/01/04', 'RRRR-MM-DD'),6540);
--�� 28
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,9,14,'30','0',128,'2,2,2','2,2,3','2,2,4',to_date('21/01/04', 'RRRR-MM-DD'),7600);
--�� 29
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,10,15,'30','0',129,'1,1,1','1,1,1','1,1,1',to_date('21/01/04', 'RRRR-MM-DD'),3800);
--�� 30
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,11,16,'30','1',130,'1,1,1','1,1,1','1,1,1',to_date('21/01/04', 'RRRR-MM-DD'),5800);
--�� 31
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,12,2,'10','0',131,'2,2','2,3','2,4',to_date('21/01/05', 'RRRR-MM-DD'),4200);
--�� 32
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,13,3,'20','0',132,'1,1,1','1,1,2','1,1,3',to_date('21/01/05', 'RRRR-MM-DD'),5600);
--�� 33
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,14,4,'30','1',133,'2,2','2,3','2,4',to_date('21/01/05', 'RRRR-MM-DD'),4550);




--insert into prescription(prescription_num, patient_num,doctor_num,medicine_num,payment_check,treatment_num,dosage,quantity,taking_date,prescription_date,price) 
--values(prescription_num.nextval, (select patient_num from treatment_record where treatment_num = 101),
-- (select doctor_num from treatment_record where treatment_num = 101),
--  '2,3',default,101,'2,2','2,2','2,2', sysdate ,12000);
--  

create table medicine (  -- �� ����
    medicine_num varchar2(100) constraint medicine_num_pk primary key,
    medicine_name varchar2(100) not null,
    medicine_detail varchar2(1000),
    medicine_taking varchar2(1000),
    medicine_warning varchar2(1000),
    constraint uk_info unique(medicine_name)
);

create sequence medicine_num  -- �� ��ȣ ������
increment by 1
start with 1;

insert into medicine values (medicine_num.nextval,'��ũ���÷�(����Ŭ�ζ�)_(9.5g/95mL)','���� Ȥ�� ��Ȳ���� ������ �÷���','����Ŭ�ζ��μ� 0.5 �� 1 g�� ��ħ 15 �� 30�� �� �Ǵ� ���� 30�� ���� �汸�����Ѵ�.','"������ �Ƴ��ʶ��ý� ����');

insert into medicine values (medicine_num.nextval,'��ũ���÷�(����Ŭ�ζ�)_(1g/10mL)','���� Ȥ�� ��Ȳ���� ������ �÷���','����Ŭ�ζ��μ� 0.5 �� 1 g�� ��ħ 15 �� 30�� �� �Ǵ� ���� 30�� ���� �汸�����Ѵ�.','"������ �Ƴ��ʶ��ý� ����');


insert into medicine values (medicine_num.nextval,'��ũ���÷�(����Ŭ�ζ�)_(0.5g/5mL)','���� Ȥ�� ��Ȳ���� ������ �÷���','����Ŭ�ζ��μ� 0.5 �� 1 g�� ��ħ 15 �� 30�� �� �Ǵ� ���� 30�� ���� �汸�����Ѵ�.','"������ �Ƴ��ʶ��ý� ����');

insert into medicine values (medicine_num.nextval,'������3�и��׷�(�����ɿ��꿰)_(3.39mg/1��)','����� Ÿ���� ����','�� ���� ����뷮�� 1�� 1ȸ 6mg�̸�, ȯ���� ��� �ǻ��� ó�濡 ���� 1�� 1ȸ 3mg�� ������ �� �ִ�.','"�ڻ� ���� �� ������� ��ȭ');


insert into medicine values(medicine_num.nextval,'��Ƽ�÷����Ⱦ�(��Ƽ�÷ϻ�ż�ȭ��)','������ �������� �ִ� ������ ������ ���� ���ռ� �ḷ��, ���Ǽ���, ������(�����˾� ����)�� ġ��, �Ȱ������� ����ȭ���

�����󱸱ռ�, ����󱸱ռ�, ��ű���, �屸�ռ�, �ڸ��׹��׸����, �������(����ϸ��)-īŸ������, ��Ʈ�ι���-�����, ũ���ÿ���-����Ͼƿ�, ����ġ�Ƽ�, �𸣰��ڶ�-�𸣰���, ���÷翣�ڱ�, �����𳪽���, ����, ���ΰ�𳪽�-�Ŀ�ġ�������, ���׳�Ʈ�����𳪽�(ũ����𳪽�)-�����ʸ���, �ƽó�����ͼ�, ��ũ�ױ�','���ռ� �ḷ��, ���Ǽ���, ������(�����˾� ����) : ��� 1ȸ 1��� 1�� 3ȸ ���� (������ ����)�Ѵ�.',' �� ���� ���ȿ� �̿��� �������� ����� �� ������, �ḷ�Ϸ� �ֻ��ϰų�, �ȱ��� ����(anterior chamber)�� ���� �������� ���ƾ� �Ѵ�.');

insert into medicine values(medicine_num.nextval,'�ֹ��÷�����(���˿�л곪Ʈ��)','���Ʒ��� �������� ���� ������(�����ʵ�ø��� �ý����� �Ϻκ�)�ӿ� ����ִ� ���������� �������� �ִ� ��',' ������ ���������� ����뷮�� �����ϰ� �����ϱ� ���� �� ���� ����õ�ڸ� ���� �����Ѵ�.',' �� �� ���� �� �ܹ����� �๰�� �������� ������ �ִ� ȯ��');
insert into medicine values(medicine_num.nextval,'��������ũ��','����� ũ����',' 1�� 1��3ȸ ȯ�ο� ���緮�� �ٸ���.','1. ������ ���� ����� �� ���� ������� �� ��.

1) ����(����, �ŵ� ��)������(ĭ�����, �鼱 ��)�����Ƿ���Ÿ�Ӥ�ȿ������̷���(�������, �ܼ�����, ����, ������ ��)������(��, ������ ��)�� �Ǻΰ����� ȯ��(������ ��ȭ�� �� �ִ�)

2) �� �� �Ǵ� �� �� ���п� ������ �� �� ������ �ִ� ȯ��

3) ��õ���� �ִ� ������ ���̵��� ȯ��(õ�������� ġ�������� ��Ÿ�� �� �ִ�.)

4) �˾�(��üƮ�� ����), ��2�� ���缺 �̻��� ȭ������� ȯ��(�Ǻ������ �����Ǿ� ġ���� ������ �� �ִ�)

5) �������Ǻο�, ���뿩�帧, �ֻ�(rosacea) ȯ��

6) ��Ʈ���丶�̽�, ī�����̽�, ��Ÿ���̽�, �׿����̽� �� �ƹ̳�۸��ڻ��̵�� �׻����� �Ǵ� �ٽ�Ʈ��ſ� ���� ������ �� �� ������ �ִ� ȯ�� (�ƹ̳�۸��ڻ��̵�� �׻��������̿��� ���� �˷��������߼��� �����Ǿ���)');








create table payment_record (   -- ��������
    pay_num number(4) constraint payment_record_num primary key,
    patient_num number,
    doctor_num number,
    dep_num number,
    prescription_num number,
    paydate date default sysdate,
    price number(7) not null,
    payment_way varchar2(10) not null,
    
    constraint pay_rec_patient_num_fk foreign key(patient_num)
    references dl_user(patient_num),
    constraint pay_rec_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num),
    constraint pay_rec_dep_num_fk foreign key(dep_num)
    references department(dep_num),
    constraint pay_rec_payment_record_fk foreign key(prescription_num)
    references prescription(prescription_num)
);

create sequence pay_record_num -- �������� ������
increment by 1
start with 1;


insert into payment_record values (pay_record_num.nextval,19,4,30,103,to_date('20/12/26','RR/MM/DD'),3200,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,13,10,10,109,to_date('20/12/27','RR/MM/DD'),4200,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,11,12,20,111,to_date('20/12/27','RR/MM/DD'),4550,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,10,13,20,112,to_date('20/12/27','RR/MM/DD'),8450,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,9,14,30,113,to_date('20/12/27','RR/MM/DD'),4500,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,5,3,20,117,to_date('20/12/28','RR/MM/DD'),8100,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,4,4,30,118,to_date('20/12/29','RR/MM/DD'),4500,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,5,10,10,124,to_date('21/01/04','RR/MM/DD'),7450,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,6,11,10,125,to_date('21/01/04','RR/MM/DD'),6500,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,11,16,30,130,to_date('21/01/04','RR/MM/DD'),5800,'card');
insert into payment_record (pay_num,patient_num,doctor_num,dep_num,prescription_num,paydate,price,payment_way) values (pay_record_num.nextval,14,4,30,133,to_date('21/01/05','RR/MM/DD'),4550,'card');

create table hospital_board (   -- �������� �Խ���
    hospital_board_num number(4) constraint hospital_num_pk primary key,
    hospital_photo varchar2(60),
    hospital_title varchar2(100),
    hospital_content varchar2(3000),
    hospital_regdate date default sysdate,
    h_watched number(4)
);

create sequence hospital_board_num  -- ���� �������� ������
increment by 1
start with 1;

set define off;

insert into hospital_board values(hospital_board_num.nextval, '', '��������ó����ħ ���� ����', '�� ��������ó����ħ

���͸�ũ ��������ó�� ��ħ �� "���������� ó��" �׸��  "����������ȣ�� ���� �����,������ ��å"  ������ �߰��Ǿ� �ȳ��帳�ϴ�.

 

�� �߰� ����

 1. ���������� ó�� (�ű� �߰�)

  ���������� ó�� : ���͸�ũ�� ��� �ۼ�, ������ ����, ������ ��Ϻ��� ���� ���Ͽ� ���������� ����ó���Ͽ� Ȱ�� �� �� �ֽ��ϴ�. 

 2. ����������ȣ�� ���� �����,������ ��å (���� �� �߰�)

  - ���͸�ũ�� ������ ��ȣ �˰����� �̿��Ͽ� ��Ʈ��ũ�󿡼� ���������� �����ϰ� �����ϰ�, �����ϰ� �ֽ��ϴ�. 

  - ��������ó���ý����� ���ӱ���� �����ϰ� ������, ���� �� ������ �����ϱ� ���� ��ġ�� �����ϰ� �ֽ��ϴ�. 

  - ���������� ������ġ�� �����ϱ� ���Ͽ� ���������� �߰������� �и� �����ϰ� ���ٱ����� �и� �� �����ϰ� �ֽ��ϴ�. 

 

 - ������ : 2020�� 12�� 02��', '20/12/02', 0);
 
 
insert into hospital_board values(hospital_board_num.nextval, 'notice0219.jfif', '�븮ó�� ���� �ȳ�', '', '20/12/02', 0);

insert into hospital_board values(hospital_board_num.nextval, '', '2020�� 12�� �Ƿ������ý��� �������� �ȳ�', '���� �Ƿ������ý��� ������ ������ ���� ����� �����Դϴ�.
  - �۾��Ͻ� -
   20�� 12�� 21��(��), ���� 01:00 ~ 03:00 (2�ð�)
�ش� �ð����� ���޽� �� ���� ������ ��Ȱ���� ���� �� �ֽ��ϴ�.
���� �̿뿡 ������ �ֽñ� �ٶ��ϴ�.', '20/12/20', 0);

insert into hospital_board values(hospital_board_num.nextval, '', '������ ���� ����ȸ', '���͸�ũ ������ ���� ����ȸ�� 2021�� 1�� 5�� ȭ���� 13�ÿ� 
���� ��Ʃ�� �������� ���� �� �����Դϴ�. 

  - ������� -
  
1. ��ü���� ����� �Ұ�

2. ������� ������ �������', '20/12/18', 0);
insert into hospital_board values(hospital_board_num.nextval, '', '12�� 26��, 2021�� 1�� 2�� ������� ���� ���� �ȳ�', '12�� 26���� ��ź�� ����, 2021�� 1�� 2���� ���� ���޷� �ܷ� ���Ḧ ���� �ʽ��ϴ�.

�̿뿡 �����Ͻñ� �ٶ��ϴ�.

�����մϴ�.', '20/12/23', 0);

insert into hospital_board values(hospital_board_num.nextval, '�ɰ��ܰ迡��_�ؼ��ؾ���_�ڷγ�19_�ൿ��Ģ.jpg', '�ɰ��ܰ迡�� �ؼ��ؾ��� �ڷγ�19 �ൿ��Ģ', '', sysdate, 0);

--insert into hospital_board values(hospital_board_num.nextval, '', '������ Dr_Link�� �����Խ����� ���µǾ����ϴ�7. ���� �̿��� �ּ���~', '7�̰��� ���� �̿��ϳĸ�... ��;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '������ Dr_Link�� �����Խ����� ���µǾ����ϴ�8. ���� �̿��� �ּ���~', '5�̰��� ���� �̿��ϳĸ�... ��;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '������ Dr_Link�� �����Խ����� ���µǾ����ϴ�9. ���� �̿��� �ּ���~', '6�̰��� ���� �̿��ϳĸ�... ��;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '������ Dr_Link�� �����Խ����� ���µǾ����ϴ�10. ���� �̿��� �ּ���~', '7�̰��� ���� �̿��ϳĸ�... ��;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '������ Dr_Link�� �����Խ����� ���µǾ����ϴ�11. ���� �̿��� �ּ���~', '5�̰��� ���� �̿��ϳĸ�... ��;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '������ Dr_Link�� �����Խ����� ���µǾ����ϴ�12. ���� �̿��� �ּ���~', '6�̰��� ���� �̿��ϳĸ�... ��;;..', sysdate, 0);




create table news_board (   -- �ǰ����� �Խ���
    news_board_num number(4) constraint news_board_num_pk primary key,
    news_url varchar2(60),
    news_photo varchar2(60),
    news_title varchar2(70),
    news_content varchar2(4000),
    news_regdate date default sysdate,
    watched number(4)
);



create sequence news_board_num  -- �ǰ����� ������
increment by 1
start with 1;

insert into news_board values ( news_board_num.nextval, '', 'ĸó.jpg', '''�� �����''�� ǥ���ϴ� ������ �˰� ���� ����', '������ ȯ���� 3�� �� 1���� �Բ� �޴� ������ �ִ�. �ٱٸ��������ı��̴�. �ٱٸ��������ı��� ������ ������ ����̳� �ùٸ��� ���� �ڼ�, ��Ʈ���� ������ ������ ���� ������(Trigger point)�� ����鼭 ������ �ʷ��ϴ� ��ȯ�̴�. ���� ǥ�� ������, �츮�� ���� ������ ����١��������� ���ƴ١� ������ ǥ���ϴ� ������ �ٷ� �ٱٸ��������ı��̴�.

�ٱٸ��������ı��� ���� �� ������ ����� ������ ��Ÿ���⵵ ������ �ټ���� � ���� ����, ���� ��ȭ �� �����Ű�� ������ ���ݵǴ� �� �ɰ��� ������ �����ϴ� ��찡 �ִ�. �� ����ȭ�ϸ� �Ϲ����� ġ�ῡ �������� ���� ���� �ִ�.

Ư�� �ٱٸ��������ı��� ����, �ٸ� �ӿ� ������ �����ϴ� ������, �� ���� �������� ����µ� �̸� �й��ϰ� �Ǹ� ���� ������ �����鼭 �ָ� ������ �������� �����̳� �̻� ������ ��Ÿ����. ���� �������� �ذ����� �ʰ� ��ġ�ϰ� �Ǹ� ���� �� ����(����ȭ)�� ����� �������� ���� �������� ������ ���� �� �ִ�.

��õ���𺴿� �����������а� ������ ������ ���ٱٸ��������ı��� ������ ������ ����̳� �ܻ�, �źϸ����ı��� ���� �ùٸ��� ���� �ڼ� ���� �ֿ� ���������� ���� �ٰ�ݰ� ��ȯ���� ���� ���������� �߻��ϱ⵵ �Ѵ١��� ���Ϲ����� �������� ���� �ʴ� ���� ������ ������ ��� ������ ã�� ���� ������ ġ�Ḧ �����ϴ� ���� ���١��� �����ߴ�. 

���� ������ ȣ���ϴ� ȯ���� 30~85%�� �ٱٸ��������ı��� �Բ� �ΰ� �ִ� ������ �˷��� �ִ�. ���� ���̴� ���� ���� 27~50�� ���̿��� �ַ� ��Ÿ����. ������ ������ ���ٱٸ��������ı��� ���������� ������ �˻糪 �������� �˻簡 ���� �����ϰ� �����ķ� ���� �������� ã�� ����� ���ߵǰ� ������ ���� ���ȭ���� �ʰ� �ִ١��� ������ Ȥ�� �ֻ� ġ�� ������ ���� �������� ���� �������� �߰��ϴ� ���� ������� ������ ���� ����̴١��� �ߴ�.

<���� �������� �๰ �����ϴ� �ֻ� ȿ����>
������ ����, ������, ����ġ��, �๰ġ�� ������ ���� ȣ���ȴ�. �ݸ� ����ȭ�� ��� ���� �������� ����ȭ�� �̵� ġ��δ� ġ�ᰡ ��ư� ���� ����Ѵ�. �̶� ���� ȿ������ ����� ���� ������ �ֻ��. ���� ������ �ֻ�� ���� �������� �๰�� ������ �ش� ������ ����ȭ�� ���� ��ȯ�� ���� �ϰ� ���� ���� ������ �����Ѵ�.

���� ��쿡�� ���� ������ �ֻ翡�� ������ ���� �� �ִ�. �̶��� �Ű� ġ�Ḧ ���� ������ �Ǽ�ȯ ���� �����ְ� ���� ��ȯ�� ���� ���� ������ ������ �氨���� �ֱ⵵ �Ѵ�.

�ٱٸ��������ı��� �����ϱ� ���ؼ��� �������� �ݺ��Ǵ� �뵿�̳� ������ ������� �̻����� �ø��� �۾� �����ſ� ������ ���� ��ų� ������ �� �ִ� ��Ȳ�� ���ϴ� ���� �߿��ϴ�. ������ ����ġ ���� ��� �۾� �� ���÷� ��Ʈ��Ī�� ���ְų� ��Ģ���� ��� �ϴ� ���� ����.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', '51266_51584_1733.jpg', '����ü�� ���� �� ��ó��', '�����Ӱ� �Ļ�ð��� ���� �� ���� �� ���ϰ� ������ ������ ü�� �� �ִ�. Ư�� ����ó�� �߿� ������ ����� ���� ������ �Ļ縦 �ϸ� ü�ϱ� ���� ���ǰ� �ʿ��ϴ�.

��ü�� ������ ������ ���ϰ� ���� �Դ� �ͻӸ� �ƴ϶� �ұ�Ģ�� �Ļ�, ¥�� �ʰ� �⸧�� ����, ��Ʈ���� ������ �پ��ϴ�.

���� ����ϰ� ������ �������� ��ü�� �ǽɽ����ٸ� �켱 ���ļ��븦 �����ϰ� ���� �� �� �ְ� �޽��� ������ �Ѵ�. ������ �ȴ� �� ����� ��� �ϰų�, ������ ���� �κ��� ���ڸ� ���հ������� �����ִ� �͵� ������ ü�⿡�� ������ �ȴ�.

�������� �� �Ǵ� �� ���� ���� �踦 �����ϰ� ���ִ� �͵� ����. Ư�� ���������� ���� �к� �����ϴ� ������ �־� ü���� �����µ� ������ �� �� �ִ�. ������ �������� ������ ������ �� ������ �԰� ü���� �� ȿ���� �� �� �ֱ� ������ �߿��� ������ ��ü���� ������ �ʴ°� ����.

��Ȥ ������ ���並 �ϸ� ����ϰ� ���� ���� �ո��ٰ� �����ϴ� ��찡 �ִµ� �̴� �߸��� ����̴�. ������ ���並 �ݺ��ϰ� �Ǹ� ������ �ĵ��� �ڱ��� ������ �ĵ����� ������ �� �ִ�.

��ü ����� �Բ� �߿�, ����, ���������� ������ �Ʒ��� �ٲ�ٸ� �ٸ� ��ȯ�� �� �־� ��� �������� �����Ѵ�.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', 'GettyImages-1178489847.jpg', '�쳻��, ���� ġ�ᰡ �߿��ؿ�!', '�쳻���̶� ���� ���� �����ϴ� �Ű�(�ýŰ�)�� ���� �̻��� ���� �þ� ����� ����� ��ȯ�̴�. �þ� ����̶� �� ���� ���Ҵ� ���� �� ���̴� ��ü �������� ������ �ʴ� �κ��� ����� ���� ���ϸ�, ����� ���ڱ� ���� �þ߰���� �޼����� �߻����� �ʴ� �� ���� �쳻��ó�� ������ �߻��ϴ� �þ߰���� �ڰ��ϱ� ��ƴ�.
 
�쳻���� ��ġ�� �� �Ǹ����� �̾����⵵ ��, Ȳ�ݺ���, �鳻��(�츮����� �索��������)�� �Բ� 3�� �Ǹ� ��ȯ���� ������.

�쳻���� �߻� ������ �پ��ϴ�. �Ⱦ�(���� �з�)�� ���� ��� ��Ⱦ����� ���� �ýŰ��� �й��� �޾� �þ߼ջ����� �̾�����. ����, �Ⱦ��� �����̾ �Ⱦ��� ���� ���� ���� ũ�ų�, �ٽ÷� ���� �ýŰ��� ������ �ְų�, �ýŰ� ���� ��ȯ�� �� �� �Ǵ� ���, Ȥ�� ������ �̻� ���� ������ �쳻���� ����⵵ �Ѵ�. �츮���� �쳻�� ȯ���� �� 80~90%�� �Ⱦ� ��ġ�� ������ ������Ⱦг쳻�塯�� �ΰ� �ִ�.
 
�׷��� ����Ⱦг쳻���� ������ ���߰��氢�쳻���� ��� �ʱ⿡ ������ �ڰ��ϴ� ���� �ſ� �����. �ʱ⿡�� �ֺ��� �þߺ��� �ջ��� ���۵ǰ� ������ �߽� �þ߱��� �����ϱ� �����̴�. �߽� �þߴ� ������� �����Ǳ⵵ �Ѵ�. ����, ���� �쳻���̶� �ϴ��� �þ߸� �������� �÷��� 1.0���� �����Ǵ� ��찡 ����Ͽ� ������ �þ߸� �ν����� ���Ͽ� �ڴʰ� ������ �޴� ��찡 ���ٰ� �Ѵ�. �츮���� ���ΰǰ��������� ������ ���ϸ� �쳻���������� 8%, �� �쳻�� ���� ���� ȯ�� 100�� �� 92���� �쳻���� �ִٴ� �� �𸣰� �־��ٰ� �Ѵ�.

������ �ѹ� �ջ�� �ýŰ��� �ٽ� ȸ������ �ʱ� ������ ���� ���ܰ� ġ�ᰡ �ſ� �߿��ϴ�. ������ ����� ����ų� ���� �Ѿ�����, ���� ���ο� �Ӹ��� �ε����ų� ���� �� ǥ���ǰ� ��ȣ���� �� ������ ���� ���� �쳻���� �ǽ��ϰ� �Ȱ� �����ǿ� �����ؾ� �Ѵ�. �������� ���������� �Ȱ� ������ �޾� ���ǰ��� Ȯ���ϴ� ���� �ʼ����̴�.
 
�쳻���� �ѹ� ���� ������ ��� ġ�Ḧ �޾ƾ� �ϹǷ� �����ϰ� ��Ȯ�ϰ� �����ؾ� �Ѵ�. Ư���� ���� �Ⱦ��� �쳻�� �ߺ��� �ֿ� �����̱� ������ �Ⱦа˻簡 �ʿ��ϸ�, �Ⱦ��� �����̴��� �쳻���� �� �����Ƿ� �ݵ�� �ýŰ�˻縦 �ؾ� �Ѵ�. ���� ������ �Ǵܿ� ���� ���Ⱥ� �˻�, �ýŰ� �� �����Ű漶���� �˻�, �þ� �˻�, OCT �˻� ���� ���������� �����Ͽ� ��Ȯ�ϰ� �쳻���� �����ϰ�, �쳻���� ������ ���� ���⿡ �˸��� ġ�� ����� �����ϴ� ���� ����. �쳻���� ������ ���� ���� �ӵ��� �޶�, �����쳻���� �Ϲ������� ������ ���������� �޼��쳻��, ��Ⱒ�쳻��, ������ó쳻��, �Ż������쳻�� ���� ����ӵ��� ���� ������ �˷��� �ִ�.

�쳻���� ��Ȯ�� ���ܹ��� �Ŀ��� �Ⱦ��� ����߸��� ���� �๰ ����� �ַ� ����Ѵ�. ��쿡 ���� �������� ������ ġ�Ḧ �����ϱ⵵ �Ѵ�. �Ⱦ� ���ߴ� ȿ���� ����ġ�ᰡ �๰�̳� �������� ���Ͽ� ���������, ����ġ�� �� �÷��� ����߸��� �պ����� ������ �־� �Ϲ������δ� �๰ġ�ᰡ �켱 �ȴ�.
 
������б� �ȾϺ��� �Ȱ� ������ ������ ���쳻���� �Ǹ� �̸� �� �ִ� �ֿ� �Ȱ� ��ȯ������ Ư���� ������� ���١��� ���ֱ����� ������ ���� ���⿡ �쳻���� �߰��ϰ� ġ�Ḧ �����ϴ� ���� ����μ��� �ּ��� ��ó���̴�. �� �ٽ�, 40���̻�, �索, ������, �쳻�� �������� �ִ� ��� �Ȱ� ������ ���Ḧ �޾� ġ�� �ʿ� ���ο� �˻� �ֱ⸦ ����ϴ� ���� ����. �쳻�� ġ��� �๰ġ�ᰡ �ָ� �̷����� �ֱٿ� ���� �쳻������� ������ ������ �ּ�ħ���쳻�����(MIGS) ������� ���ͼ� ����ġ�� ������ ���� ���ݾ� Ȯ��ǰ� �ִ�. �׷���, �� ����������� ��������� �־� �Ȱ� �����ǿ� �����ϴ� ���� �ʿ��ϴ�.���� �����ߴ�.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', '�쳻��.jpg', '[�ϻ� ����] ����� �ڸ� �쳻�� ���� Ŀ��', '��� �Ⱦ��� ���ٸ� å�� ����� ������ �ڰų� ������ ���� �ڴ� �ڼ��� ���Ͻñ� �ٶ��ϴ�. Ư�� ���� �ڼ��� �Ⱦ��� ���� �� �ִٰ� �մϴ�.

�Ⱦ��� �ȱ� ���� �з��� ���մϴ�. �Ⱦ��� ������ Ȳ�� ������ �索 ���������� �Բ� 3�� �Ǹ� ��ȯ ��� �ϳ��� �쳻���� �ߺ� ������ Ŀ���ϴ�. �쳻���� �ַ� �Ⱦ� ����� �ýŰ��� �ջ�Ǹ鼭 ��Ÿ���� ��ȯ�ε���. ���� �Ⱦ��� �ýŰ��� ���� �����߸��� �÷��� ����߸� �� �ֽ��ϴ�.

�Ⱦ��� ��Ȱ ������ ���� �޶����µ���. ���ֳ� ��, �Ľ���, ����� ������ ��ġ�� ���� �ڼ��͵� ������ �ֽ��ϴ�. ����� �ȾϺ��� �Ȱ� �������� ������ ������ ����� ����ʺ� ������ �Ӹ� ��ġ�� ô�� �߽ɺ��� �������鼭 �Ⱦ��� ����ϴ� ������ ��Ÿ�����ϴ�.

���帱 ������ �Ӹ��� �� �й��� �������� �ȱ��� ���� ���� �帧�� ������ ����鼭 �Ⱦ��� �������µ���. ���� �Ⱦ��� �����Ϸ��� �� ������ õ���� ���� �ȹٷ� ���� �ڴ� �� �����. �㸮�� ������ ��� ���� �Ʒ� ����� �ϳ� ���� ����ָ� �Ѱ� ��������ϴ�.

��¿ �� ���� ������ ���� �� ������ �ȹٷ� ���� ������ ��¦ ���� ������ ��� �Ӹ� ��ġ�� �������� �ʵ��� �ϰ��. ������ �� ������ å�� ���帮�⺸�� ���ڿ� �����̸� ��¦ ���̰� �ɾ� �񺣰��� ����� �Ӹ��� ���� ���ľ� �㸮�� ������ �� ���� �Ⱦ��� �������� �͵� ������ �� �ֽ��ϴ�.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, 'https://www.youtube.com/embed/S5cpsyIH8a4', '', '�ǰ��Խ���5', 'content ����', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', '12��_3��-���������̶�.png', '������ �ƴϴ�?������ �׳� ����ġ�� �� �Ǵ� �������� �ڰ����ܹ�', '���������� ������ 20%�� 1�⿡ �� �� �̻� ������ ������ ���� �����Դϴ�. �밳 ���������� ���� �����̶�� �����ϱ� ������ ������ ���������� ���� �� �ϳ��� ���Դϴ�.

���� ���� �������� �� ���� ����, �Ӹ��� ���������� �������� ���������� ������ �پ��� ��Ȯ�� ������ ����� ��찡 �����ϴ�. ���� ���������̶� �ɰ��� ��ȯ�� �ƴ� �� �ְ�, ������ ���������̶� ���߼� �Ű�� �̻�ó�� �����̳� ���� ġ�ᰡ �ʿ��� ��쵵 �־� ��Ȯ�� ���� ������ �߿��մϴ�.

���������� �����ϴ� ��ǥ�� ����� ��(���ʼ�), ��(���߼�), ����, �� ���� �ֽ��ϴ�. ���������� ���ο� ���� ũ�� ���ʼ� ��ȯ�� ���߼� ��ȯ���� �����մϴ�.

���ʼ� ������ȯ���� �̼���, �����Ű濰, �޴Ͽ�����, �̷ο�(���̿�), ������, �ܸ��� ���� ���� �ֽ��ϴ�. �޼� ȸ���� ���������� ȣ���ϴ� ȯ���� ��κ��� ���ʼ� ������ȯ����, ���߿����� �̼����� ���� ���մϴ�. �ӱͿ� ������ ���� ��� �������� �ܿ��� û�� ����, �̸�, ���� �游�� ���� ������ ������ �� �ֽ��ϴ�.

���߼� ���������ַ� ���������� �����ϴ� ��� ���������, �ҳ������� �����ų� ������ ������, ���������� ���, ô�ߵ��� �ڸ� ���� �� �ֽ��ϴ�. ���߼� ���ο� ���� ���������� �ż��� ġ�ᰡ �ʿ��մϴ�. ���߼� ���������� ���ʼ��� �޸� ����, �ǽ� ��ȭ, ��� ����, ���� ���� ���ϡ�����, �� ���� ���� ������ �����ϴ� ��찡 ���մϴ�. ���������� �Բ� �̷� ������ ��Ÿ���ٸ� ��� ���޽Ƿ� ���� �մϴ�.', sysdate, 0 );

insert into news_board values(news_board_num.nextval, '', '1218_�ܿ�ö����.jpg', '[�����ٰǰ�] �ܿ�ö ���� ���硯 ���', '�ľ�ó�� ������ �ѱ����� �Ϸ� ��� ��� ���뷮�� 61.4g����, õ�� ����� ����ִ� ���� 15.3g(24.9%)�� �����ϸ� ������� 11.1g(18.1%)���� ���� ���Ҵ�. ���ɺ��δ� û�ҳ��� ��� 69.6g���� ���� ���Ҵµ� ���� ������� ���� ���밡 14.3g(20.5%)�� 1���� �����ߴ�. �̷��� �츮�� �˰� �𸣰� ���Ḧ ���� ����� ���� �����ϰ� �ִ�. Ư���� �߿� �ܿ��̸� ���� ����޴� ������ ����鿡�� ���� ������ ����� �����ִ�.

�� ���� ���� ������� ����
���������� ī�� 4~6���� �ܿ�ö ���� ���ġ�� �����غ� ���, 1ȸ ������(�� 300~350ml) �� ��� �Է��� ������������ 55g���� ���� ���Ҵ�. �ľ�ó���� �����ϴ� 1�� ��� ���� ����ġ(100g ����)�� ������ �Ѵ� ���̴�. �������Ӹ� �ƴ϶� ����, �ڸ�, û�� �� ����û�� �̿��� ���ῡ�� �������� ���̱� ���� ���� ���� ������ ����. ������ �������δ� ������ ��� �Է��� ���Ҵ�. ��� 1�ܴ� ��� �Է��� 49g���� 3g¥�� ������ 16���� �Դ� ���̴�. ���ϲ���, ����, ���� ���� ������ ���߰� ������ ���� ��½�Ű�� ���� ���� ������ ���� ���ٴ� �� �������.

�� ������, �����󶼴� �ǰ��ϴ�?
�����ں��ٴ� ������, �����󶼰� �ǰ����� �� �� ���� ������ �����ȴ�. ������ ������ 1���� ��� �Է��� 36g, �����󶼴� 30g���� ������(46g)�� ���ؼ��� ������ ��� ������ 10�� �̻� �з��� ����ִ�. �ݸ� ī��󶼴� ��� 11g���� �̵鿡 ���� 3���� 1 �����̴�. ���� ���� ��ü���� ������ 200ml�� 9g���� ������ �־� ���� ���� �߰����� �ʾƵ� ������ �������� �������ش�. ������ ���� ���� �ʹٸ� �������� ������, �ε巴�� ���� �ʹٸ� ÷������ ������� ���� �󶼷� ������ ���� ��õ�Ѵ�.

�� ������, ��ƽ 1���� �־ ���
�ܿ�ö �α� ���� �� �ϳ��� �ٷ� ������������. ���������� ��Ÿ��B�� ǳ���� �����Ӹ� �ƴ϶� �پ��� �, �߰��� ���� �� ����� ���� �������� �ش�. ���߿� �ǸŵǴ� ������ ��ǰ���� ��ƽ 1��(18g)�� 1ȸ ���������� ���� ���� �� �� 90~100ml�� �������̴�. ��ƽ 1���� ��� �Է��� 6g���� ���� ��ȣ�ѵ� ���� ���� ���� 2~3���� �Ѳ����� Ÿ �Դ� ��찡 ����. �̷��� �Ǹ� �����ϴ� ����� Į�θ��� 2~3��� ��������. �������� ����� �̼�����, ����, ������ �� �������� ��� 1ȸ �������� ���� ������� �ؾ� �Ѵ�.', sysdate, 0);



create table news_repl (   -- �ǰ����� ���
    news_board_num number(4),
    news_reply_num number(4) constraint news_repl_pk primary key,
    patient_num number,
    doctor_num number,
    news_repl_comment varchar2(150),
    n_repl_date date default sysdate,
    n_comments_num number(4),
    

    constraint news_repl_board_num_fk foreign key(news_board_num)
    references news_board(news_board_num),
    
    constraint news_repl_patient_num_fk foreign key(patient_num)
    references dl_user(patient_num),
    
    constraint news_repl_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num)
);

create sequence news_board_repl_num  -- �ǰ����� ��� ������
increment by 1
start with 1;

create table ai_record (   -- ai ���� ���
    ai_recode_num number constraint ai_record_pk primary key,
    patient_num number,
    doctor_num number,
    dep_num number,
    ai_symptom varchar(20) not null,
    use_time date default sysdate, 
    symptom_photo varchar2(50) not null,
    constraint ai_record_patient_num_fk foreign key(patient_num)
    references dl_user(patient_num),
    constraint ai_record_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num),
    constraint ai_record_dep_num_fk foreign key(dep_num)
    references department(dep_num)
);

create sequence ai_record_seq  -- �����ı� ��� ������
increment by 1
start with 1;


--DB����
create table favorite_doctor(
   fav_num number primary key,
   patient_num number,
   doctor_num number,
   fav_date date default sysdate,
   fav_flag char(1) default '0'  -- 0:Ȱ�� , 1:��Ȱ��
);
--������ ����
create sequence fav_num_seq;

create table treat_repl (   -- �����ı� ���
    treat_repl_num number(4) constraint treat_num_pk primary key,
    treat_repl_comment varchar2(100) not null,
    treat_repl_regdate date default sysdate,
    treat_star number(1) not null,
    patient_num number,
    doctor_num number,
    constraint treat_repl_patient_num_fk foreign key(patient_num)
    references dl_user(patient_num),
    constraint treat_repl_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num)
);

create sequence treat_repl_num  -- �����ı� ��� ������
increment by 1
start with 1;

create table doc_review(    -- �����ı� ���� ���ƿ� �Ⱦ�� ��
   review_num number primary key,
   doctor_num number,
   patient_num number,
   review_content varchar2(500),
   review_rating number,
   review_date date default sysdate
);

create sequence doc_review_seq
increment by 1
start with 1;



insert into doc_review values(doc_review_seq.nextval,21,2,'���ƿ�',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,17,6,'�ٸ� ���� �ٳ��� �� �� ���� �� ������ ���⼭ ���� �ް� �ٷ� ���Ҿ��... �ְ�Ф�',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,14,9,'ģ���� ���� �����մϴ�',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,11,12,'ģ���ϰ� ����� ����޾Ҿ��',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,10,13,'ȭ���ε��� ��Ȯ�ؿ�!',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,9,14,'���� ��¥ ���Ͻô� ��',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,6,2,'ģ���� ���� �𸣴� �ǻ簰�ƿ�.
���� ��� �������� ����Ƽ �´µ��� ��� �� �żż� �ʹ� ��������. ��ȣ����� �׿� ���� �����ؿ�. �ʹ� �����ؼ� ��ģ��. ����� ��ο�',1,sysdate);
insert into doc_review values (doc_review_seq.nextval,4,4,'�����Դ�',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,3,5,'ȭ�� ������ �� ������',3,sysdate);
insert into doc_review values (doc_review_seq.nextval,4,9,'�����ؿ�~',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,5,10,'��¥ ��� ���Ͻó׿�..;;',1,sysdate);
insert into doc_review values (doc_review_seq.nextval,10,15,'�� �����ؿ�!',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,11,16,'�ʹ� ���մϴ�!',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,14,4,'����',5,sysdate);


create table chat_room (  -- ä�ù� ��ȣ
    room_num number(4) constraint room_num_pk primary key
);

create table chat_msg (   -- ä�ø޼���
    msg_num number(4) constraint msg_num_pk primary key,
    msg varchar2(100),
    msg_time date default sysdate,
    doctor_num number,
    chat_room_num number,
    constraint chat_msg_chat_room_num_fk foreign key(chat_room_num)
    references chat_room(room_num),
    constraint chat_msg_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num)
);



create table chat_room_join (  -- ������ ä�ù� ��ȣ
    join_room_num number,
    doctor_num number,
    constraint join_room_num_fk foreign key(join_room_num)
    references chat_room(room_num),
    constraint room_join_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num)
);



create table doctor_verify(
    d_verifynum varchar2(20)
);

insert into doctor_verify values('drlink123');



create table p_loginlog (
    lognum number(5) constraint p_loginlog_pk primary key,
    p_id varchar2(20),
    reip varchar2(30),
    uagent varchar2(160),
    status varchar2(10),
    sstime date default sysdate
);

create sequence p_loginlog_seq  -- �α��� �ΰ� ������
increment by 1
start with 1;


commit;

        
select object_name from user_objects where object_type = 'TABLE'; 


create table doctor_chat(
    chat_num number primary key,
    sender number,
    receiver number,
    msg varchar2(500),
    chat_date date default sysdate
);

create sequence chat_num_seq; 


create table ai_result(
   symptom varchar2(100) not null,
   symptom_result varchar2(1000)
);

insert into ai_result values('����ȥŹ','���� ȥŹ�� ������ ������ ���� ���¸� �ǹ��մϴ�. ������ �ַ� �Ʊ��� ����(�ݶ��)�� �̷���� ������, ������ ���� ���п� ���� ������ų �� �ֽ��ϴ�. �ð� ������ ������ ���� ����� �ð�ٴ��� �� ������ �ʵ��� ������ �ջ�ǰų� ��ȯ�� ���� �Ŀ��� ������ �Ұ� �Ǹ�, �̷� ���¸� ���� ȥŹ�̶�� �մϴ�.');
insert into ai_result values('�ٷ���','�������� �������� �������� ���� ����Ǯ ������ ������ ����� ���� ��ǥ���� �����̴�. �׳� �ξ �ð��� �����鼭 ������ ġ���� ������ ������ ���� �ʱ� �ܰ迡�� �Ȱ��� �湮���� �ʾƵ� ������.');
insert into ai_result values('�����̿�����','�ƺ����� �����̿������� 1988�� ��Ż���� �ƺ����� ���濡�� �̹� �� �������Լ� ó�� �߰ߵǸ� ���� ��ȯ����, ��� ���� �߽ɺο� �ܹ����� ħ���Ǹ� ȥŹ�� �߻��ϰ�, ���̰� �꿡 ���� ���� ȥŹ�� ������ �÷��� �����ϴ� �󿰻�ü �켺 ���� ��ȯ�Դϴ�.');
insert into ai_result values('�ḷ��','���ռ� �ḷ���� ���� ���� ���̳� ������ ǥ�鿡 �ִ� ������ ���� ��Ƽ� �ַ� �߻��մϴ�. ���ռ� �ḷ���� ���� ������ ���� ��� ���� ������ ������ �� ������, ������ ��(Ȳ�� �к�)�� ���� �� �ֽ��ϴ�. ���� ���տ� �����Ǹ� ��� ġ�Ḧ �޾ƾ� �մϴ�.');
insert into ai_result values('���� Ż��','����Ż������ ����� �������� ������ ��ȯ���� ��ü �α��� 2% �������� �߻��ϴ� ���� ���� Ż�� ��ȯ�Դϴ�. �밳�� �ѵ� ������ ������ Ż�� �������� ���� ��쿡�� ���� ������ ���ÿ� �߻��� �� �ְ� Ż�� ������ ���յǰ� ������ ��� �ܿ� �����̳� ������ ��ߵ� �ҽǵ� �� �ֽ��ϴ�.');
insert into ai_result values('M�� Ż��','�������� M��Ż�� ������ ������ �α��� ����� ���þ����� ������ �Ϳ������� �����Ѵ�. �Ϸ� ��ħ�� ���� ���� �Ӹ�ī���� �����⺸�ٴ� �ð��� �帧�� ���� ���������� ������ ����ȴ�.');
insert into ai_result values('������ Ż��','������ Ż������ �ַ� ���� �� �������� ����� ���þ����� ��� ���� �پ��� ������ ���ϸ� ��κ� ���Ӹ� ������ ��Ÿ���ϴ�.');