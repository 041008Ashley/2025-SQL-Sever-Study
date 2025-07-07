sp_help sprb

--spzd
--按照指定要求检索spzd 1
select spbh,dlbh,zlbh,xlbh,gysbh from spzd
--在1的基础上增加dlbh=10的条件 2
select spbh,dlbh,zlbh,xlbh,gysbh from spzd where dlbh='10'
--在2的基础上增加库存数大于0 3
select spbh,dlbh,zlbh,xlbh,gysbh,kcs from spzd where dlbh='10' and kcs>0

--在1的基础上增加建立日期大于等于2025-1-1 4
select spbh,dlbh,zlbh,xlbh,gysbh,jlrq from spzd where jlrq >= '2025-1-1'

--汇总每个大类有多少个商品并按照大类编号排序
select dlbh,COUNT(*) from spzd group by dlbh order by dlbh

--查询商品名称带有西范优选字样的商品
select * from spzd where spmc like '西范优选%'

select * from spzd where spmc like '%西范优选'

select * from spzd where spmc like '%西范优选%'

--最后进价》5，最后入库日期》2024-6-1，的杯子
select * from spzd where zhjj > 5 and zhrkrq > '2022-6-1' and spqc like '%杯%'

select count(*) from spzd where zhjj > 5 and zhrkrq > '2022-6-1' and spqc like '%杯%'

select dlbh,SUM(kcs),SUM(kcje) from spzd where zhjj > 5 and zhrkrq > '2022-6-1' and spqc like '%杯%' group by dlbh order by dlbh desc
--------------------------
--sprb(rq,spbh,fdbh,brxss,brxse)
select max(rq) from sprb 
select min(rq) from sprb 
--rq>=2024-1-1
select rq,spbh,fdbh,brxss,brxse from sprb where rq>='2024-1-1'

--按照日期汇总本日销售额本日销售数
select rq,sum(brxse),sum(brxss) from sprb where rq>='2024-7-1' group by rq

--按照sp汇总本日销售额本日销售数  rq>='2024-7-1'
select spbh,sum(brxse),sum(brxss) from sprb where rq>='2024-7-1' group by spbh
select spbh,sum(brxse),sum(brxss) from sprb where rq>='2024-7-1' group by spbh

--查询dlbh=26的商品在2024-7-1的销售数，销售额，展示按照rq,商品编号，商品名称，dlbh，销售数，销售额

select * from spzd a,sprb b where a.spbh=b.spbh and b.rq='2024-7-1'

--按照日期，商品编号，商品名称，dlbh，sum(brxss),sum(brxse)

select b.rq,b.spbh,a.spmc,a.dlbh,SUM(b.brxss) as brxss,SUM(b.brxse) from spzd a,sprb b where a.spbh = b.spbh and b.rq = '2024-7-1' group by b.rq,b.spbh,a.spmc,a.dlbh
select b.spbh,a.spmc,a.dlbh,SUM(b.brxss),SUM(b.brxse) from spzd a,sprb b where a.spbh = b.spbh and b.rq >= '2024-7-1' and b.rq <= '2024-7-2' group by b.spbh,a.spmc,a.dlbh
select b.spbh,a.spmc,a.dlbh,c.dlmc,SUM(b.brxss) as brxss,SUM(b.brxse) as brxse from spzd a,sprb b,dlzd c where a.spbh = b.spbh and b.dlbh=c.dlbh and b.rq >= '2024-7-1' and b.rq <= '2024-7-2' group by b.spbh,a.spmc,a.dlbh,c.dlmc

--计数的分组
select dlbh,COUNT(distinct spbh) from spzd group by dlbh having COUNT(distinct spbh)>20

select dlbh,COUNT(distinct spbh) from spzd group by dlbh having COUNT(distinct spbh)>20 order by COUNT(distinct spbh) desc

select COUNT(*) from sprb where rq='2024-7-1'

select COUNT(*) from sprb where rq='2024-7-2'

select COUNT(*) from spzd 


--25292

select a.spbh,SUM(a.brxss) as brxss,SUM(a.brxse) as brxse,b.spbh, b.spmc from spzd as b left join sprb as a on (a.spbh=b.spbh and a.rq<='2024-7-2' and a.rq>='2024-7-1' )group by a.spbh,b.spbh ,b.spmc







--

