create database OnlineBookingSystem
use OnlineBookingSystem 
go
SELECT SERVERPROPERTY ('Collation') 
alter database OnlineBookingSystem  collate Chinese_PRC_CI_AS
SELECT SERVERPROPERTY ('Collation') 
--ģ�ⴴ����ְ������У����Ϣ��
create table Faculty(
fID char(10) primary key not null,
fName nvarchar(8) not null,
fIDCard nvarchar(20) not null,
fPosition nvarchar(10) not null,
fGrade int not null,
college nvarchar(20) not null
)
insert into Faculty values('2010001001','֩����','0000000000000000001','�����ӳ�','2','���﹤��ѧԺ')
insert into Faculty values('2010001002','����','0000000000000000002','У��','2','��')
insert into Faculty values('2010001003','neo','0000000000000000003','������','1','��ѧԺ')
select * from Faculty

select top 1 fIDCard from Faculty where fID='2010001003'
drop table Faculty

--ԤԼ������Ϣ����һ�ű���
select top 1 a1 from OBBasic order by a1 desc
create table OBBasic(
a1 varchar(20) primary key,--1.ԤԼ����
a2 smalldatetime,--2.ԤԼʱ��
a3 nvarchar(5),--3.ԤԼ����
a4 char(10) foreign key references Faculty(fID),--4.�����˹���
a5 int,--5.��������
a6 varchar(20),--6.ԤԼ�����ܽ���д��
a7 int,--7.ԤԼ�����ܽ�Сд��
a8 int,--8.�������ͣ������֣�
a9 int,--9.ԤԼ״̬
a10 nvarchar(10),--10ԤԼ������
a11 varchar(11),--11ԤԼ���ֻ���
a12 nvarchar(30),--12ԤԼ�˵�������
a13 varchar(20),--13��Ŀ���
a14 varchar(5),--14����ģʽ
)
alter table OBBasic add column a14 varchar(5)
insert into OBBasic (a4,a10,a11,a12,a8,a13,a5,a1)values('2010001003','','','','','','','')
select * from OBBasic
drop table OBBasic
select count(*) from OBBasic where a2='2013-04-09 08:00:00' and a3='1'

insert into OBBasic values('201112120830','2013-04-17 08:30:00','1','2010001003','2','Ҽ��','100','1','0','','','','','form1')
insert into OBBasic values('201112120831','2013-04-17 09:30:00','1','2010001003','2','Ҽ��','100','2','0','','','','','form1')
insert into OBBasic values('201112120832','2013-04-17 10:30:00','1','2010001003','2','Ҽ��','100','3','0','','','','','form2')
insert into OBBasic values('201112120833','2013-04-17 11:30:00','1','2010001003','2','Ҽ��','100','4','0','','','','','form1')
insert into OBBasic values('201112120834','2013-04-17 12:30:00','1','2010001003','2','Ҽ��','100','3','0','','','','','form1')
insert into OBBasic values('201112120835','2013-04-17 13:30:00','1','2010001003','2','Ҽ��','100','1','0','','','','','form1')
insert into OBBasic values('201112120836','2013-04-17 14:30:00','1','2010001003','2','Ҽ��','100','1','0','','','','','form1')
insert into OBBasic values('201112120837','2013-04-17 15:30:00','1','2010001003','2','Ҽ��','100','1','0','','','','','form1')
insert into OBBasic values('201112120838','2013-04-17 16:30:00','1','2010001003','2','Ҽ��','100','1','0','','','','','form2')
insert into OBBasic values('201112120839','2013-04-17 8:00:00','1','2010001003','2','Ҽ��','100','2','0','','','','','form1')
insert into OBBasic values('201112120840','2013-04-17 9:00:00','1','2010001003','2','Ҽ��','100','1','1','','','','','form1')
insert into OBBasic values('201112120841','2013-04-19 10:00:00','1','2010001003','2','Ҽ��','100','1','1','','','','','form1')
insert into OBBasic values('201112120842','2013-04-19 11:00:00','1','2010001003','2','Ҽ��','100','1','1','','','','','form1')
insert into OBBasic values('201112120843','2013-04-19 12:00:00','1','2010001003','2','Ҽ��','100','3','1','','','','','form1')
insert into OBBasic values('201112120844','2013-04-19 13:00:00','2','2010001003','2','Ҽ��','100','1','1','','','','','form3')
insert into OBBasic values('201112120845','2013-04-19 14:00:00','2','2010001003','2','Ҽ��','100','1','1','','','','','form1')
insert into OBBasic values('201112120846','2013-04-19 15:00:00','2','2010001003','2','Ҽ��','100','1','1','','','','','form4')

--ԤԼ��ϸ��Ϣ
----------------һ�����----------------
create table Mode1(
b1 varchar(20) primary key,--���ñ��
b2 varchar(20) foreign key references OBBasic(a1),--ԤԼ����
b3 int,--1.1.1�칫�ѣ�������־����
b4 int,--2.1.1�칫�ѣ������칫��
b5 int,--3.1.2ӡˢ�ѣ����Ͻ��帴ӡ��
b6 int,--4.1.2ӡˢ�ѣ�����ר�������
b7 int,--5.1.3�ʵ��
b8 int,--6.1.4��ҵ����ѣ���ҵ��
b9 int,--7.1.4��ҵ����ѣ��̻�������
b10 int,--8.1.5��ͨ��
b11 int,--9.1.6ά�޷ѣ��������豸ά�޷�
b12 int,--10.1.6ά�޷ѣ�������������ά�޷�
b13 int,--11.1.6ά�޷ѣ�������������ʩά�޷�
b14 int,--12��ʱƸ��������Ա
b15 int,--13.�������
)
select * from Mode1
---------------���÷�--------------------
create table Mode2(
c1 varchar(20) primary key,--1.��¼���
c2 varchar(20) foreign key references OBBasic(a1),--2.ԤԼ����
c3 nvarchar(20),--3.��������
c4 int,--4.��������
c5 int,--5.������
c6 int,--6.���ڽ�ͨ��
c7 int,--7.ס�޷�
c8 int,--8.����
c9 int,--9.�Ƿ񷢷Ź��Ӳ���
c10 int,--10.�Ƿ񷢷Ż�ʳ����
c11 int,--11.�����ܽ���д��
c12 int--12.�����ܽ�Сд��
)

create table Mode2Personnel(
ca1 int primary key identity(1,1),--1.������Ա��Ϣ��
ca2 varchar(20) foreign key references OBBasic(a1),--1.����ԤԼ����
ca3 nvarchar(10),--2.����
ca4 nvarchar(10)--3.ְ�񣨳ƣ�
)
create table Mode2Case(
cb1 int identity(1,1) primary key,--1.�����¼����
cb2 nvarchar(30),--2.����ص�
cb3 varchar(15),--3.��������
cb4 varchar(15),--4.��������
cb5 int,--5.����
cb6 int,--6.��ְ����
cb7 int,--7.�о�������
cb8 int,--8.��������
cb9 varchar(20) foreign key references OBBasic(a1)
)
-----------��ͨ��------------------
create table Mode3
(
d1 varchar(20) primary key, --1.���ñ��
d2 varchar(20),--2.���ƺ���
d3 int,--3.ͣ����
d4 int,--4.���ͷ�
d5 int,--5.ά�޷�
d6 nvarchar(8),--6.��������
d7 int,--7.���Ź�·��
d8 int,--8.������
d9 int,--9.���շ�
d10 nvarchar(20),--10.�ϼƣ���д��
d11 int,--11.�ϼƣ�Сд��
d12 varchar(20) foreign key references OBBasic(a1)--12.ԤԼ����
)
-----------------ҽҩ��---------------------
create table Mode4(
e1 varchar(20) primary key,--1.���ñ��
e2 nvarchar(20),--2.���ţ�Ժϵ���༶��
e3 nvarchar(10),--3.����������
e4 varchar(11),--4.��ϵ�绰
e5 int,--5.סԺ��������
e6 int,--6.ʵ����Сдд��
e7 nvarchar(20),--7.ʵ������д��
e8 varchar(20) foreign key references OBBasic(a1)--12.ԤԼ����
)
------------------�����---------------------------
create table Mode5(
f1 varchar(20),--1.���ñ��
f2 nvarchar(20),--2.��������
f3 nvarchar(20),--3.����ص�
f4 varchar(15),--4.�ٿ�ʱ��
f5 int,--5.����μӶ��������
f6 nvarchar(100),--6.��ע
f7 int,--7.ס�޷���
f8 int,--8.��ͨ����
f9 int,--9.��ʳ��������
f10 int,--10.�ļ�����ӡˢ��
f11 int,--11.�����Ӵ�����
f12 int,--12.�ϼƽ�Сд��
f13 nvarchar(20),--13.�ϼƽ���д��
f14 varchar(20) foreign key references OBBasic(a1)--14.ԤԼ����
)
------------------�ݽ��------------------------------
create table Mode6(
g1 varchar(20),--1.���ñ��
g2 int,--2.���÷ѽ��
g3 int,--3.�칫�ѽ��
g4 int,--4.ӡˢ�ѽ��
g5 int,--5.�ʵ�ѽ��
g6 int,--6.ά�޷ѽ��
g7 int,--7.�ʵ�ѽ��
g8 int,--8.ά�޷ѽ��
g9 int,--9.��ͨ�ѽ��
g10 int,--10.����ѽ��
g11 int,--11.�д��ѽ��
g12 int,--12.ר�ò��Ϸѽ��
g13 int,--13.�豸���÷ѽ��
g14 int,--14.�������ý��
g15 varchar(20) foreign key references OBBasic(a1)--15.ԤԼ����
)
----------��������ģʽ����Ŀ��֧������������-------------
create table OBAccount(
h1 varchar(20) primary key,--1.��¼���
h2 int,--2.֧��
h3 int,--3���
h4 int,--4.����
h5 varchar(20) foreign key references OBBasic(a1)--15.ԤԼ����
)
create table OBPayments1(
i1 varchar(20) primary key,--���
i2 varchar(15),--���Ż�ѧ��
i3 nvarchar(10),--����
i4 int,--ת�����
i5 varchar(25),--�˺�
i6 varchar(20) foreign key references OBBasic(a1) --ԤԼ��
)
select top 1 i1  from OBPayments1 order by i1 desc
create table OBPayments2(
j1 varchar(20) primary key,--���
j2 nvarchar(20),--��λ����
j3 int,--���
j4 varchar(20) foreign key references OBBasic(a1)--ԤԼ��
)
create table OBPayment3(
k1 varchar(20) primary key,--���
k2 nvarchar(20),--�տλ
k3 varchar(25),--�տ��������˺�
k4 nvarchar(20),--�տ��˿�������
k5 nvarchar(100),--��ע
k6 int,--���
k7 varchar(20) foreign key references OBBasic(a1)--ԤԼ��
)
create table OBPayment4(
l1 varchar(20),--���
l2 varchar(20),--��Ŀ��
l3 int,--���
l4 varchar(20) foreign key references OBBasic(a1)--ԤԼ��
)
create table BaoxiaoMan(
ID varchar(20) primary key,--ְ����
Bname nvarchar(5),--����
Bphone varchar(11),--��ϵ�绰
Bemail varchar(30)--email
)
insert into BaoxiaoMan values('199303040001','�����','55555555555','xman@gmail.com')
create table test(
t1 int primary key,
t2 smalldatetime,
t3 datetime)

insert into test values('1',getDate(),getDate())
insert into test values('2','2013-05-02 13:12:00','2013-05-02 13:12:32.730')
select * from test

drop table OBBasic
drop table Mode1
drop table Mode2
drop table Mode2Personnel
drop table Mode2Case
drop table Mode3
drop table Mode4
drop table Mode5
drop table Mode6
drop table OBAccount
drop table BaoxiaoMan
drop table OBPayments1
drop table OBPayments2

insert into OBBasic values()
select count(*) from OBBasic where datediff(day,getDate(),a2)<7
select top 1 ID,Bname from BaoxiaoMan
select fName from Faculty where fID='2010001003'
select top 1 a1 from OBBasic order by a1 desc