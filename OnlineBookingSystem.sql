create database OnlineBookingSystem
use OnlineBookingSystem 
go
SELECT SERVERPROPERTY ('Collation') 
alter database OnlineBookingSystem  collate Chinese_PRC_CI_AS
SELECT SERVERPROPERTY ('Collation') 
--模拟创建教职工和在校生信息表
create table Faculty(
fID char(10) primary key not null,
fName nvarchar(8) not null,
fIDCard nvarchar(20) not null,
fPosition nvarchar(10) not null,
fGrade int not null,
college nvarchar(20) not null
)
insert into Faculty values('2010001001','蜘蛛侠','0000000000000000001','保安队长','2','生物工程学院')
insert into Faculty values('2010001002','阿甘','0000000000000000002','校长','2','无')
insert into Faculty values('2010001003','neo','0000000000000000003','本科生','1','数学院')
select * from Faculty

select top 1 fIDCard from Faculty where fID='2010001003'
drop table Faculty

--预约基本信息放在一张表中
select top 1 a1 from OBBasic order by a1 desc
create table OBBasic(
a1 varchar(20) primary key,--1.预约单号
a2 smalldatetime,--2.预约时间
a3 nvarchar(5),--3.预约窗口
a4 char(10) foreign key references Faculty(fID),--4.报销人工号
a5 int,--5.附件张数
a6 varchar(20),--6.预约报销总金额（大写）
a7 int,--7.预约报销总金额（小写）
a8 int,--8.报销类型（用数字）
a9 int,--9.预约状态
a10 nvarchar(10),--10预约人姓名
a11 varchar(11),--11预约人手机号
a12 nvarchar(30),--12预约人电子邮箱
a13 varchar(20),--13项目编号
a14 varchar(5),--14付费模式
)
alter table OBBasic add column a14 varchar(5)
insert into OBBasic (a4,a10,a11,a12,a8,a13,a5,a1)values('2010001003','','','','','','','')
select * from OBBasic
drop table OBBasic
select count(*) from OBBasic where a2='2013-04-09 08:00:00' and a3='1'

insert into OBBasic values('201112120830','2013-04-17 08:30:00','1','2010001003','2','壹佰','100','1','0','','','','','form1')
insert into OBBasic values('201112120831','2013-04-17 09:30:00','1','2010001003','2','壹佰','100','2','0','','','','','form1')
insert into OBBasic values('201112120832','2013-04-17 10:30:00','1','2010001003','2','壹佰','100','3','0','','','','','form2')
insert into OBBasic values('201112120833','2013-04-17 11:30:00','1','2010001003','2','壹佰','100','4','0','','','','','form1')
insert into OBBasic values('201112120834','2013-04-17 12:30:00','1','2010001003','2','壹佰','100','3','0','','','','','form1')
insert into OBBasic values('201112120835','2013-04-17 13:30:00','1','2010001003','2','壹佰','100','1','0','','','','','form1')
insert into OBBasic values('201112120836','2013-04-17 14:30:00','1','2010001003','2','壹佰','100','1','0','','','','','form1')
insert into OBBasic values('201112120837','2013-04-17 15:30:00','1','2010001003','2','壹佰','100','1','0','','','','','form1')
insert into OBBasic values('201112120838','2013-04-17 16:30:00','1','2010001003','2','壹佰','100','1','0','','','','','form2')
insert into OBBasic values('201112120839','2013-04-17 8:00:00','1','2010001003','2','壹佰','100','2','0','','','','','form1')
insert into OBBasic values('201112120840','2013-04-17 9:00:00','1','2010001003','2','壹佰','100','1','1','','','','','form1')
insert into OBBasic values('201112120841','2013-04-19 10:00:00','1','2010001003','2','壹佰','100','1','1','','','','','form1')
insert into OBBasic values('201112120842','2013-04-19 11:00:00','1','2010001003','2','壹佰','100','1','1','','','','','form1')
insert into OBBasic values('201112120843','2013-04-19 12:00:00','1','2010001003','2','壹佰','100','3','1','','','','','form1')
insert into OBBasic values('201112120844','2013-04-19 13:00:00','2','2010001003','2','壹佰','100','1','1','','','','','form3')
insert into OBBasic values('201112120845','2013-04-19 14:00:00','2','2010001003','2','壹佰','100','1','1','','','','','form1')
insert into OBBasic values('201112120846','2013-04-19 15:00:00','2','2010001003','2','壹佰','100','1','1','','','','','form4')

--预约详细信息
----------------一般费用----------------
create table Mode1(
b1 varchar(20) primary key,--费用编号
b2 varchar(20) foreign key references OBBasic(a1),--预约单号
b3 int,--1.1.1办公费：报刊杂志资料
b4 int,--2.1.1办公费：其他办公费
b5 int,--3.1.2印刷费：资料讲义复印费
b6 int,--4.1.2印刷费：论文专著版面费
b7 int,--5.1.3邮电费
b8 int,--6.1.4物业管理费：物业费
b9 int,--7.1.4物业管理费：绿化卫生费
b10 int,--8.1.5交通费
b11 int,--9.1.6维修费（护）：设备维修费
b12 int,--10.1.6维修费（护）：建筑物维修费
b13 int,--11.1.6维修费（护）：基础设施维修费
b14 int,--12临时聘用劳务人员
b15 int,--13.其他酬金
)
select * from Mode1
---------------差旅费--------------------
create table Mode2(
c1 varchar(20) primary key,--1.记录编号
c2 varchar(20) foreign key references OBBasic(a1),--2.预约单号
c3 nvarchar(20),--3.出差事由
c4 int,--4.出差人数
c5 int,--5.车船费
c6 int,--6.市内交通费
c7 int,--7.住宿费
c8 int,--8.其他
c9 int,--9.是否发放公杂补贴
c10 int,--10.是否发放伙食补贴
c11 int,--11.报销总金额（大写）
c12 int--12.报销总金额（小写）
)

create table Mode2Personnel(
ca1 int primary key identity(1,1),--1.出差人员信息表
ca2 varchar(20) foreign key references OBBasic(a1),--1.报销预约单号
ca3 nvarchar(10),--2.姓名
ca4 nvarchar(10)--3.职务（称）
)
create table Mode2Case(
cb1 int identity(1,1) primary key,--1.出差事件编号
cb2 nvarchar(30),--2.出差地点
cb3 varchar(15),--3.出发日期
cb4 varchar(15),--4.返回日期
cb5 int,--5.天数
cb6 int,--6.教职工数
cb7 int,--7.研究生人数
cb8 int,--8.其它人数
cb9 varchar(20) foreign key references OBBasic(a1)
)
-----------交通费------------------
create table Mode3
(
d1 varchar(20) primary key, --1.费用编号
d2 varchar(20),--2.车牌号码
d3 int,--3.停车费
d4 int,--4.汽油费
d5 int,--5.维修费
d6 nvarchar(8),--6.车主姓名
d7 int,--7.过桥过路费
d8 int,--8.保养费
d9 int,--9.保险费
d10 nvarchar(20),--10.合计（大写）
d11 int,--11.合计（小写）
d12 varchar(20) foreign key references OBBasic(a1)--12.预约单号
)
-----------------医药费---------------------
create table Mode4(
e1 varchar(20) primary key,--1.费用编号
e2 nvarchar(20),--2.部门（院系、班级）
e3 nvarchar(10),--3.报销人姓名
e4 varchar(11),--4.联系电话
e5 int,--5.住院还是门诊
e6 int,--6.实报金额（小写写）
e7 nvarchar(20),--7.实报金额（大写）
e8 varchar(20) foreign key references OBBasic(a1)--12.预约单号
)
------------------会议费---------------------------
create table Mode5(
f1 varchar(20),--1.费用编号
f2 nvarchar(20),--2.会议名称
f3 nvarchar(20),--3.主办地点
f4 varchar(15),--4.召开时间
f5 int,--5.会议参加对象和人数
f6 nvarchar(100),--6.备注
f7 int,--7.住宿费用
f8 int,--8.交通费用
f9 int,--9.饮食餐饮补贴
f10 int,--10.文件资料印刷费
f11 int,--11.其他接待费用
f12 int,--12.合计金额（小写）
f13 nvarchar(20),--13.合计金额（大写）
f14 varchar(20) foreign key references OBBasic(a1)--14.预约单号
)
------------------暂借款------------------------------
create table Mode6(
g1 varchar(20),--1.费用编号
g2 int,--2.差旅费借款
g3 int,--3.办公费借款
g4 int,--4.印刷费借款
g5 int,--5.邮电费借款
g6 int,--6.维修费借款
g7 int,--7.邮电费借款
g8 int,--8.维修费借款
g9 int,--9.交通费借款
g10 int,--10.会议费借款
g11 int,--11.招待费借款
g12 int,--12.专用材料费借款
g13 int,--13.设备购置费借款
g14 int,--14.其他费用借款
g15 varchar(20) foreign key references OBBasic(a1)--15.预约单号
)
----------各个费用模式下项目的支出、收入和余额-------------
create table OBAccount(
h1 varchar(20) primary key,--1.记录编号
h2 int,--2.支出
h3 int,--3余额
h4 int,--4.收入
h5 varchar(20) foreign key references OBBasic(a1)--15.预约单号
)
create table OBPayments1(
i1 varchar(20) primary key,--编号
i2 varchar(15),--工号或学号
i3 nvarchar(10),--姓名
i4 int,--转卡金额
i5 varchar(25),--账号
i6 varchar(20) foreign key references OBBasic(a1) --预约号
)
select top 1 i1  from OBPayments1 order by i1 desc
create table OBPayments2(
j1 varchar(20) primary key,--序号
j2 nvarchar(20),--单位名称
j3 int,--金额
j4 varchar(20) foreign key references OBBasic(a1)--预约号
)
create table OBPayment3(
k1 varchar(20) primary key,--编号
k2 nvarchar(20),--收款单位
k3 varchar(25),--收款人银行账号
k4 nvarchar(20),--收款人开户银行
k5 nvarchar(100),--备注
k6 int,--金额
k7 varchar(20) foreign key references OBBasic(a1)--预约号
)
create table OBPayment4(
l1 varchar(20),--编号
l2 varchar(20),--项目号
l3 int,--金额
l4 varchar(20) foreign key references OBBasic(a1)--预约号
)
create table BaoxiaoMan(
ID varchar(20) primary key,--职工号
Bname nvarchar(5),--姓名
Bphone varchar(11),--联系电话
Bemail varchar(30)--email
)
insert into BaoxiaoMan values('199303040001','金刚狼','55555555555','xman@gmail.com')
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