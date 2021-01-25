
 
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

create sequence dl_patient_num  -- 회원번호 시퀀스
increment by 1
start with 1;


--alter table dl_user add p_retire_date date default null;

insert into dl_user values (dl_patient_num.nextval, 'p_test1', '1111', '김민준','1', '9510271579526', '01000001111','48653','서울시 금천구 가산동 1','1동', 'asd123@naver.com','O+','p_img (1).jpg','160','54','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test2', '1111', '이서연','2', '9012302489567', '01000002222','52595','서울시 금천구 가산동 2','2동', 'asd345@naver.com','O-','p_img (2).jpg','160','50','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test3', '1111', '박도윤','1', '9703051657985', '01000003333','52553','서울시 금천구 가산동 3','3동', 'asd678@naver.com','A+','p_img (3).jpg','180','64','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test4', '1111', '나서윤','2', '9101052459870', '01000004444','52553','서울시 금천구 가산동 4','4동', 'asd910@naver.com','A-','p_img (4).jpg','180','60','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval, 'p_test5', '1111', '이예준','1', '8805171657892', '01000005555','52553','서울시 금천구 가산동 5','5동', 'asd111@naver.com','AB+','p_img (5).gif','170','64','0',sysdate,default);
insert into dl_user values (dl_patient_num.nextval,'p_test6','1111','김윤우','1','9405261562486','01045465412','06334','서울특별시 강남구 개포로109길 62',null,'p_test6@naver.com','O+','p_photo1.jpg','180','70','0',to_date('20/12/13', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test7','1111','김예나','2','8412072459842','01045465413','06334','서울특별시 강남구 개포로109길 62',null,'p_test7@naver.com','O+','p_photo2.jpg','160','55','0',to_date('20/12/14', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test8','1111','박지훈','1','9108141547850','01045465414','04209','서울특별시 마포구 마포대로14라길 10',null,'p_test8@naver.com','A-','p_photo3.jpg','165','60','0',to_date('20/12/15', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test9','1111','박민서','2','9405172657952','01045465415','07956','서울특별시 양천구 목동중앙남로16가길 16-11',null,'p_test9@naver.com','A+','p_photo4.jpg','170','65','0',to_date('20/12/16', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test10','1111','한정우','1','8501151265786','01045465416','02493','서울특별시 동대문구 서울시립대로29길 20-1',null,'p_test10@naver.com','AB+','p_photo5.jpg','170','65','1',to_date('20/12/17', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test11','1111','정윤아','2','8911142459853','01045465417','04209','서울특별시 마포구 마포대로14라길 10',null,'p_test11@naver.com','AB+','p_photo6.jpg','165','60','1',to_date('20/12/18', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test12','1111','이유찬','1','0012193657863','01045465418','06334','서울특별시 강남구 개포로109길 62',null,'p_test12@naver.com','B+','p_photo7.jpg','174','69','0',to_date('20/12/30', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test13','1111','권서하','2','1103173657803','01045465419','02493','서울특별시 동대문구 서울시립대로29길 20-1',null,'p_test13@naver.com','B+','p_photo8.jpg','166','61','1',to_date('20/12/31', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test14','1111','박주원','1','1103171657803','01045465420','04189','서울특별시 마포구 가양대로 114',null,'p_test14@naver.com','O+','p_photo9.jpg','175','65','1',to_date('21/01/01', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test15','1111','김시은','2','9710262845987','01045465421','04189','서울특별시 마포구 가양대로 114',null,'p_test15@naver.com','O+','p_photo10.jpg','168','63','0',to_date('21/01/02', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test16','1111','정은호','1','9510101579510','01045465422','06334','서울특별시 강남구 개포로109길 62',null,'p_test16@naver.com','A+','p_photo11.jpg','180','75','0',to_date('21/01/03', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test17','1111','강예서','2','6902102459875','01045465423','06334','서울특별시 강남구 개포로109길 62',null,'p_test17@naver.com','AB+','p_photo12.jpg','153','48','0',to_date('21/01/03', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test18','1111','한태윤','1','8001261268450','01045465424','04189','서울특별시 마포구 백범로37길 26',null,'p_test18@naver.com','A+','p_photo13.jpg','168','63','1',to_date('21/01/03', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test19','1111','김채은','2','9309172657853','01045465425','07952','서울특별시 양천구 목동중앙남로16길 43',null,'p_test19@naver.com','A+','p_photo14.jpg','159','54','1',to_date('21/01/04', 'YY/MM/DD'),default);
insert into dl_user values (dl_patient_num.nextval,'p_test20','1111','권현준','1','9612311579543','01045465426','02493','서울특별시 동대문구 서울시립대로29길 20-1',null,'p_test20@naver.com','AB+','p_photo15.jpg','178','73','1',to_date('21/01/04', 'YY/MM/DD'),default);


create table department (  -- 부서
    dep_num number(3) constraint dep_num_pk primary key,
    dep_name varchar(50)
);

create sequence dep_num_seq  -- 부서 시퀀스
increment by 10
start with 0
maxvalue 9999999
minvalue 0;


insert into department values( dep_num_seq.nextval, '안과');
insert into department values( dep_num_seq.nextval, '피부과');
insert into department values( dep_num_seq.nextval, '정신건강의학과');

commit;

--alter table dl_doctor add d_retire_date date default null;

create table dl_doctor (   -- 의사
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

create sequence doctor_num  -- 의사 시퀀스
increment by 1
start with 1;


insert into dl_doctor values (doctor_num.nextval,'doctor1','1111','이익준','1','1234561234567','01000001111  ','21429','인천광역시 부평구 동수로 4','406호','asd123@naver.com',10,'가톨릭대학교,의과대학,2015,연세대학교,의과대학,2018','부산성모안과병원 안과,전공의,2015,부산성모안과병원 망막,전임의,2018','안과전문의','1234','d_img (1).jpg',sysdate,'"최선"이란 말에 책임질 수 있는 의사','황반변성, 유리체질환, 당뇨망막병증, 망막박리, 백내장',default);
insert into dl_doctor values (doctor_num.nextval,'doctor2','1111','장겨울','2','1234561234567','01000002222  ','08317','서울특별시 구로구 벚꽃로 378','305호','asd345@naver.com',20,'서울대학교,의과대학 의학사,1993,서울대학교,의과대학원 의학석사,1997','서울대학교병원,임상강사,2001,서울대학교,의과대학 피부과학교실 교수,2017- 현재','피부과전문의','5678','d_img (2).jpg',sysdate,'내 몸같이, 내 가족같이 마음을 담아 진료합니다.','건선,여드름(여드름흉터),주사, 안면홍조',default);
insert into dl_doctor values (doctor_num.nextval,'doctor3','1111','종세혁','1','1234561234567','01000003333  ','30130','세종특별자치시 한누리대로 157','503호','asd678@naver.com',30,'경희대학과,의과대학 의학과,1995,경희대학교,의과대학원 의학박사,2001','경희대학교병원,정신건강의학과 전임의,2000,분당서울대학교병원,정신건강의학과 교수,2014-현재','정신건강의학과 전문의','9874','d_img (3).jpg',sysdate,'충분한 시간 이야기를 들으며 진료하고, 어떤 도움을 받을 수 있을지 함께 상의합니다.','소아,청소년 ADHD,틱,정서행동장애',default);
insert into dl_doctor values (doctor_num.nextval,'doctor4','1111','안정원','1','1234561234567','01000004444  ','04383','서울특별시 용산구 서빙고로 137',null,'asd945@naver.com',20,'서울대학교,의과대학 의학과,1997- 2001,서울대학교,의과대학 의학과 피부과학 전공(석사),2003- 2005','서울대학교병원,피부과 진료교수,2012,서울대학교,의과대학 부교수,2019- 현재','피부과전문의','9874','d_img (4).jpg',sysdate,'효과적이고 안전한 치료를 통해 환자가 더 행복해질 수 있도록 노력하겠습니다.',' 건선, 손발바닥농포증, 전신농포건선',default);
insert into dl_doctor values (doctor_num.nextval,'doctor5','1111','서우진','1','1234561234567','01000005555  ','03902','서울특별시 마포구 가양대로 117',null,'asd498@naver.com',30,'서울대학교,의학과,2006,서울대학교,의과대학 정신과학 박사,2013 ','서울대학교병원,정신건강의학과 전공의,2007,분당서울대학교병원,정신건강의학과 조교수,2018- 현재','정신건강의학과 전문의','9874','d_img (5).jpg',sysdate,'좋은 의사','신체증상장애,우울증,공황장애',default);
insert into dl_doctor values (doctor_num.nextval,'doctor6','1111','차은재','2','1234561234567','01000006666  ','04108','서울특별시 마포구 고산2길 17',null,'asd902@naver.com',20,'서울대학교,의과대학 의학과,2006,서울대학교,의과대학 피부과학 석사,2011','서울대학교병원,피부과 전공의,2007-2011,분당서울대학교병원,피부과 부교수,2020-현재','피부과전문의','9874','d_img (6).jpg',sysdate,'내 몸같이, 내 가족같이 마음을 담아 진료합니다.','탈모, 원형탈모, 피부종양, 흉터치료',default);
insert into dl_doctor values (doctor_num.nextval,'doctor7','1111','윤서정','2','8510142657841','01024997532','01035','서울특별시 강북구 삼양로107길 51',null,'doctor7@naver.com',10,'서울대학교,의과대학,1995','서울아산병원 안과,정교수,2003- 2018,서울아산병원 안과검사실,담당교수,현재','안과 전문의','25486','d_photo1.jpg',to_date('20/12/08', 'RRRR-MM-DD'),'믿고 찾아와서 편안하게 진료받을 수 있는 의사','라식,라섹',null);
--행 2
insert into dl_doctor values (doctor_num.nextval,'doctor8','1111','윤아름','2','8304252157963','01024997533','02810','서울특별시 성북구 종암로13가길 11-3',null,'doctor8@naver.com',10,'가톨릭대학교,의과대학,2000','서울아산병원,임상강사,2017- 2019','안과 전문의','18667','d_photo2.jpg',to_date('20/12/09', 'RRRR-MM-DD'),'풍부한 경험과 지식을 갖춘 의학박사','백내장 굴절술,',null);
--행 3
insert into dl_doctor values (doctor_num.nextval,'doctor9','1111','채송화','2','8006302159745','01024997534','04309','서울특별시 용산구 청파로47길 62',null,'doctor9@naver.com',10,'가톨릭대학교,의과대학,1998,가톨릭중앙의료원,안과 전공의,2002','강남새빛안과,원장,2005,가톨릭의과대학 중앙의료원,외래교수,2006- 2018','안과 전문의','18668','d_photo3.jpg',to_date('20/12/20', 'RRRR-MM-DD'),'환자 맞춤 진료로 최상의 결과를 추구합니다.','렌즈삽입술, 각막염',null);
--행 4
insert into dl_doctor values (doctor_num.nextval,'doctor10','1111','장홍도','1','9209111657481','01024997535','01035','서울특별시 강북구 삼양로107길 51',null,'doctor10@naver.com',10,'가톨릭대학교,의과대학,2000,가톨릭중앙의료원,안과 전공의,2005','대치성모수안과,원장,2005,한국외안부학회,정회원,2006- 2019','안과 전문의','25489','d_photo4.jpg',to_date('20/12/21', 'RRRR-MM-DD'),'정교한 실력과 안전을 위해 노력합니다.','스마일라섹',null);
--행 5
insert into dl_doctor values (doctor_num.nextval,'doctor11','1111','용석민','1','8507131649213','01024997536','02810','서울특별시 성북구 종암로13가길 11-3',null,'doctor11@naver.com',20,'한양대학교,의과대학,2001,한양대학교,대학원 의학과,2005','을지대학교 을지병원,부교수,2008,을지대학교의료원 의료원전산처,부처장,2013','피부과 전문의','18665','d_photo5.jpg',to_date('21/01/02', 'RRRR-MM-DD'),'찾아오시는 모든 분들의 건강과 행복한 삶을 희망합니다.','여드름, 미용, 피부일반질환',null);
--행 6
insert into dl_doctor values (doctor_num.nextval,'doctor12','1111','추민하','2','9009112657481','01024997537','04309','서울특별시 용산구 청파로47길 62',null,'doctor12@naver.com',20,'중앙대학교,의과대학,2001,중앙대학교,대학원 의학과,2006','중앙대학교 을지병원,부교수,2008,중앙대학교의료원 의료원전산처,부처장,2014','피부과 전문의','18666','d_photo6.jpg',to_date('21/01/03', 'RRRR-MM-DD'),'환자의 어려움을 나의 어려움으로 생각하고 해결하자 - 역지사지','아토피피부염, 탈모, 백반증, 건선',null);
--행 7
insert into dl_doctor values (doctor_num.nextval,'doctor13','1111','허선빈','2','8911032015480','01024997538','03394','서울특별시 은평구 서오릉로10길 5-1?',null,'doctor13@naver.com',30,'충북대학교,의과대학,1997','충북대학교병원 신경정신과,전공의,2002,서울대학교병원 신경정신과,임상강사,2005','신경정신과 전문의','14117','d_photo7.jpg',to_date('21/01/03', 'RRRR-MM-DD'),'가족처럼 정성을 다해 진료하겠습니다.','치매, 노인성 정신질환',null);
--행 8
insert into dl_doctor values (doctor_num.nextval,'doctor14','1111','안치홍','1','8606021954359','01024997539','03394','서울특별시 은평구 서오릉로10길 5-1?',null,'doctor14@naver.com',30,'전남대학교,의과대학,2000,서울대학교 보건대학원,보건학,2004','서울아산병원 정신건강의학과,전공의,2005,서울대학교병원 어린이병원,임상강사,2008','정신건강의학과 전문의','10705','d_photo8.jpg',to_date('21/01/04', 'RRRR-MM-DD'),'진인사대천명','수면장애, 스트레스/불안 장애, 기분장애(우울증/조울증)',null);
--행 9
insert into dl_doctor values (doctor_num.nextval,'doctor15','1111','배준희','2','9101302068452','01024997540','01035','서울특별시 강북구 삼양로107길 51',null,'doctor15@naver.com',30,'서울의대,졸업,2003,서울의대,정신과학 박사,2006','서울대병원 정신과,전공의,2008,미국 펜실바니아 의대 신경정신과 유전학,연구전임의,2010','정신건강의학과 전문의','18669','d_photo9.jpg',to_date('21/01/04', 'RRRR-MM-DD'),'환자분의 입장에서 생각하고 건강과 행복을 찾을 수 있도록 최선을 다하겠습니다','정신분열병, 불안장애, 기분장애(우울증/조울증)',null);


create table appointment(    -- 예약
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

create sequence appointment_num  -- 예약 시퀀스
increment by 1
start with 1;

insert into appointment values (appointment_num.nextval,21,2,10,'2020-12-26','9:30 오전',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 2
insert into appointment values (appointment_num.nextval,20,3,20,'2020-12-26','10:30 오전',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 3
insert into appointment values (appointment_num.nextval,19,4,30,'2020-12-26','11:30 오전',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 4
insert into appointment values (appointment_num.nextval,18,5,20,'2020-12-26','12:30 오후',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 5
insert into appointment values (appointment_num.nextval,17,6,30,'2020-12-26','1:30 오후',to_date('2020/12/21', 'RRRR-MM-DD'));
--행 6
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,7,20,'2020-12-27','9:30 오전',to_date('2020/12/21', 'RRRR-MM-DD'));
--행 7
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,8,10,'2020/12/27','10:30 오전',to_date('2020/12/21', 'RRRR-MM-DD'));
--행 8
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,9,10,'2020/12/27','11:30 오전',to_date('2020/12/21', 'RRRR-MM-DD'));
--행 9
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,10,10,'2020/12/27','12:30 오후',to_date('2020/12/21', 'RRRR-MM-DD'));
--행 10
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,11,10,'2020/12/27','1:30 오후',to_date('2020/12/21', 'RRRR-MM-DD'));
--행 11
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,12,20,'2020/12/27','2:30 오후',to_date('2020/12/22', 'RRRR-MM-DD'));
--행 12
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,13,20,'2020/12/28','9:30 오전',to_date('2020/12/23', 'RRRR-MM-DD'));
--행 13
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,14,30,'2020/12/28','10:30 오전',to_date('2020/12/24', 'RRRR-MM-DD'));
--행 14
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,15,30,'2020/12/28','11:30 오전',to_date('2020/12/24', 'RRRR-MM-DD'));
--행 15
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,16,30,'2020/12/28','12:30 오후',to_date('2020/12/24', 'RRRR-MM-DD'));
--행 16
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,2,10,'2020/12/29','9:30 오전',to_date('2020/12/25', 'RRRR-MM-DD'));
--행 17
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,3,20,'2020/12/29','10:30 오전',to_date('2020/12/26', 'RRRR-MM-DD'));
--행 18
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,4,30,'2020/12/29','11:30 오전',to_date('2020/12/27', 'RRRR-MM-DD'));
--행 19
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,5,20,'2020/12/30','9:30 오전',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 20
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,6,30,'2020/12/30','10:30 오전',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 21
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,7,20,'2020/12/30','11:30 오전',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 22
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,8,10,'2020/12/30','12:30 오후',to_date('2020/12/20', 'RRRR-MM-DD'));
--행 23
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,9,10,'2020/12/30','1:30 오후',to_date('2020/12/21', 'RRRR-MM-DD'));
--행 24
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,10,10,'2021/01/04','9:30 오전',to_date('2020/12/30', 'RRRR-MM-DD'));
--행 25
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,11,10,'2021/01/04','10:30 오전',to_date('2020/12/30', 'RRRR-MM-DD'));
--행 26
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,12,20,'2021/01/04','11:30 오전',to_date('2020/12/30', 'RRRR-MM-DD'));
--행 27
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,13,20,'2021/01/04','12:30 오후',to_date('2020/12/30', 'RRRR-MM-DD'));
--행 28
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,14,30,'2021/01/04','1:30 오후',to_date('2020/12/31', 'RRRR-MM-DD'));
--행 29
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,15,30,'2021/01/04','2:30 오후',to_date('2021/01/01', 'RRRR-MM-DD'));
--행 30
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,16,30,'2021/01/04','3:30 오후',to_date('2021/01/02', 'RRRR-MM-DD'));
--행 31
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,2,10,'2021/01/05','3:30 오후',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 32
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,3,20,'2021/01/05','4:30 오후',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 33
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,4,30,'2021/01/05','5:30 오후',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 34
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,5,20,'2021/01/06','9:30 오전',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 35
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,6,30,'2021/01/06','10:30 오전',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 36
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,17,7,20,'2021/01/06','11:30 오전',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 37
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,18,8,10,'2021/01/06','12:30 오후',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 38
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,19,9,10,'2021/01/06','1:30 오후',to_date('2021/01/03', 'RRRR-MM-DD'));
--행 39
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,20,10,10,'2021/01/06','2:30 오후',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 40
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,21,11,10,'2021/01/06','3:30 오후',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 41
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,18,12,20,'2021/01/06','4:30 오후',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 42
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,13,20,'2021/01/07','9:30 오전',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 43
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,21,14,30,'2021/01/07','10:30 오전',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 44
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,15,30,'2021/01/07','11:30 오전',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 45
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,16,30,'2021/01/07','12:30 오후',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 46
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,2,10,'2021/01/07','1:30 오후',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 47
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,3,20,'2021/01/07','2:30 오후',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 48
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,20,4,30,'2021/01/07','3:30 오후',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 49
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,5,20,'2021/01/07','4:30 오후',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 50
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,6,30,'2021/01/08','11:30 오전',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 51
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,7,20,'2021/01/08','12:30 오후',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 52
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,8,10,'2021/01/08','1:30 오후',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 53
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,9,10,'2021/01/08','2:30 오후',to_date('2021/01/04', 'RRRR-MM-DD'));
--행 54
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,10,10,'2021/01/11','9:30 오전',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 55
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,11,10,'2021/01/11','10:30 오전',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 56
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,12,20,'2021/01/11','11:30 오전',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 57
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,13,20,'2021/01/11','12:30 오후',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 58
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,17,14,30,'2021/01/11','1:30 오후',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 59
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,15,30,'2021/01/11','2:30 오후',to_date('2021/01/05', 'RRRR-MM-DD'));
--행 60
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,19,16,30,'2021/01/12','9:30 오전',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 61
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,13,2,10,'2021/01/12','10:30 오전',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 62
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,15,3,20,'2021/01/12','11:30 오전',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 63
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,14,4,30,'2021/01/12','12:30 오후',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 64
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,18,5,20,'2021/01/12','1:30 오후',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 65
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,19,6,30,'2021/01/12','2:30 오후',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 66
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,8,7,20,'2021/01/12','3:30 오후',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 67
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,11,8,10,'2021/01/14','9:30 오전',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 68
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,6,9,10,'2021/01/14','10:30 오전',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 69
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,12,10,10,'2021/01/14','11:30 오전',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 70
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,3,11,10,'2021/01/14','12:30 오후',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 71
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,5,12,20,'2021/01/14','1:30 오후',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 72
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,9,13,20,'2021/01/14','2:30 오후',to_date('2021/01/06', 'RRRR-MM-DD'));
--행 73
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,20,14,30,'2021/01/14','3:30 오후',to_date('2021/01/07', 'RRRR-MM-DD'));
--행 74
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,10,15,30,'2021/01/14','4:30 오후',to_date('2021/01/07', 'RRRR-MM-DD'));
--행 75
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,7,16,30,'2021/01/14','5:30 오후',to_date('2021/01/07', 'RRRR-MM-DD'));
--행 76
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,17,2,10,'2021/01/15','9:30 오전',to_date('2021/01/07', 'RRRR-MM-DD'));
--행 77
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,2,3,20,'2021/01/15','10:30 오전',to_date('2021/01/07', 'RRRR-MM-DD'));
--행 78
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,21,4,30,'2021/01/15','11:30 오전',to_date('2021/01/08', 'RRRR-MM-DD'));
--행 79
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,4,5,20,'2021/01/15','12:30 오후',to_date('2021/01/08', 'RRRR-MM-DD'));
--행 80
insert into appointment (appointment_num, patient_num, doctor_num, dep_num, appointment_date, appointment_time, reg_date) values (appointment_num.nextval,16,6,30,'2021/01/15','1:30 오후',to_date('2021/01/08', 'RRRR-MM-DD'));



create table treatment_record (   -- 진료 기록
    treatment_num number(5) constraint treatment_num_pk primary key,
    patient_num number,
    doctor_num number,
    dep_num number,
    appointment_num number,  -- 예약번호 fk 추가
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

create sequence treatment_num  -- 진료 기록 시퀀스
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


create table prescription (     -- 처방전
    prescription_num number(4) constraint prescription_num_pk primary key,
    patient_num number,
    doctor_num number,
    medicine_num varchar2(20), -- REFERENCES treatment_record (start_treatment_time)
    payment_check char(1) default '0',
    treatment_num number,
    dosage varchar2(20), --투여량
    quantity varchar2(20), --횟수
    taking_date varchar2(20), --일수
    prescription_date date default sysdate,
    price number(7),
    
    constraint prescription_treatment_num_fk foreign key(treatment_num)
    references treatment_record (treatment_num),
    constraint prescription_patient_num_fk foreign key(patient_num)
    references dl_user(patient_num),
    constraint prescription_doctor_num_fk foreign key(doctor_num)
    references dl_doctor(doctor_num)
);

create sequence prescription_num  -- 처방전 시퀀스
increment by 1
start with 100;

insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,21,2,'10','0',101,'2,2','2,3','2,4',to_date('20/12/26', 'RRRR-MM-DD'),4300);
--행 2
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,20,3,'20','0',102,'2,2,2','2,2,3','2,2,4',to_date('20/12/26', 'RRRR-MM-DD'),5000);
--행 3
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,19,4,'30','1',103,'1,1','1,2','1,3',to_date('20/12/26', 'RRRR-MM-DD'),3200);
--행 4
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,18,5,'20','0',104,'1,1,1','1,1,2','1,1,3',to_date('20/12/26', 'RRRR-MM-DD'),6100);
--행 5
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,17,6,'30','0',105,'2,2','2,3','2,4',to_date('20/12/26', 'RRRR-MM-DD'),4200);
--행 6
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,16,7,'20','0',106,'2,2,2','2,2,3','2,2,4',to_date('20/12/26', 'RRRR-MM-DD'),6500);
--행 7
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,15,8,'10','0',107,'1,1,1','1,1,1','1,1,1',to_date('20/12/26', 'RRRR-MM-DD'),6100);
--행 8
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,14,9,'10','0',108,'1,1,1','1,1,1','1,1,1',to_date('20/12/27', 'RRRR-MM-DD'),5800);
--행 9
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,13,10,'10','1',109,'2,2','2,3','2,4',to_date('20/12/27', 'RRRR-MM-DD'),4200);
--행 10
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,12,11,'10','0',110,'1,1,1','1,1,2','1,1,3',to_date('20/12/27', 'RRRR-MM-DD'),5600);
--행 11
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,11,12,'20','0',111,'2,2','2,3','2,4',to_date('20/12/27', 'RRRR-MM-DD'),4550);
--행 12
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,10,13,'20','1',112,'2,2,2','2,2,3','2,2,4',to_date('20/12/27', 'RRRR-MM-DD'),8450);
--행 13
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,9,14,'30','1',113,'1,1','1,2','1,3',to_date('20/12/27', 'RRRR-MM-DD'),4500);
--행 14
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,8,15,'30','0',114,'1,1,1','1,1,2','1,1,3',to_date('20/12/28', 'RRRR-MM-DD'),7540);
--행 15
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,7,16,'30','0',115,'2,2,2','2,2,3','2,2,4',to_date('20/12/28', 'RRRR-MM-DD'),7541);
--행 16
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,6,2,'10','0',116,'1,1','1,2','1,3',to_date('20/12/28', 'RRRR-MM-DD'),4550);
--행 17
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,5,3,'20','1',117,'1,1,1','1,1,2','1,1,3',to_date('20/12/28', 'RRRR-MM-DD'),8100);
--행 18
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,4,4,'30','1',118,'1,1','1,2','1,3',to_date('20/12/29', 'RRRR-MM-DD'),4500);
--행 19
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,3,5,'20','0',119,'1,1,1','1,1,1','1,1,1',to_date('20/12/30', 'RRRR-MM-DD'),6500);
--행 20
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,2,6,'30','0',120,'2,2','2,3','2,4',to_date('20/12/30', 'RRRR-MM-DD'),6540);
--행 21
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,2,7,'20','0',121,'2,2,2','2,2,3','2,2,4',to_date('20/12/30', 'RRRR-MM-DD'),7600);
--행 22
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,3,8,'10','0',122,'1,1','1,2','1,3',to_date('20/12/30', 'RRRR-MM-DD'),3800);
--행 23
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,4,9,'10','0',123,'2,2','2,3','2,4',to_date('20/12/30', 'RRRR-MM-DD'),3950);
--행 24
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,5,10,'10','1',124,'2,2,2','2,2,3','2,2,4',to_date('21/01/04', 'RRRR-MM-DD'),7450);
--행 25
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,6,11,'10','1',125,'1,1','1,2','1,3',to_date('21/01/04', 'RRRR-MM-DD'),6500);
--행 26
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,7,12,'20','0',126,'1,1,1','1,1,2','1,1,3',to_date('21/01/04', 'RRRR-MM-DD'),6500);
--행 27
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,8,13,'20','0',127,'2,2','2,3','2,4',to_date('21/01/04', 'RRRR-MM-DD'),6540);
--행 28
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,9,14,'30','0',128,'2,2,2','2,2,3','2,2,4',to_date('21/01/04', 'RRRR-MM-DD'),7600);
--행 29
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,10,15,'30','0',129,'1,1,1','1,1,1','1,1,1',to_date('21/01/04', 'RRRR-MM-DD'),3800);
--행 30
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,11,16,'30','1',130,'1,1,1','1,1,1','1,1,1',to_date('21/01/04', 'RRRR-MM-DD'),5800);
--행 31
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,12,2,'10','0',131,'2,2','2,3','2,4',to_date('21/01/05', 'RRRR-MM-DD'),4200);
--행 32
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,13,3,'20','0',132,'1,1,1','1,1,2','1,1,3',to_date('21/01/05', 'RRRR-MM-DD'),5600);
--행 33
insert into prescription (prescription_num, patient_num, doctor_num, medicine_num, payment_check, treatment_num, dosage, quantity, taking_date, prescription_date, price) values (prescription_num.nextval,14,4,'30','1',133,'2,2','2,3','2,4',to_date('21/01/05', 'RRRR-MM-DD'),4550);




--insert into prescription(prescription_num, patient_num,doctor_num,medicine_num,payment_check,treatment_num,dosage,quantity,taking_date,prescription_date,price) 
--values(prescription_num.nextval, (select patient_num from treatment_record where treatment_num = 101),
-- (select doctor_num from treatment_record where treatment_num = 101),
--  '2,3',default,101,'2,2','2,2','2,2', sysdate ,12000);
--  

create table medicine (  -- 약 정보
    medicine_num varchar2(100) constraint medicine_num_pk primary key,
    medicine_name varchar2(100) not null,
    medicine_detail varchar2(1000),
    medicine_taking varchar2(1000),
    medicine_warning varchar2(1000),
    constraint uk_info unique(medicine_name)
);

create sequence medicine_num  -- 약 번호 시퀀스
increment by 1
start with 1;

insert into medicine values (medicine_num.nextval,'포크랄시럽(포수클로랄)_(9.5g/95mL)','무색 혹은 미황색의 투명한 시럽제','포수클로랄로서 0.5 ∼ 1 g을 취침 15 ∼ 30분 전 또는 수술 30분 전에 경구투여한다.','"중증의 아나필락시스 반응');

insert into medicine values (medicine_num.nextval,'포크랄시럽(포수클로랄)_(1g/10mL)','무색 혹은 미황색의 투명한 시럽제','포수클로랄로서 0.5 ∼ 1 g을 취침 15 ∼ 30분 전 또는 수술 30분 전에 경구투여한다.','"중증의 아나필락시스 반응');


insert into medicine values (medicine_num.nextval,'포크랄시럽(포수클로랄)_(0.5g/5mL)','무색 혹은 미황색의 투명한 시럽제','포수클로랄로서 0.5 ∼ 1 g을 취침 15 ∼ 30분 전 또는 수술 30분 전에 경구투여한다.','"중증의 아나필락시스 반응');

insert into medicine values (medicine_num.nextval,'독세정3밀리그램(독세핀염산염)_(3.39mg/1정)','흰색의 타원형 정제','이 약의 권장용량은 1일 1회 6mg이며, 환자의 경우 의사의 처방에 따라 1일 1회 3mg이 적절할 수 있다.','"자살 위험 및 우울증의 악화');


insert into medicine values(medicine_num.nextval,'가티플로점안액(가티플록사신수화물)','본제에 감수성이 있는 다음의 균종에 의한 세균성 결막염, 검판선염, 각막염(각막궤양 포함)의 치료, 안과수술시 무균화요법

포도상구균속, 연쇄상구균속, 폐렴구균, 장구균속, 코리네박테리움속, 모락셀라(브란하멜라)-카타랄리스, 시트로박터-프룬디, 크렙시엘라-뉴모니아에, 세라치아속, 모르가넬라-모르가니, 인플루엔자균, 슈도모나스속, 녹농균, 스핑고모나스-파우치모빌리스, 스테노트로포모나스(크산토모나스)-말토필리아, 아시네토박터속, 아크네균','세균성 결막염, 검판선염, 각막염(각막궤양 포함) : 통상 1회 1방울 1일 3회 점안 (적절히 증감)한다.',' 이 약은 점안용 이외의 목적으로 사용할 수 없으며, 결막하로 주사하거나, 안구의 전방(anterior chamber)에 직접 주입하지 말아야 한다.');

insert into medicine values(medicine_num.nextval,'겔백플러스주(히알우론산나트륨)','위아래가 고무마개로 막힌 유리관(프리필드시린지 시스템의 일부분)속에 들어있는 무색투명한 점조성이 있는 액',' 섬유주 절제술동안 전방용량을 보충하고 유지하기 위해 이 약을 각막천자를 통해 주입한다.',' 이 약 성분 및 단백질계 약물에 과민증의 병력이 있는 환자');
insert into medicine values(medicine_num.nextval,'겐지스톤크림','흰색의 크림제',' 1일 1～3회 환부에 적당량을 바른다.','1. 다음과 같은 사람은 이 약을 사용하지 말 것.

1) 세균(결핵, 매독 등)ㆍ진균(칸디다증, 백선 등)ㆍ스피로헤타속ㆍ효모ㆍ바이러스(대상포진, 단순포진, 수두, 종두증 등)ㆍ동물(옴, 사면발이 등)성 피부감염증 환자(증상이 악화될 수 있다)

2) 이 약 또는 이 약 성분에 과민증 및 그 병력이 있는 환자

3) 고막천공이 있는 습진성 외이도염 환자(천공부위의 치유지연이 나타날 수 있다.)

4) 궤양(베체트병 제외), 제2도 심재성 이상의 화상ㆍ동상 환자(피부재생이 억제되어 치유가 지연될 수 있다)

5) 입주위피부염, 보통여드름, 주사(rosacea) 환자

6) 스트렙토마이신, 카나마이신, 겐타마이신, 네오마이신 등 아미노글리코사이드계 항생물질 또는 바시트라신에 의한 과민증 및 그 병력이 있는 환자 (아미노글리코사이드계 항생물질사이에는 교차 알레르기유발성이 입증되었다)');








create table payment_record (   -- 결제내역
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

create sequence pay_record_num -- 결제내역 시퀀스
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

create table hospital_board (   -- 병원공지 게시판
    hospital_board_num number(4) constraint hospital_num_pk primary key,
    hospital_photo varchar2(60),
    hospital_title varchar2(100),
    hospital_content varchar2(3000),
    hospital_regdate date default sysdate,
    h_watched number(4)
);

create sequence hospital_board_num  -- 병원 공지사항 시퀀스
increment by 1
start with 1;

set define off;

insert into hospital_board values(hospital_board_num.nextval, '', '개인정보처리방침 개정 공지', '■ 개인정보처리방침

닥터링크 개인정보처리 방침 중 "가명정보의 처리" 항목과  "개인정보보호를 위한 기술적,관리적 대책"  내용이 추가되어 안내드립니다.

 

■ 추가 내용

 1. 가명정보의 처리 (신규 추가)

  가명정보의 처리 : 닥터링크는 통계 작성, 과학적 연구, 공익적 기록보존 등을 위하여 개인정보를 가명처리하여 활용 할 수 있습니다. 

 2. 개인정보보호를 위한 기술적,관리적 대책 (수정 및 추가)

  - 닥터링크는 안전한 암호 알고리즘을 이용하여 네트워크상에서 개인정보를 안전하게 전송하고, 저장하고 있습니다. 

  - 개인정보처리시스템의 접속기록을 보관하고 있으며, 위조 및 변조를 방지하기 위한 조치를 적용하고 있습니다. 

  - 가명정보의 안전조치를 적용하기 위하여 가명정보와 추가정보를 분리 보관하고 접근권한을 분리 및 제한하고 있습니다. 

 

 - 시행일 : 2020년 12월 02일', '20/12/02', 0);
 
 
insert into hospital_board values(hospital_board_num.nextval, 'notice0219.jfif', '대리처방 절차 안내', '', '20/12/02', 0);

insert into hospital_board values(hospital_board_num.nextval, '', '2020년 12월 의료정보시스템 정기점검 안내', '병원 의료정보시스템 점검이 다음과 같이 진행될 예정입니다.
  - 작업일시 -
   20년 12월 21일(토), 새벽 01:00 ~ 03:00 (2시간)
해당 시간에는 응급실 등 병원 업무가 원활하지 않을 수 있습니다.
병원 이용에 참고해 주시기 바랍니다.', '20/12/20', 0);

insert into hospital_board values(hospital_board_num.nextval, '', '전공의 모집 설명회', '닥터링크 전공의 모집 설명회가 2021년 1월 5일 화요일 13시에 
공식 유튜브 계정에서 진행 될 예정입니다. 

  - 진행순서 -
  
1. 자체선발 진료과 소개

2. 진료과별 오픈톡 개별상담', '20/12/18', 0);
insert into hospital_board values(hospital_board_num.nextval, '', '12월 26일, 2021년 1월 2일 토요진료 병원 휴진 안내', '12월 26일은 성탄절 연휴, 2021년 1월 2일은 신정 연휴로 외래 진료를 하지 않습니다.

이용에 참고하시기 바랍니다.

감사합니다.', '20/12/23', 0);

insert into hospital_board values(hospital_board_num.nextval, '심각단계에서_준수해야할_코로나19_행동수칙.jpg', '심각단계에서 준수해야할 코로나19 행동수칙', '', sysdate, 0);

--insert into hospital_board values(hospital_board_num.nextval, '', '여러분 Dr_Link의 병원게시판이 오픈되었습니다7. 많이 이용해 주세요~', '7이것을 누가 이용하냐면... 열;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '여러분 Dr_Link의 병원게시판이 오픈되었습니다8. 많이 이용해 주세요~', '5이것을 누가 이용하냐면... 열;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '여러분 Dr_Link의 병원게시판이 오픈되었습니다9. 많이 이용해 주세요~', '6이것을 누가 이용하냐면... 열;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '여러분 Dr_Link의 병원게시판이 오픈되었습니다10. 많이 이용해 주세요~', '7이것을 누가 이용하냐면... 열;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '여러분 Dr_Link의 병원게시판이 오픈되었습니다11. 많이 이용해 주세요~', '5이것을 누가 이용하냐면... 열;;..', sysdate, 0);
--insert into hospital_board values(hospital_board_num.nextval, '', '여러분 Dr_Link의 병원게시판이 오픈되었습니다12. 많이 이용해 주세요~', '6이것을 누가 이용하냐면... 열;;..', sysdate, 0);




create table news_board (   -- 건강정보 게시판
    news_board_num number(4) constraint news_board_num_pk primary key,
    news_url varchar2(60),
    news_photo varchar2(60),
    news_title varchar2(70),
    news_content varchar2(4000),
    news_regdate date default sysdate,
    watched number(4)
);



create sequence news_board_num  -- 건강정보 시퀀스
increment by 1
start with 1;

insert into news_board values ( news_board_num.nextval, '', '캡처.jpg', '''담 들었다''고 표현하는 통증도 알고 보면 질병', '근육통 환자의 3명 중 1명이 함께 겪는 질병이 있다. 근근막통증증후군이다. 근근막통증증후군은 근육의 과도한 사용이나 올바르지 못한 자세, 스트레스 등으로 근육에 통증 유발점(Trigger point)이 생기면서 통증을 초래하는 질환이다. 낯선 표현 같지만, 우리가 흔히 ‘담이 들었다’‘근육이 뭉쳤다’ 등으로 표현하는 통증이 바로 근근막통증증후군이다.

근근막통증증후군은 담이 든 정도로 경미한 통증만 나타나기도 하지만 근수축과 운동 범위 감소, 근육 약화 및 자율신경계 증상이 동반되는 등 심각한 통증을 유발하는 경우가 있다. 또 만성화하면 일반적인 치료에 반응하지 않을 수도 있다.

특히 근근막통증증후군은 근육, 근막 속에 통증을 유발하는 압통점, 즉 통증 유발점이 생기는데 이를 압박하게 되면 심한 통증을 느끼면서 멀리 떨어진 부위까지 통증이나 이상 증상이 나타난다. 통증 유발점을 해결하지 않고 방치하게 되면 근육 내 흉터(섬유화)를 만들고 통증으로 인해 움직임의 제한이 생길 수 있다.

인천성모병원 마취통증의학과 박정현 교수는 “근근막통증증후군은 근육의 과도한 사용이나 외상, 거북목증후군과 같은 올바르지 못한 자세 등이 주요 원인이지만 여러 근골격계 질환으로 인해 이차적으로 발생하기도 한다”며 “일반적인 진통제로 듣지 않는 근육 통증이 지속할 경우 병원을 찾아 통증 유발점 치료를 시행하는 것이 좋다”고 조언했다. 

근육 통증을 호소하는 환자의 30~85%가 근근막통증증후군을 함께 앓고 있는 것으로 알려져 있다. 남녀 차이는 별로 없고 27~50세 사이에서 주로 나타난다. 박정현 교수는 “근근막통증증후군은 객관적으로 진단할 검사나 영상의학 검사가 아직 부족하고 초음파로 통증 유발점을 찾는 방법이 개발되고 있지만 아직 상용화되지 않고 있다”며 “촉진 혹은 주사 치료 등으로 통증 부위에서 통증 유발점을 발견하는 것이 현재까지 유일한 진단 방법이다”고 했다.

<통증 유발점에 약물 투여하는 주사 효과적>
경증은 운동요법, 마사지, 물리치료, 약물치료 등으로 쉽게 호전된다. 반면 만성화한 경우 통증 유발점이 섬유화돼 이들 치료로는 치료가 어렵고 쉽게 재발한다. 이때 가장 효과적인 방법이 통증 유발점 주사다. 통증 유발점 주사는 통증 유발점에 약물을 투여해 해당 부위의 섬유화를 끊어 순환을 좋게 하고 통증 유발 물질을 제거한다.

심한 경우에는 통증 유발점 주사에도 반응이 없을 수 있다. 이때는 신경 치료를 통해 통증의 악순환 고리를 끊어주고 혈액 순환을 증진 시켜 통증을 빠르게 경감시켜 주기도 한다.

근근막통증증후군을 예방하기 위해서는 ▶고강도의 반복되는 노동이나 ▶손을 어깨높이 이상으로 올리는 작업 ▶무거운 물건을 자주 들거나 ▶오래 서 있는 상황을 피하는 것이 중요하다. 하지만 여의치 않을 경우 작업 중 수시로 스트레칭을 해주거나 규칙적인 운동을 하는 것이 좋다.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', '51266_51584_1733.jpg', '‘급체’ 했을 때 대처법', '여유롭게 식사시간을 가질 수 없을 때 급하게 음식을 먹으면 체할 수 있다. 특히 요즘처럼 추운 날씨에 기온이 낮은 곳에서 식사를 하면 체하기 쉬워 주의가 필요하다.

급체의 원인은 음식을 과하게 빨리 먹는 것뿐만 아니라 불규칙한 식사, 짜고 맵고 기름진 음식, 스트레스 등으로 다양하다.

속이 답답하고 통증이 느껴지며 급체가 의심스럽다면 우선 음식섭취를 자제하고 위가 쉴 수 있게 휴식을 가져야 한다. 가볍게 걷는 등 유산소 운동을 하거나, 엄지와 검지 부분의 혈자리 ‘합곡혈’을 눌러주는 것도 가벼운 체기에는 도움이 된다.

미지근한 물 또는 차 등을 마셔 배를 따뜻하게 해주는 것도 좋다. 특히 생각차에는 위액 분비를 촉진하는 성분이 있어 체증을 내리는데 도움을 줄 수 있다. 하지만 생강차는 따뜻한 성질로 찬 음식을 먹고 체했을 때 효과를 볼 수 있기 때문에 발열을 동반한 급체에는 마시지 않는게 좋다.

간혹 억지로 구토를 하면 답답하게 막힌 속이 뚫린다고 생각하는 경우가 있는데 이는 잘못된 방법이다. 억지로 구토를 반복하게 되면 위산이 식도를 자극해 역류성 식도염을 유발할 수 있다.

급체 증상과 함께 발열, 설사, 통증부위가 오른쪽 아래로 바뀐다면 다른 질환일 수 있어 즉시 병원으로 가야한다.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', 'GettyImages-1178489847.jpg', '녹내장, 빠른 치료가 중요해요!', '녹내장이란 눈과 뇌를 연결하는 신경(시신경)에 무언가 이상이 생겨 시야 결손이 생기는 질환이다. 시야 결손이란 한 눈을 감았다 떴을 때 보이는 전체 범위내에 보이지 않는 부분이 생기는 것을 말하며, 어느날 갑자기 심한 시야결손이 급성으로 발생하지 않는 한 만성 녹내장처럼 서서히 발생하는 시야결손은 자각하기 어렵다.
 
녹내장은 방치할 시 실명으로 이어지기도 해, 황반변성, 백내장(우리나라는 당뇨망막병증)과 함께 3대 실명 질환으로 꼽힌다.

녹내장의 발생 원인은 다양하다. 안압(눈의 압력)이 높은 경우 고안압으로 인해 시신경이 압박을 받아 시야손상으로 이어진다. 또한, 안압은 정상이어도 안압의 일중 변동 폭이 크거나, 근시로 인해 시신경이 약해져 있거나, 시신경 혈액 순환이 잘 안 되는 경우, 혹은 유전자 이상 등의 이유로 녹내장이 생기기도 한다. 우리나라 녹내장 환자의 약 80~90%는 안압 수치는 정상인 ‘정상안압녹내장’을 앓고 있다.
 
그런데 정상안압녹내장을 포함한 원발개방각녹내장의 경우 초기에 증상을 자각하는 것이 매우 힘들다. 초기에는 주변부 시야부터 손상이 시작되고 서서히 중심 시야까지 진행하기 때문이다. 중심 시야는 말기까지 보존되기도 한다. 따라서, 말기 녹내장이라 하더라도 시야만 좁아지고 시력은 1.0까지 유지되는 경우가 빈번하여 좁아진 시야를 인식하지 못하여 뒤늦게 진단을 받는 경우가 많다고 한다. 우리나라 국민건강영양조사 연구에 의하면 녹내장인지율은 8%, 즉 녹내장 진단 받은 환자 100명 중 92명은 녹내장이 있다는 걸 모르고 있었다고 한다.

하지만 한번 손상된 시신경은 다시 회복되지 않기 때문에 조기 진단과 치료가 매우 중요하다. 때문에 계단을 헛디디거나 자주 넘어지고, 낮은 문턱에 머리를 부딪히거나 운전 중 표지판과 신호등이 잘 보이지 않을 때는 녹내장을 의심하고 안과 전문의와 상의해야 한다. 무엇보다 정기적으로 안과 검진을 받아 눈건강을 확인하는 것이 필수적이다.
 
녹내장은 한번 진단 받으면 평생 치료를 받아야 하므로 신중하고 정확하게 진단해야 한다. 특히나 높은 안압은 녹내장 발병의 주요 원인이기 때문에 안압검사가 필요하며, 안압이 정상이더라도 녹내장일 수 있으므로 반드시 시신경검사를 해야 한다. 또한 전문의 판단에 따라 전안부 검사, 시신경 및 망막신경섬유층 검사, 시야 검사, OCT 검사 등을 복합적으로 시행하여 정확하게 녹내장을 진단하고, 녹내장의 종류와 현재 병기에 알맞은 치료 방법을 선택하는 것이 좋다. 녹내장은 종류에 따라 진행 속도가 달라서, 만성녹내장은 일반적으로 서서히 진행하지만 급성녹내장, 폐쇄각녹내장, 거짓비늘녹내장, 신생혈관녹내장 등은 진행속도가 빠른 것으로 알려져 있다.

녹내장을 명확히 진단받은 후에는 안압을 떨어뜨리기 위한 약물 요법을 주로 사용한다. 경우에 따라 레이저나 수술적 치료를 시행하기도 한다. 안압 낮추는 효과는 수술치료가 약물이나 레이져에 비하여 우수하지만, 수술치료 후 시력을 떨어뜨리는 합병증의 위험이 있어 일반적으로는 약물치료가 우선 된다.
 
고려대학교 안암병원 안과 유정권 교수는 “녹내장은 실명에 이를 수 있는 주요 안과 질환이지만 특별한 예방법이 없다”며 “주기적인 검진을 통해 조기에 녹내장을 발견하고 치료를 시작하는 것이 현재로서는 최선의 대처법이다. 고도 근시, 40세이상, 당뇨, 고혈압, 녹내장 가족력이 있는 경우 안과 전문의 진료를 받아 치료 필요 여부와 검사 주기를 상담하는 것이 좋다. 녹내장 치료는 약물치료가 주를 이루지만 최근에 기존 녹내장수술의 단점을 보완한 최소침습녹내장수술(MIGS) 방법들이 나와서 수술치료 선택의 폭이 조금씩 확장되고 있다. 그러나, 각 수술방법마다 장단점들이 있어 안과 전문의와 상의하는 것이 필요하다.”고 조언했다.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', '녹내장.jpg', '[일상 꿀팁] 엎드려 자면 녹내장 위험 커요', '평소 안압이 높다면 책상에 엎드려 낮잠을 자거나 옆으로 누워 자는 자세는 피하시기 바랍니다. 특정 수면 자세가 안압을 높일 수 있다고 합니다.

안압은 안구 내의 압력을 말합니다. 안압이 높으면 황반 변성과 당뇨 망막병증과 함께 3대 실명 질환 가운데 하나인 녹내장의 발병 위험이 커집니다. 녹내장은 주로 안압 상승해 시신경이 손상되면서 나타나는 질환인데요. 높은 안압은 시신경을 눌러 망가뜨리고 시력을 떨어뜨릴 수 있습니다.

안압은 생활 습관에 따라서 달라지는데요. 음주나 흡연, 식습관, 운동량이 영향을 끼치고 수면 자세와도 관련이 있습니다. 고려대 안암병원 안과 연구팀에 따르면 옆으로 누우면 어깨너비 때문에 머리 위치가 척추 중심보다 낮아지면서 안압이 상승하는 것으로 나타났습니다.

엎드릴 때에도 머리와 목에 압박이 가해지고 안구로 가는 혈액 흐름에 문제가 생기면서 안압이 높아졌는데요. 적정 안압을 유지하려면 잘 때에는 천장을 보고 똑바로 누워 자는 게 좋고요. 허리가 불편한 경우 무릎 아래 쿠션을 하나 정도 깔아주면 한결 편안해집니다.

어쩔 수 없이 옆으로 누워 잘 때에는 똑바로 누울 때보다 살짝 높은 베개를 베어서 머리 위치가 낮아지지 않도록 하고요. 낮잠을 잘 때에는 책상에 엎드리기보다 의자에 엉덩이를 바짝 붙이고 앉아 목베개를 사용해 머리와 목을 받쳐야 허리에 무리가 덜 가고 안압이 높아지는 것도 예방할 수 있습니다.', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, 'https://www.youtube.com/embed/S5cpsyIH8a4', '', '건강게시판5', 'content 내용', sysdate, 0 );
insert into news_board values ( news_board_num.nextval, '', '12월_3주-어지럼증이란.png', '빈혈이 아니다?…절대 그냥 지나치면 안 되는 어지럼증 자가진단법', '어지럼증은 성인의 20%가 1년에 한 번 이상 경험할 정도로 흔한 증상입니다. 대개 어지럼증을 빈혈 때문이라고 생각하기 쉽지만 빈혈은 어지럼증의 원인 중 하나일 뿐입니다.

빙빙 도는 느낌부터 핑 도는 느낌, 머리가 어질어질한 느낌까지 어지럼증은 증상이 다양해 정확한 진단이 어려운 경우가 많습니다. 심한 어지럼증이라도 심각한 질환이 아닐 수 있고, 가벼운 어지럼증이라도 중추성 신경계 이상처럼 수술이나 집중 치료가 필요한 경우도 있어 정확한 감별 진단이 중요합니다.

어지럼증을 유발하는 대표적 기관은 귀(말초성), 뇌(중추성), 심장, 눈 등이 있습니다. 어지럼증은 원인에 따라 크게 말초성 질환과 중추성 질환으로 구분합니다.

말초성 전정질환에는 이석증, 전정신경염, 메니에르병, 미로염(내이염), 진주종, 외림프 누공 등이 있습니다. 급성 회전성 어지럼증을 호소하는 환자의 대부분은 말초성 전정질환으로, 그중에서도 이석증이 가장 흔합니다. 속귀에 문제가 생긴 경우 어지럼증 외에도 청력 감소, 이명, 귀의 충만감 같은 증상을 동반할 수 있습니다.

중추성 전정기능장애로 어지럼증을 동반하는 경우 전정편두통, 소뇌동맥이 막히거나 터지는 뇌졸중, 뇌기저동맥 폐색, 척추동맥 박리 등일 수 있습니다. 중추성 원인에 의한 어지럼증은 신속한 치료가 필요합니다. 중추성 어지럼증은 말초성과 달리 두통, 의식 변화, 어눌한 말투, 사지 감각 저하·마비, 힘 빠짐 등의 증상을 동반하는 경우가 흔합니다. 어지럼증과 함께 이런 증상이 나타난다면 즉시 응급실로 가야 합니다.', sysdate, 0 );

insert into news_board values(news_board_num.nextval, '', '1218_겨울철음료.jpg', '[맛보다건강] 겨울철 음료 ‘당’ 덩어리', '식약처에 따르면 한국인의 하루 평균 당류 섭취량은 61.4g으로, 천연 당류가 들어있는 과일 15.3g(24.9%)을 제외하면 음료류가 11.1g(18.1%)으로 가장 높았다. 연령별로는 청소년이 평균 69.6g으로 가장 많았는데 역시 음료류를 통한 섭취가 14.3g(20.5%)로 1위를 차지했다. 이렇듯 우리는 알게 모르게 음료를 통해 당류를 과다 섭취하고 있다. 특히나 추운 겨울이면 더욱 사랑받는 따뜻한 음료들에는 놀라울 정도의 당류가 숨어있다.

■ 과일 소재 음료들의 반전
프랜차이즈 카페 4~6곳의 겨울철 음료 평균치를 조사해본 결과, 1회 제공량(약 300~350ml) 당 당류 함량은 ‘유자차’가 55g으로 가장 높았다. 식약처에서 권장하는 1일 당류 섭취 기준치(100g 이하)의 절반을 넘는 양이다. 유자차뿐만 아니라 레몬, 자몽, 청귤 등 과실청을 이용한 음료에는 보존성을 높이기 위해 많은 양의 설탕이 들어간다. 유자차 다음으로는 ‘뱅쇼’가 당류 함량이 높았다. 뱅쇼 1잔당 당류 함량은 49g으로 3g짜리 각설탕 16개를 먹는 셈이다. 과일껍질, 와인, 계피 등의 쓴맛을 감추고 달콤한 맛을 상승시키기 위해 역시 설탕이 많이 들어간다는 걸 기억하자.

■ 녹차라떼, 고구마라떼는 건강하다?
핫초코보다는 녹차라떼, 고구마라떼가 건강에는 좀 더 좋을 것으로 생각된다. 하지만 녹차라떼 1잔의 당류 함량은 36g, 고구마라떼는 30g으로 핫초코(46g)에 비해서는 낮지만 모두 각설탕 10개 이상 분량이 들어있다. 반면 카페라떼는 당류 11g으로 이들에 비해 3분의 1 수준이다. 본래 우유 자체에도 유당이 200ml당 9g정도 함유돼 있어 굳이 당을 추가하지 않아도 적당히 달콤함을 가미해준다. 녹차의 향을 즐기고 싶다면 오리지널 녹차를, 부드럽게 즐기고 싶다면 첨가당이 들어있지 않은 라떼로 선택할 것을 추천한다.

■ 율무차, 스틱 1봉만 넣어도 충분
겨울철 인기 음료 중 하나가 바로 ‘율무차’다. 율무차에는 비타민B가 풍부한 율무뿐만 아니라 다양한 곡물, 견과류 등이 들어가 고소한 맛과 포만감을 준다. 시중에 판매되는 율무차 제품들은 스틱 1봉(18g)이 1회 제공량으로 물에 탔을 때 약 90~100ml가 적정량이다. 스틱 1봉당 당류 함량은 6g으로 비교적 양호한데 양이 적다 보니 2~3봉을 한꺼번에 타 먹는 경우가 많다. 이렇게 되면 섭취하는 당류와 칼로리가 2~3배로 높아진다. 율무차를 비롯해 미숫가루, 마차, 대추차 등 고형차의 경우 1회 제공량을 지켜 섭취토록 해야 한다.', sysdate, 0);



create table news_repl (   -- 건강정보 댓글
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

create sequence news_board_repl_num  -- 건강정보 댓글 시퀀스
increment by 1
start with 1;

create table ai_record (   -- ai 진단 기록
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

create sequence ai_record_seq  -- 진료후기 댓글 시퀀스
increment by 1
start with 1;


--DB생성
create table favorite_doctor(
   fav_num number primary key,
   patient_num number,
   doctor_num number,
   fav_date date default sysdate,
   fav_flag char(1) default '0'  -- 0:활성 , 1:비활성
);
--시퀀스 생성
create sequence fav_num_seq;

create table treat_repl (   -- 진료후기 댓글
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

create sequence treat_repl_num  -- 진료후기 댓글 시퀀스
increment by 1
start with 1;

create table doc_review(    -- 진료후기 별점 좋아요 싫어요 등
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



insert into doc_review values(doc_review_seq.nextval,21,2,'좋아요',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,17,6,'다른 병원 다녔을 땐 한 달을 안 낫더니 여기서 진료 받고 바로 나았어요... 최고ㅠㅠ',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,14,9,'친절한 진료 감사합니다',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,11,12,'친절하고 편안한 진료받았어요',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,10,13,'화상인데도 정확해요!',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,9,14,'진료 진짜 잘하시는 듯',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,6,2,'친절의 뜻을 모르는 의사같아요.
말이 어찌나 많으신지 싫은티 냈는데도 계속 말 거셔서 너무 힘들었어요. 간호사들은 그에 비해 조용해요. 너무 조용해서 불친절. 진료비 비싸요',1,sysdate);
insert into doc_review values (doc_review_seq.nextval,4,4,'감사함당',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,3,5,'화상 연결이 좀 끊겼어요',3,sysdate);
insert into doc_review values (doc_review_seq.nextval,4,9,'감사해용~',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,5,10,'진짜 장사 잘하시네여..;;',1,sysdate);
insert into doc_review values (doc_review_seq.nextval,10,15,'쌤 감사해요!',4,sysdate);
insert into doc_review values (doc_review_seq.nextval,11,16,'너무 편리합니다!',5,sysdate);
insert into doc_review values (doc_review_seq.nextval,14,4,'굳굳',5,sysdate);


create table chat_room (  -- 채팅방 번호
    room_num number(4) constraint room_num_pk primary key
);

create table chat_msg (   -- 채팅메세지
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



create table chat_room_join (  -- 조인한 채팅방 번호
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

create sequence p_loginlog_seq  -- 로그인 로거 시퀀스
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

insert into ai_result values('각막혼탁','각막 혼탁은 각막의 투명성을 잃은 상태를 의미합니다. 각막은 주로 아교질 섬유(콜라겐)로 이루어져 있으며, 균일한 구조 덕분에 빛을 투과시킬 수 있습니다. 시계 유리에 흠집이 많이 생기면 시곗바늘이 잘 보이지 않듯이 각막이 손상되거나 질환을 앓은 후에는 투명성을 잃게 되며, 이런 상태를 각막 혼탁이라고 합니다.');
insert into ai_result values('다래끼','눈물샘과 보조샘의 감염으로 인해 눈꺼풀 주위에 염증이 생기는 것이 대표적인 증상이다. 그냥 두어도 시간이 지나면서 저절로 치유돼 증상이 심하지 않은 초기 단계에는 안과를 방문하지 않아도 괜찮다.');
insert into ai_result values('각막이영양증','아벨리노 각막이영양증은 1988년 이탈리아 아벨리노 지방에서 이민 온 가족에게서 처음 발견되며 명명된 질환으로, 양안 각막 중심부에 단백질이 침착되며 혼탁이 발생하고, 나이가 듦에 따라 점차 혼탁이 많아져 시력이 감소하는 상염색체 우성 유전 질환입니다.');
insert into ai_result values('결막염','세균성 결막염은 씻지 않은 손이나 더러운 표면에 있는 세균이 눈에 닿아서 주로 발생합니다. 세균성 결막염에 의해 염증이 생길 경우 심한 통증을 유발할 수 있으며, 눈에서 고름(황색 분비물)이 나올 수 있습니다. 눈이 세균에 감염되면 즉시 치료를 받아야 합니다.');
insert into ai_result values('원형 탈모','원형탈모증은 모발이 원형으로 빠지는 질환으로 전체 인구의 2% 정도에서 발생하는 비교적 흔한 탈모 질환입니다. 대개는 한두 군데의 원형의 탈모를 보이지만 심한 경우에는 여러 군데에 동시에 발생할 수 있고 탈모 부위가 융합되고 두피의 모발 외에 눈썹이나 수염의 모발도 소실될 수 있습니다.');
insert into ai_result values('M자 탈모','전형적인 M자탈모 증상은 헤어라인 부근의 모발이 가늘어지고 빠지는 것에서부터 시작한다. 하루 아침에 많은 양의 머리카락이 빠지기보다는 시간의 흐름에 따라 지속적으로 증상이 진행된다.');
insert into ai_result values('여성형 탈모','여성형 탈모증은 주로 나이 든 여성에서 모발이 가늘어지고 모발 수가 줄어드는 증상을 말하며 대부분 윗머리 부위에 나타납니다.');