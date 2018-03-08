# create database pinche; #新建数据库university  

do not run me!

use pinche; #使用数据库university  

show databases; #显示系统所有数据库 
show tables;

# v_anji_shipment
drop table if exists v_anji_shipment;
CREATE TABLE pinche.v_anji_shipment  (
  `ID` int(255) NULL,
  `ORDER_ID` int(255) NULL,
  `SHIPMENT_NUMBER` varchar(255) NULL,
  `CUSTOMER_ID` int(255) NULL,
  `SRC_WH_ID` int(255) NULL,
  `DEST_WH_ID` int(255) NULL,
  `LOAD_ID` int(255) NULL,
  `VH_COLOR_ID` int(255) NULL,
  `VH_MODEL_ID` int(255) NULL,
  `CONFIG` varchar(255) NULL,
  `PRIOR_ID` varchar(255) NULL,
  `TRANS_MODE` varchar(255) NULL,
  `QUANTITY` varchar(255) NULL,
  `LEAVING_TIME` varchar(255) NULL,
  `ARRIVING_TIME` varchar(255) NULL,
  `SHIPMENT_STATE` varchar(255) NULL,
  `IN_AMOUNT` varchar(255) NULL,
  `OUT_AMOUNT` varchar(255) NULL,
  `BACK_AMOUNT` varchar(255) NULL,
  `PRIORITY` varchar(255) NULL,
  `CREATED_TIME` varchar(255) NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` varchar(255) NULL,
  `LOAD_GROUP_ID` int(255) NULL,
  `ISMULTI` varchar(255) NULL,
  `ISLAST` varchar(255) NULL,
  `ACCIDENT_STATUS` varchar(255) NULL,
  `FIRST_SHIP_ID` int(255) NULL,
  `VH_INNERCOLOR_ID` varchar(255) NULL,
  `IS_OPTIMIZED` varchar(255) NULL,
  `IS_AUTO` varchar(255) NULL,
  `INTEL_OPERATOR_ID` varchar(255) NULL,
  `LATEST_LOADING_TIME` varchar(255) NULL,
  `LATEST_SEG_ARRIVE_TIME` varchar(255) NULL,
  `TRANSCORP_ID` varchar(255) NULL,
  `CODE` varchar(255) NULL,
  `BALANCER_CODE` varchar(255) NULL,
  `SHIPMENT_SEQUENCE` varchar(255) NULL,
  `AREA_ID` varchar(255) NULL,
  `REL_DRIVER_WAY` varchar(40) NULL,
  `TRANSMEANS_CODE` varchar(20) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_shipment.csv' INTO TABLE v_anji_shipment  FIELDS TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;
select * from v_anji_shipment;

# v_anji_lp
drop table if exists v_anji_lp;
CREATE TABLE `pinche`.`v_anji_lp`  (
  `ID` int(255) NULL,
  `CODE` varchar(255) NULL,
  `NAME` varchar(255) NULL,
  `AREA_ID` int(255) NULL,
  `CITY_ID` int(255) NULL,
  `IS_DISABLED` tinyint NULL,
  `CREATED_TIME` varchar(255)   NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` int(255) NULL,
  `REGION_ID` varchar(255) NULL,
  `LATITUDE` float NULL,
  `LONGITUDE` float NULL,
  `COUNTRY` varchar(255) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_lp.csv' INTO TABLE v_anji_lp   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;
select * from v_anji_lp limit 10;


# v_anji_shipment_line
DROP TABLE if exists v_anji_shipment_line;
CREATE TABLE `pinche`.`v_anji_shipment_line`  (
  `ID` int(255) NULL,
  `SHIPMENT_ID` int(255) NULL,
  `VEHICLE_ID` int(255) NULL,
  `IS_ADVANCED` varchar(255) NULL,
  `IS_DISABLED` varchar(255) NULL,
  `CREATED_TIME` varchar(255) NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` varchar(255) NULL,
  `VEHICLE_IN_SRC_TIME` varchar(255) NULL,
  `VEHICLE_OUT_SRC_TIME` varchar(255) NULL,
  `VEHICLE_IN_DEST_TIME` varchar(255) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_shipment_line.csv' INTO TABLE v_anji_shipment_line   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;
#此表有一些问题，比如shipment_id 会出现大于int类型的值，应该是错误数据，暂且不予理会。检测方式：id=93245532
select * from v_anji_shipment_line limit 10;

# v_anji_customer
DROP TABLE IF EXISTS v_anji_customer;
 CREATE TABLE `pinche`.`v_anji_customer`  (
  `ID` int(255) NULL,
  `CODE` varchar(255) NULL,
  `NAME` varchar(255) NULL,
  `IS_DISABLED` varchar(255) NULL,
  `CREATED_TIME` varchar(255) NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` varchar(255) NULL,
  `IS_SYSTEM` varchar(255) NULL,
  `FINANCE_NUM` varchar(255) NULL,
  `COUNTRY` varchar(255) NULL,
  `IS_OTMS` varchar(255) NULL,
  `SHORT_NAME` varchar(255) NULL,
  `BALANCE_TIME` varchar(255) NULL,
  `IS_ANJI_TOTAL_PACKET` varchar(255) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_customer.csv' INTO TABLE v_anji_customer   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;

# v_anji_retailer
drop table if exists v_anji_retailer;
CREATE TABLE `v_anji_retailer` (
  `ID` bigint(20) DEFAULT NULL,
  `CODE` text,
  `NAME` text,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `ADDRESS` text,
  `POSTCODE` text,
  `DISTRICT` text,
  `CONTACT` text,
  `PHONE` text,
  `FAX` text,
  `REMARK` text,
  `IS_DISABLED` bigint(20) DEFAULT NULL,
  `CREATED_TIME` text,
  `LAST_MODIFIED` text,
  `LAST_OPERATOR` bigint(20) DEFAULT NULL,
  `COUNTRY` text,
  `IS_LARGE_SCALE` bigint(20) DEFAULT NULL
); 
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_retailer.csv' INTO TABLE v_anji_retailer   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;
# v_anji_order
DROP TABLE IF EXISTS v_anji_order;
 CREATE TABLE `pinche`.`v_anji_order`  (
  `ID` int(255) NULL,
  `CODE` varchar(255) NULL,
  `ORDER_TYPE` varchar(255) NULL,
  `CONSIGN_TYPE` varchar(255) NULL,
  `OWNER` varchar(255) NULL,
  `PRIORITY` varchar(255) NULL,
  `IS_CONSIGN` varchar(255) NULL,
  `STATE` varchar(255) NULL,
  `REMARK` varchar(255) NULL,
  `CUSTOMER_ID` int(255) NULL,
  `RETAILER_ID` int(255) NULL,
  `SRC_WH_ID` int(255) NULL,
  `DEST_WH_ID` int(255) NULL,
  `LEAVING_TIME` varchar(255) NULL,
  `ARRIVING_TIME` varchar(255) NULL,
  `TRANS_MODE` varchar(255) NULL,
  `PARENT_ID` varchar(255) NULL,
  `VH_COLOR_ID` varchar(255) NULL,
  `VH_MODEL_ID` varchar(255) NULL,
  `CONFIG` varchar(255) NULL,
  `QUANTITY` varchar(255) NULL,
  `BILL_DATE` varchar(255) NULL,
  `IS_EXTRA` varchar(255) NULL,
  `IS_DAMAGE` varchar(255) NULL,
  `APPOINT_CAR` varchar(255) NULL,
  `IN_AMOUNT` varchar(255) NULL,
  `OUT_AMOUNT` varchar(255) NULL,
  `BACK_AMOUNT` varchar(255) NULL,
  `AVIABLED_TIME` varchar(255) NULL,
  `CREATED_TIME` varchar(255) NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` varchar(255) NULL,
  `BATCH_CODE` varchar(255) NULL,
  `CONTRACTOR_ID` varchar(255) NULL,
  `PRICE` varchar(255) NULL,
  `IS_INSURED` varchar(255) NULL,
  `SGMV_SRC_WH_ID` varchar(255) NULL,
  `SGMV_DEST_WH_ID` varchar(255) NULL,
  `ACCIDENT_STATUS` varchar(255) NULL,
  `CONFIG_TRANSCORP_ID` varchar(255) NULL,
  `ORDER_MERGE_TYPE` varchar(255) NULL,
  `VH_INNERCOLOR_ID` varchar(255) NULL,
  `VH_COLOR_CODE` varchar(255) NULL,
  `VH_INNERCOLOR_CODE` varchar(255) NULL,
  `VH_MODEL_CODE` varchar(255) NULL,
  `REAL_MODE` varchar(255) NULL,
  `IS_POSTALORDER` varchar(255) NULL,
  `PRIORITY_NUM` varchar(255) NULL,
  `STD_ARRIVE_TIME` varchar(255) NULL,
  `LATEST_LOADING_TIME` varchar(255) NULL,
  `LATEST_SEG_ARRIVE_TIME` varchar(255) NULL,
  `FINISH_APOINTED_TIME` varchar(255) NULL,
  `CONSIGN_TRANS_TYPE` varchar(255) NULL,
  `TRANSFER_TIMES` varchar(255) NULL,
  `CS_VEHICLE_STATUS` varchar(255) NULL,
  `IS_FREE` varchar(255) NULL,
  `PRINCIPAL` varchar(255) NULL,
  `IS_FIRST` varchar(255) NULL,
  `IS_INVOICED` varchar(255) NULL,
  `FREE_TYPE` varchar(255) NULL,
  `TRANSCORP_ID` varchar(255) NULL,
  `IS_CONSIGNAGENT` varchar(255) NULL,
  `IS_EXTRAVEHICLE` varchar(255) NULL,
  `IS_SPLIT_WAREHOUSE` varchar(255) NULL,
  `SPLIT_WAREHOUSE_ID` varchar(255) NULL,
  `IS_ZF` varchar(255) NULL,
  `PRIORITY_OPERATOR` varchar(255) NULL,
  `PRIORITY_MODIFIED` varchar(255) NULL,
  `IS_CLEARING_FEE` varchar(255) NULL,
  `CDC_ID` varchar(255) NULL,
  `IS_ONLINEPREMATCH` varchar(255) NULL,
  `ORDER_SOURCES` varchar(255) NULL,
  `PLAN_ORDER_DUTY_ID` varchar(255) NULL,
  `VIRTUAL_ORDER_CODE` varchar(255) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_order.csv' INTO TABLE v_anji_order   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;
select * from v_anji_shipment_line limit 10;
select transcorp_id from v_anji_order limit 20;

#v_anji_load
DROP TABLE if exists v_anji_load;
CREATE TABLE `pinche`.`v_anji_load`  (
  `ID` int(255) NULL,
  `SRC_WH_ID` int(255) NULL,
  `DEST_WH_ID` int(255) NULL,
  `CUSTOMER_ID` int(255) NULL,
  `SECOND_LOAD` int(255) NULL,
  `LOAD_GENRE` varchar(255) NULL,
  `TRANS_MODE` varchar(255) NULL,
  `LOAD_TYPE_ID` int(255) NULL,
  `TRANS_CORP_ID` int(255) NULL,
  `TRANS_MEANS_ID` int(255) NULL,
  `DRIVE_WAY` varchar(255) NULL,
  `LOAD_NUMBER` varchar(255) NULL,
  `QUANTITY` varchar(255) NULL,
  `LOADING_TIME` varchar(255) NULL,
  `LEAVING_TIME` varchar(255) NULL,
  `ARRIVING_TIME` varchar(255) NULL,
  `STATE` varchar(255) NULL,
  `REMARK` varchar(255) NULL,
  `IN_AMOUNT` varchar(255) NULL,
  `OUT_AMOUNT` varchar(255) NULL,
  `BACK_AMOUNT` varchar(255) NULL,
  `AVIABLED_TIME` varchar(255) NULL,
  `CREATED_TIME` varchar(255) NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` varchar(255) NULL,
  `FIRST_OPERATOR` varchar(255) NULL,
  `BALANCER_ID` varchar(255) NULL,
  `ACTRANS_MEANS_ID` varchar(255) NULL,
  `TRANS_TYPE` varchar(255) NULL,
  `POSITION` varchar(255) NULL,
  `DUE_ARRIVE_TIME` varchar(255) NULL,
  `POSITION_TIME` varchar(255) NULL,
  `DISTANCE` varchar(255) NULL,
  `LOAD_GROUP_ID` int(255) NULL,
  `MULTI_SRC_WH_ID` varchar(255) NULL,
  `MULTI_DEST_WH_ID` varchar(255) NULL,
  `ISDIRECT` varchar(255) NULL,
  `TRANS_MEANS_ARRIVE_SRC_TIME` varchar(255) NULL,
  `TRANS_MEANS_ARRIVE_DEST_TIME` varchar(255) NULL,
  `LOAD_RECEIVE_WAREHOUSE_TIME` varchar(255) NULL,
  `TRANS_MEANS_LEAVING_SRC_TIME` varchar(255) NULL,
  `TRANS_MEANS_LEAVING_DEST_TIME` varchar(255) NULL,
  `IS_INVOICE` varchar(255) NULL,
  `BATCH_CODE` varchar(255) NULL,
  `CONTRACTOR_ID` varchar(255) NULL,
  `FINISH_UNLOADING_TIME` varchar(255) NULL,
  `SH_TR_PLAN_STARTTIME` varchar(255) NULL,
  `RAILWAY_LEAVING_TIME` varchar(255) NULL,
  `ACT_UNLOAD_TIME` varchar(255) NULL,
  `ANJIBASE_ID` varchar(255) NULL,
  `IS_SGMZX` varchar(255) NULL,
  `FLG` varchar(255) NULL,
  `IS_SUBSIDY` varchar(255) NULL,
  `DRIVERNAME` varchar(255) NULL,
  `DRIVERMOBILE` varchar(255) NULL,
  `DRIVERIDNUMBER` varchar(255) NULL,
  `LOAD_CREATED_SIGN` varchar(255) NULL,
  `IS_NEWORESC` varchar(255) NULL,
  `AUCTION_NO` varchar(255) NULL,
  `SRC_SECONDARY_WH_CODE` varchar(255) NULL,
  `DEST_SECONDARY_WH_CODE` varchar(255) NULL,
  `DISTRIBUTION` varchar(255) NULL,
  `NON_CLOSED_REASON` varchar(255) NULL,
  `REL_DRIVER_WAY` varchar(255) NULL,
  `LOCATION` varchar(255) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_load.csv' INTO TABLE v_anji_load   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;
select * from v_anji_load limit 10;

# v_anji_warehouse
DROP TABLE IF EXISTS v_anji_warehouse;
 CREATE TABLE `pinche`.`v_anji_warehouse`  (
  `ID` int(255) NULL,
  `CODE` varchar(255) NULL,
  `NAME` varchar(255) NULL,
  `ADDRESS` varchar(255) NULL,
  `POSTCODE` varchar(255) NULL,
  `AREA_ID` varchar(255) NULL,
  `CITY_ID` int(255) NULL,
  `LD_ID` varchar(255) NULL,
  `CUSTOMER_CODE` varchar(255) NULL,
  `CONTACT` varchar(255) NULL,
  `PHONE` varchar(255) NULL,
  `FAX` varchar(255) NULL,
  `PROPERTY` varchar(255) NULL,
  `TYPE` varchar(255) NULL,
  `CAPACITY` varchar(255) NULL,
  `INNER_CAPACITY` varchar(255) NULL,
  `OUTER_CAPACITY` varchar(255) NULL,
  `IS_LEGACY` varchar(255) NULL,
  `IS_PDI` varchar(255) NULL,
  `IS_POSITION` varchar(255) NULL,
  `IS_AREA` varchar(255) NULL,
  `IS_NOCONSIGN` varchar(255) NULL,
  `IS_NEED_SYNCHRONIZE` varchar(255) NULL,
  `REMARK` varchar(255) NULL,
  `PARENT_ID` varchar(255) NULL,
  `IS_DISABLED` varchar(255) NULL,
  `CREATED_TIME` varchar(255) NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` varchar(255) NULL,
  `IS_OFFLINE` varchar(255) NULL,
  `AVAILABLE_VH_CAPACITY` varchar(255) NULL,
  `MAX_VH_CAPACITY` varchar(255) NULL,
  `IS_WMS` varchar(255) NULL,
  `TRANS_LD_ID` varchar(255) NULL,
  `IS_REALWH` varchar(255) NULL,
  `IS_TOTOTALSTORE` varchar(255) NULL,
  `E_MAIL` varchar(255) NULL,
  `LEAD_TIME` varchar(255) NULL,
  `LOAD_TIME` varchar(255) NULL,
  `START_TIME` varchar(255) NULL,
  `END_TIME` varchar(255) NULL,
  `DRIVEWAY_POINT` varchar(255) NULL,
  `IS_STD_INTERFACE` varchar(255) NULL,
  `RECORDPHONE` varchar(255) NULL,
  `LATITUDE` varchar(255) NULL,
  `LONGITUDE` varchar(255) NULL,
  `AVAILABLE_DRIVEWAY` varchar(255) NULL,
  `COUNTRY` varchar(255) NULL,
  `ISNEWDW` varchar(255) NULL,
  `NOW_PROVINCE` varchar(255) NULL,
  `NOW_CITY` varchar(255) NULL,
  `NOW_DISTRICT` varchar(255) NULL,
  `NOW_LOCATION` varchar(255) NULL,
  `IS_CROSSDOCK` varchar(255) NULL,
  `WAREHOUSE_ESC_TYPE` varchar(255) NULL,
  `DUTY_AREA` varchar(255) NULL,
  `DAMAGE_TYPE` varchar(255) NULL,
  `DISTRICT_CODE` varchar(255) NULL,
  `CENTRAL_WAREHOUSE_ID` varchar(255) NULL,
  `ELE_FANCE` varchar(255) NULL,
  `IS_DRIVERWAY` varchar(255) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/v_anji_warehouse.csv' INTO TABLE v_anji_warehouse   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;
select * from v_anji_warehouse limit 10;

# 以上数据库建立完成，然后建立索引
create unique index order_id_index on v_anji_order(id);
create index order_availabled_index on v_anji_order(aviabled_time);
create index order_dest_wh_id_index on v_anji_order(dest_wh_id);
create index order_src_wh_id_index on v_anji_order(src_wh_id);
create index order_customer_index on v_anji_order(customer_id);


select * from v_anji_order_son;
create index order_code_index on v_anji_order_son(code);
create unique index order_id_index on v_anji_order_son(id);
create index order_code_index on v_anji_order_son(code);
create index order_customer_index on v_anji_order_son(customer_id);
create index order_src_wh_id_index on v_anji_order_son(src_wh_id);
create index order_dest_wh_id_index on v_anji_order_son(dest_wh_id);
create index order_aviabled_index on v_anji_order_son(aviabled_time);

create index load_group_id_index on v_anji_load(load_group_id);
create unique index load_id_index on v_anji_load(id);
create index load_aviabled_time on v_anji_load(aviabled_time);
create index load_trans_means_id on v_anji_load(trans_means_id);
create index load_dest_wh_id on v_anji_load(dest_wh_id);
create index load_src_wh_id on v_anji_load(src_wh_id);


select * from v_anji_load_son;
create unique index load_id_index on v_anji_load_son(id);
create index load_group_id_index on v_anji_load_son(load_group_id);
create index load_aviabled_time on v_anji_load_son(aviabled_time);
create index load_trans_means_id on v_anji_load_son(trans_means_id);
create index load_dest_wh_id on v_anji_load_son(dest_wh_id);
create index load_src_wh_id on v_anji_load_son(src_wh_id);

select * from v_anji_shipment_son;
create unique index shipment_id_index on v_anji_shipment(id);
create index shipment_order_id_index on v_anji_shipment(order_id);
create index shipment_load_id_index on v_anji_shipment(load_id);
create index shipment_src_wh_index on v_anji_shipment(src_wh_id);
create index shipment_dest_wh_index on v_anji_shipment(dest_wh_id);


create unique index shipment_id_index on v_anji_shipment_son(id);
create index shipment_order_id_index on v_anji_shipment_son(order_id);
create index shipment_load_id_index on v_anji_shipment_son(load_id);
create index shipment_src_wh_index on v_anji_shipment_son(src_wh_id);
create index shipment_dest_wh_index on v_anji_shipment_son(dest_wh_id);

select * from v_anji_shipment_line_son;
create index shipment_lp_shipment_id on v_anji_shipment_line_son(shipment_id);
create index shipment_vehicle_out_src_time on v_anji_shipment_line_son(vehicle_out_src_time);

select * from v_anji_warehouse;
create index warehouse_id on v_anji_warehouse(id);
create index warehouse_ld_id on v_anji_warehouse(ld_id);
alter table v_anji_warehouse modify name varchar(100);
create index warehouse_name_id on v_anji_warehouse(name);


select * from v_anji_lp;
create index lp_id_index on v_anji_lp(id);

select * from v_anji_customer;
create index customer_id_index on v_anji_customer(id);

# 添加索引
# trans_corp_means
create index means_code_index on trans_corp_means(means_code);
create index id_index on trans_corp_means(id);
# v_anji_trans_means
create index code_index on v_anji_trans_means(code);
create index id_index on v_anji_trans_means(id);
# 以上索引建立完成，开始建立综合查询
create table pinche_all as 
select o.id as id, 
	   o.code as code,
       o.AVIABLED_TIME as available_time,
       c.name as customer_name,
       o.src_wh_id as order_src_wh_id,
       src.name as order_src_wh_name,
       o.dest_wh_id as order_dest_wh_id,
       dest.name as order_dest_wh_name,
       s.id as shipment_id,
       s.load_id as schedule_id,
       l.load_group_id as schedule_group_id,
       l.aviabled_time as schedule_time,
       l.trans_means_id as trailer_id,
       s.src_wh_id as shipment_src_wh_id,
       s_src.name as shipment_src_wh_name,
       s.dest_wh_id as shipment_dest_wh_id,
       s_dest.name as shipment_dest_wh_name,
       lp.id as load_position_id,
       lp.name as load_position_name,
       s.prior_id as last_shipment_id,
       s.first_ship_id as first_shipment_id,
       case s.islast
         when 'F' then
          '首段'
         when 'M' then
          '中段'
         when 'L' then
          '终段'
         else
          '其他'
       end as shipment_segment
  from v_anji_order_son     o,
       v_anji_warehouse src,
       v_anji_warehouse dest,
       v_anji_warehouse s_src,
       v_anji_warehouse s_dest,
       v_anji_shipment_son  s,
       v_anji_load_son      l,
       v_anji_customer  c,
       v_anji_lp        lp
 where o.customer_id = c.id 
   and s_dest.ld_id = lp.id
   and s.load_id = l.id
   and s.src_wh_id = s_src.id
   and s.dest_wh_id = s_dest.id
   and o.id = s.order_id
   and o.src_wh_id = src.id
   and o.dest_wh_id = dest.id;
# 创建对应的索引
create index all_schedule_id_index on pinche_all(schedule_id);
create index all_id_index on pinche_all(id);
create index all_code_index on pinche_all(code);
create index all_available_time on pinche_all(available_time);
create index all_schedule_group_id_index on pinche_all(schedule_group_id);
create index all_lp_index on pinche_all(load_position_name);
create index all_dest_id_index on pinche_all(order_dest_wh_id);

# 创建综合大表之后，创建订单出库时间有关信息。
drop table order_out_src_time;
create table order_out_src_time as
select os.code as order_code,min(os.vehicle_out_src_time) as out_src_time from( 
select o.code ,sl.vehicle_out_src_time from 
v_anji_shipment_son s ,v_anji_shipment_line_son sl,v_anji_order_son o
where s.id=sl.shipment_id and
o.id = s.order_id  
) os group by os.code;
create index out_src_time_order_code_index on order_out_src_time(order_code);

# 建立只含有拼车的数据库3334433
drop table if exists pinche_only;
create table pinche_only as 
select * from pinche_all where code not regexp '^[T,S][0-9]' and code not like 'SMC%' 
and shipment_dest_wh_name not like '%非商%' and shipment_src_wh_name not like '%非商%'
and customer_name in ('上汽通用','上汽大众','斯柯达','上汽汽车')
and shipment_segment != '其他';
create index only_code_index on pinche_only(code);

# pinche_order 找出含有拼车行为的订单，即调度次数不等于轿运车次数.1134878(shipment_id为主键)
# 找出含有拼车行为的订单，即同一个订v_anji_lp单下出现一辆轿运车运输两次及以上
drop table if exists pinche_only_v2;
create TEMPORARY table pinche_order as
select code ,trailer_id,count(*) as trailer_num
from pinche_only
group by code,trailer_id
having trailer_num >=2;

create table pinche_only_v2 as
select * from pinche_only a
where a.code in (
select code from pinche_order
);

##################################### 
drop table if exists pinche_otd_v2;
    create table pinche_otd_v2 as
    select order_id ,min(otd) as otd_v2 , min(out_src_date) as out_src_date from(
    select a.order_id,date(a.out_src_time) as out_src_date,date(b.available_time) as available_time,date(a.out_src_time)-date(b.available_time) as otd 
    from order_out_src a left join pinche_order_time b on a.order_id = b.order_id ) dabiao group by order_id

# 创建otd相关的表格！！！
1 建立主订单对应的调度指令组信息
2 建立调度指令组对应的OTD信息
3 建立订单对应的OTD信息
第1步：
create table pinche_order_subschedule as
select a.order_id as code,b.schedule_group_id  as schedule_group_id
from pinche_order a left join pinche_all b on a.order_id = b.code

create table pinche_order_suborder as 
select c.code as code,d.code as sub_code
from pinche_order_subschedule c left join pinche_all d on c.schedule_group_id = d.schedule_group_id 
create index suborder_subcode_index on pinche_order_suborder(sub_code);
第2步：
create table order_time_related as
select a.*, b.out_src_time from
(select  code,min(available_time) as available_time,min(schedule_time)as schedule_time 
from pinche_all 
group by code ) a left join order_out_src_time b on a.code = b.order_code;
create index out_src_code_index on order_time_related(code);
第3步：
drop table pinche_otd;
create table pinche_otd as
select e.order_id as order_id,min(e.otd) as otd from 
(
select a.code as order_id,case 
when b.out_src_time is null then date(b.schedule_time)-date(b.available_time) 
else date(b.out_src_time)-date(b.available_time) end as otd  
from pinche_order_suborder a left join order_time_related b
on a.sub_code = b.code
) e 
group by e.order_id;

# test
select * from order_time_related
where code = '2109592955';
# 

drop table if exists pinche_otd;
    create table pinche_otd as
    select order_id ,min(otd) as otd , min(out_src_date) as out_src_date from(
    select a.order_id,date(a.out_src_time) as out_src_date,date(b.available_time) as available_time,date(a.out_src_time)-date(b.available_time) as otd 
    from order_out_src a left join pinche_order_time b on a.order_id = b.order_id ) dabiao group by order_id;
# 查找异常数据
SELECT * FROM pinche.v_anji_warehouse WHERE id=45958;
# 查找非大众系所有经销商的gps地址。 
select * from 
(
select distinct order_dest_wh_id FROM pinche.pinche_all where customer_name!= '上汽大众'
) a left join v_anji_warehouse b on b.id = a.order_dest_wh_id 
where b.is_legacy = 0;

# 意向方向有关的表格全部是direction开头 ###########################################
# 采用近似方法，某大板车当天被上报过且被调度过就认为完成一次匹配。
# 获取上报运力 
drop table if exists direction_shangbao_raw;
create table direction_shangbao_raw as
select a.id, a.first_time as schedule_time, date(a.first_time) as schedule_date,a.depart_old_name, a.direction_city,a.direction_province,b.id as trailer_id from trans_corp_means a left join v_anji_trans_means b on a.means_code=b.code WHERE 
a.state in('V','E') and a.first_time>='2016-01-01 00:00:00' and a.first_time < '2017-07-01 00:00:00' and b.is_virtual=0 ; 
alter table direction_shangbao_raw modify depart_old_name varchar(20);
create index depart_index on direction_shangbao_raw(depart_old_name);

drop table if exists direction_shangbao;
create table direction_shangbao as 
select a.*,d.NOW_PROVINCE as sb_start_province,d.NOW_CITY as sb_start_city from
direction_shangbao_raw a left join 
(
select name,NOW_PROVINCE,NOW_CITY from v_anji_warehouse where id in
(select min(id) as id from v_anji_warehouse group by name)
) d
on a.depart_old_name = d.name;

# 添加索引
create index id_index on direction_shangbao(trailer_id);
create index schedule_date_index on direction_shangbao(schedule_date);
#create index depart_index on direction_shangbao(depart_old_name);
alter table direction_shangbao modify depart_old_name varchar(20);
create index depart_index on direction_shangbao(depart_old_name);
# 去重
delete from direction_shangbao 
where id not in
(
select id from
(select min(id) as id from direction_shangbao group by schedule_date, trailer_id) new_table
);

# 提取调度的意向方向等有关信息 ###################################################
drop table if exists direction_load_dest;
CREATE table direction_load_dest as
select a.id as id,a.src_wh_id as src_wh_id,a.dest_wh_id as dest_wh_id,a.state as state,a.load_group_id as load_group_id,date(a.aviabled_time) as schedule_date,a.trans_means_id as trans_means_id, 
b.NOW_PROVINCE as load_dest_province,b.NOW_CITY as load_dest_city from v_anji_load_son a  join v_anji_warehouse b on  a.dest_wh_id = b.id where a.aviabled_time>='2016-01-01 00:00:00' and a.aviabled_time < '2017-07-01 00:00:00';

create table direction_load as
select a.*, c.name as load_start_name,c.NOW_PROVINCE as load_start_province,c.NOW_CITY as load_start_city
from direction_load_dest a join v_anji_warehouse c
on a.src_wh_id = c.id; 

# 添加索引
create index trans_means_id_index on direction_load(trans_means_id);
create index schedule_date_index on direction_load(schedule_date);
create index src_index on direction_load(src_wh_id);
# 去重
delete from direction_load
where id not in
(
select id from
(select min(id) as id from direction_load group by schedule_date, trans_means_id) new_table
);

# 上报运力当天调度情况 200多万
drop table if exists direction_sb_load;
create table direction_sb_load as 
select a.*,d.NOW_PROVINCE as sb_start_province,d.NOW_CITY as sb_start_city, c.NOW_PROVINCE as load_start_province,c.NOW_CITY as load_start_city, b.src_wh_id,b.load_group_id,b.dest_province as load_dest_province,b.dest_city as load_dest_city from direction_shangbao a ,direction_load_dest b,v_anji_warehouse c ,v_anji_warehouse d
where a.schedule_date = b.schedule_date and a.trailer_id=b.trans_means_id and b.src_wh_id = c.id and a.depart_old_name = d.name;
# 上报运力当天调度情况，有脏数据重写 110万
drop table if exists direction_sb_load;
create table direction_sb_load as 
select a.*, c.name as load_start_name,c.NOW_PROVINCE as load_start_province,c.NOW_CITY as load_start_city, b.src_wh_id,b.load_group_id,b.dest_province as load_dest_province,b.dest_city as load_dest_city from direction_shangbao a ,direction_load_dest b,v_anji_warehouse c 
where a.schedule_date = b.schedule_date and a.trailer_id=b.trans_means_id and b.src_wh_id = c.id ;
# 脏数据重写
drop table if exists direction_sb_load;
create table direction_sb_load as 
select a.*, b.load_start_name,b.load_start_city,b.load_start_province,b.load_dest_province ,b.load_dest_city from direction_shangbao a ,direction_load b
where a.schedule_date = b.schedule_date and a.trailer_id=b.trans_means_id 

# 采集通用2016年订单信息
select a.available_time,month(available_time) as month,a.latitude,a.longitude from
(SELECT distinct * FROM pinche.LSG_order_2016) a;

# 创建时间处理函数
DROP FUNCTION IF EXISTS tms_str_date;
DELIMITER $$
CREATE FUNCTION tms_str_date(timestr varchar(255))
RETURNS datetime
begin
	declare x datetime ;
	set x = case right(timestr,2)
	when  '上午' then str_to_date(replace(timestr,'上午','AM'),'%d-%m月-%y %h.%i.%s.%f0 %p')
	 
	when  '下午' then str_to_date(replace(timestr,'下午','PM'),'%d-%m月-%y %h.%i.%s.%f0 %p')
			
	else null 
	end;
	return x;
end;
$$
# 修改order表时间格式
update v_anji_order set 
leaving_time = tms_str_date(leaving_time),
arriving_time = tms_str_date(arriving_time),
bill_date = tms_str_date(bill_date),
aviabled_time = tms_str_date(aviabled_time),
created_time = tms_str_date(created_time),
last_modified = tms_str_date(last_modified);
# 修改调度表时间格式
update v_anji_load set
loading_time = tms_str_date(loading_time),
leaving_time = tms_str_date(leaving_time),
arriving_time = tms_str_date(arriving_time),
aviabled_time = tms_str_date(aviabled_time),
created_time = tms_str_date(created_time),
last_modified = tms_str_date(last_modified);
#
update v_anji_shipment set 
created_time = tms_str_date(created_time);

update v_anji_load set aviabled_time = tms_str_date(aviabled_time)
update v_anji_load set loading_time = tms_str_date(loading_time)

update v_anji_order set aviabled_time = tms_str_date(aviabled_time)
update v_anji_order set leaving_time = tms_str_date(leaving_time)
update v_anji_order set arriving_time = tms_str_date(arriving_time)

#  创建多库拼车新表20171115
create table pinche_all_20171116 as 
select o.id as id, 
	   o.code as code,
       c.name as customer_name,
       o.src_wh_id as order_src_wh_id,
       src.name as order_src_wh_name,
       o.dest_wh_id as order_dest_wh_id,
       dest.name as order_dest_wh_name,
       s.id as shipment_id,
       s.load_id as schedule_id,
       l.load_group_id as schedule_group_id,
       l.aviabled_time as schedule_time,
       l.trans_means_id as trailer_id,
       s.src_wh_id as shipment_src_wh_id,
       s_src.name as shipment_src_wh_name,
       s.dest_wh_id as shipment_dest_wh_id,
       s_dest.name as shipment_dest_wh_name,
       lp.id as load_position_id,
       lp.name as load_position_name,
       s.prior_id as last_shipment_id,
       s.first_ship_id as first_shipment_id,
       s.islast as shipment_segment
  from zhu_order_2016     o,
       v_anji_warehouse src,
       v_anji_warehouse dest,
       v_anji_warehouse s_src,
       v_anji_warehouse s_dest,
       zhu_shipment_2016  s,
       zhu_load_2016      l,
       v_anji_customer  c,
       v_anji_lp        lp
 where o.customer_id = c.id 
   and s_dest.ld_id = lp.id
   and s.load_id = l.id
   and s.src_wh_id = s_src.id
   and s.dest_wh_id = s_dest.id
   and o.id = s.order_id
   and o.src_wh_id = src.id
   and o.dest_wh_id = dest.id
   and s.shipment_state != 'C'
   and s.islast = 'F'
   and o.state not in ('C','L')
   

create table zhu_order_2016 as 
select * from v_anji_order
where aviabled_time>=date(20160101);
create table zhu_load_2016 as 
select * from v_anji_load
where aviabled_time>=date(20160101);
create table zhu_shipment_2016 as 
select * from v_anji_shipment
where created_time>=date(20160101)
# 建立对应的索引
create unique index load_id_index on zhu_load_2016(id);
create index load_group_id_index on zhu_load_2016(load_group_id);
create index load_aviabled_time on zhu_load_2016(aviabled_time);
create index load_trans_means_id on zhu_load_2016(trans_means_id);
create index load_dest_wh_id on zhu_load_2016(dest_wh_id);
create index load_src_wh_id on zhu_load_2016(src_wh_id);

create unique index order_id_index on zhu_order_2016(id);
create index order_customer_index on zhu_order_2016(customer_id);
create index order_src_wh_id_index on zhu_order_2016(src_wh_id);
create index order_dest_wh_id_index on zhu_order_2016(dest_wh_id);
create index order_aviabled_index on zhu_order_2016(aviabled_time);

create unique index shipment_id_index on zhu_shipment_2016(id);
create index shipment_order_id_index on zhu_shipment_2016(order_id);
create index shipment_load_id_index on zhu_shipment_2016(load_id);
create index shipment_src_wh_index on zhu_shipment_2016(src_wh_id);
create index shipment_dest_wh_index on zhu_shipment_2016(dest_wh_id);

create index shcedule_group_id_index on pinche_all_20171116(schedule_group_id);
create index order_id_index on pinche_all_20171116(id);
create index order_src_wh_id_index on pinche_all_20171116(order_src_wh_id);
create index shipment_id_index on pinche_all_20171116(shipment_id);
create index trailer_id_index on pinche_all_20171116(trailer_id);
create index schedule_time_index on pinche_all_20171116(schedule_time);

#
select * from
(
select schedule_group_id,count(distinct order_src_wh_id) from pinche_all_20171116 group by schedule_group_id having count(distinct order_src_wh_id)>=2
) a left join pinche_all_20171116 b on a.schedule_group_id = b.schedule_group_id

select * from pinche_all_20171116 where schedule_group_id = 14704521 or schedule_group_id = 14768417

select * from v_anji_shipment where  order_id = 76353329
select * from v_anji_shipment where  load_group_id = 15167675
select * from v_anji_shipment where  load_group_id = 14704625

select * from v_anji_load where id = 16240303
select tms_str_date('12-6月 -17 07.59.29.6090000 下午')

#  创建多库拼车新表20171117
create table pinche_all_20171117 as 
select o.id as id, 
	   o.code as code,
       c.name as customer_name,
       o.src_wh_id as order_src_wh_id,
       src.name as order_src_wh_name,
       o.dest_wh_id as order_dest_wh_id,
       dest.name as order_dest_wh_name,
       s.id as shipment_id,
       s.load_id as schedule_id,
       s.trans_mode as trans_mode,
       l.load_group_id as schedule_group_id,
       l.aviabled_time as schedule_time,
       l.trans_means_id as trailer_id,
       s.src_wh_id as shipment_src_wh_id,
       s_src.name as shipment_src_wh_name,
       s.dest_wh_id as shipment_dest_wh_id,
       s_dest.name as shipment_dest_wh_name,
       lp.id as load_position_id,
       lp.name as load_position_name,
       s.prior_id as last_shipment_id,
       s.first_ship_id as first_shipment_id,
       s.islast as shipment_segment
  from zhu_order_2016     o,
       v_anji_warehouse src,
       v_anji_warehouse dest,
       v_anji_warehouse s_src,
       v_anji_warehouse s_dest,
       zhu_shipment_2016  s,
       zhu_load_2016      l,
       v_anji_customer  c,
       v_anji_lp        lp
 where o.customer_id = c.id 
   and s_dest.ld_id = lp.id
   and s.load_id = l.id
   and s.src_wh_id = s_src.id
   and s.dest_wh_id = s_dest.id
   and o.id = s.order_id
   and o.src_wh_id = src.id
   and o.dest_wh_id = dest.id
   and s.shipment_state != 'C'
   and o.state not in ('C','L')
   
# 加主键
alter table v_anji_order add primary key(id);
alter table v_anji_shipment add primary key(id);
alter table zhu_order_2016 add primary key(id);
alter table v_anji_warehouse add primary key(id);
alter table zhu_shipment_2016 add primary key(id);
alter table zhu_load_2016 add primary key(id);
alter table v_anji_customer add primary key(id);
alter table v_anji_lp add primary key(id);



create index shcedule_group_id_index on pinche_all_20171117(schedule_group_id);
create index order_id_index on pinche_all_20171117(id);
create index order_src_wh_id_index on pinche_all_20171117(order_src_wh_id);
create index shipment_id_index on pinche_all_20171117(shipment_id);
create index trailer_id_index on pinche_all_20171117(trailer_id);
create index schedule_time_index on pinche_all_20171117(schedule_time);

select * from pinche_all_20171116 where shipment_src_wh_name like '%仪征%' and shipment_dest_wh_name like '%马集%'
select * from pinche_all_20171116 where shipment_src_wh_name like '%马集%' and shipment_dest_wh_name like '%仪征%'

select * from pinche_all_20171116 where shipment_src_wh_name like '%安亭%' and shipment_dest_wh_name like '%金桥%'
select * from pinche_all_20171117 where schedule_group_id = 15016202



#
create table zhu_MultiSend as 
(
SELECT 
    a.schedule_group_id as load_group_id,b.*
FROM
    (SELECT 
        distinct schedule_group_id
    FROM
        pinche_all_20171117
	where trans_mode = 'R'
    GROUP BY schedule_group_id
    HAVING COUNT(DISTINCT order_src_wh_id) >= 2) a
        LEFT JOIN
    pinche_all_20171117 b ON a.schedule_group_id = b.schedule_group_id 
)

# 按以前的后段拼车方法寻找多库发运记录
# 建立只含有拼车的数据库3334433
drop table if exists zhu_MultiSend_v1;
create table zhu_MultiSend_v1 as 
select * from pinche_all_20171117 where code not regexp '^[T,S][0-9]' and code not like 'SMC%' 
and shipment_dest_wh_name not like '%非商%' and shipment_src_wh_name not like '%非商%'
and customer_name in ('上汽通用','上汽大众','斯柯达','上汽汽车')
and shipment_segment != 'N'
and trans_mode = 'R';
create index only_code_index on zhu_MultiSend_v1(code);

# pinche_order 找出含有拼车行为的订单，即调度次数不等于轿运车次数.1134878(shipment_id为主键)
# 找出含有拼车行为的订单，即同一个订v_anji_lp单下出现一辆轿运车运输两次及以上
drop table if exists zhu_MultiSend_v2;
create TEMPORARY table pinche_order_v2 as
select code ,trailer_id,count(*) as trailer_num
from zhu_MultiSend_v1
group by code,trailer_id
having trailer_num >=2;

create table zhu_MultiSend_v2 as
select * from zhu_MultiSend_v1 a
where a.code in (
select code from pinche_order_v2
);

select * from zhu_MultiSend_v2 where code = 16048793120

# v_anji_order_180
DROP TABLE IF EXISTS v_anji_order_180;
 CREATE TABLE `pinche`.`v_anji_order_180`  (
  `ID` int(255) NULL,
  `CODE` varchar(255) NULL,
  `ORDER_TYPE` varchar(255) NULL,
  `CONSIGN_TYPE` varchar(255) NULL,
  `OWNER` varchar(255) NULL,
  `PRIORITY` varchar(255) NULL,
  `IS_CONSIGN` varchar(255) NULL,
  `STATE` varchar(255) NULL,
  `REMARK` varchar(255) NULL,
  `CUSTOMER_ID` int(255) NULL,
  `RETAILER_ID` int(255) NULL,
  `SRC_WH_ID` int(255) NULL,
  `DEST_WH_ID` int(255) NULL,
  `LEAVING_TIME` varchar(255) NULL,
  `ARRIVING_TIME` varchar(255) NULL,
  `TRANS_MODE` varchar(255) NULL,
  `PARENT_ID` varchar(255) NULL,
  `VH_COLOR_ID` varchar(255) NULL,
  `VH_MODEL_ID` varchar(255) NULL,
  `CONFIG` varchar(255) NULL,
  `QUANTITY` varchar(255) NULL,
  `BILL_DATE` varchar(255) NULL,
  `IS_EXTRA` varchar(255) NULL,
  `IS_DAMAGE` varchar(255) NULL,
  `APPOINT_CAR` varchar(255) NULL,
  `IN_AMOUNT` varchar(255) NULL,
  `OUT_AMOUNT` varchar(255) NULL,
  `BACK_AMOUNT` varchar(255) NULL,
  `AVIABLED_TIME` varchar(255) NULL,
  `CREATED_TIME` varchar(255) NULL,
  `LAST_MODIFIED` varchar(255) NULL,
  `LAST_OPERATOR` varchar(255) NULL,
  `BATCH_CODE` varchar(255) NULL,
  `CONTRACTOR_ID` varchar(255) NULL,
  `PRICE` varchar(255) NULL,
  `IS_INSURED` varchar(255) NULL,
  `SGMV_SRC_WH_ID` varchar(255) NULL,
  `SGMV_DEST_WH_ID` varchar(255) NULL,
  `ACCIDENT_STATUS` varchar(255) NULL,
  `CONFIG_TRANSCORP_ID` varchar(255) NULL,
  `ORDER_MERGE_TYPE` varchar(255) NULL,
  `VH_INNERCOLOR_ID` varchar(255) NULL,
  `VH_COLOR_CODE` varchar(255) NULL,
  `VH_INNERCOLOR_CODE` varchar(255) NULL,
  `VH_MODEL_CODE` varchar(255) NULL,
  `REAL_MODE` varchar(255) NULL,
  `IS_POSTALORDER` varchar(255) NULL,
  `PRIORITY_NUM` varchar(255) NULL,
  `STD_ARRIVE_TIME` varchar(255) NULL,
  `LATEST_LOADING_TIME` varchar(255) NULL,
  `LATEST_SEG_ARRIVE_TIME` varchar(255) NULL,
  `FINISH_APOINTED_TIME` varchar(255) NULL,
  `CONSIGN_TRANS_TYPE` varchar(255) NULL,
  `TRANSFER_TIMES` varchar(255) NULL,
  `CS_VEHICLE_STATUS` varchar(255) NULL,
  `IS_FREE` varchar(255) NULL,
  `PRINCIPAL` varchar(255) NULL,
  `IS_FIRST` varchar(255) NULL,
  `IS_INVOICED` varchar(255) NULL,
  `FREE_TYPE` varchar(255) NULL,
  `TRANSCORP_ID` varchar(255) NULL,
  `IS_CONSIGNAGENT` varchar(255) NULL,
  `IS_EXTRAVEHICLE` varchar(255) NULL,
  `IS_SPLIT_WAREHOUSE` varchar(255) NULL,
  `SPLIT_WAREHOUSE_ID` varchar(255) NULL,
  `IS_ZF` varchar(255) NULL,
  `PRIORITY_OPERATOR` varchar(255) NULL,
  `PRIORITY_MODIFIED` varchar(255) NULL,
  `IS_CLEARING_FEE` varchar(255) NULL,
  `CDC_ID` varchar(255) NULL,
  `IS_ONLINEPREMATCH` varchar(255) NULL,
  `ORDER_SOURCES` varchar(255) NULL,
  `PLAN_ORDER_DUTY_ID` varchar(255) NULL,
  `VIRTUAL_ORDER_CODE` varchar(255) NULL
);
LOAD DATA LOCAL INFILE '/backup/TMS/order180.csv' INTO TABLE v_anji_order_180   FIELDS  TERMINATED by ',' enclosed by '"'  lines terminated by '\n'
ignore 1 lines;

update v_anji_order_180 set
AVIABLED_TIME = tms_str_date(AVIABLED_TIME),
CREATED_TIME = tms_str_date(CREATED_TIME);


