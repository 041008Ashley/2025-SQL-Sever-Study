sp_help sprb

--spzd
--����ָ��Ҫ�����spzd 1
select spbh,dlbh,zlbh,xlbh,gysbh from spzd
--��1�Ļ���������dlbh=10������ 2
select spbh,dlbh,zlbh,xlbh,gysbh from spzd where dlbh='10'
--��2�Ļ��������ӿ��������0 3
select spbh,dlbh,zlbh,xlbh,gysbh,kcs from spzd where dlbh='10' and kcs>0

--��1�Ļ��������ӽ������ڴ��ڵ���2025-1-1 4
select spbh,dlbh,zlbh,xlbh,gysbh,jlrq from spzd where jlrq >= '2025-1-1'

--����ÿ�������ж��ٸ���Ʒ�����մ���������
select dlbh,COUNT(*) from spzd group by dlbh order by dlbh

--��ѯ��Ʒ���ƴ���������ѡ��������Ʒ
select * from spzd where spmc like '������ѡ%'

select * from spzd where spmc like '%������ѡ'

select * from spzd where spmc like '%������ѡ%'

--�����ۡ�5�����������ڡ�2024-6-1���ı���
select * from spzd where zhjj > 5 and zhrkrq > '2022-6-1' and spqc like '%��%'

select count(*) from spzd where zhjj > 5 and zhrkrq > '2022-6-1' and spqc like '%��%'

select dlbh,SUM(kcs),SUM(kcje) from spzd where zhjj > 5 and zhrkrq > '2022-6-1' and spqc like '%��%' group by dlbh order by dlbh desc
--------------------------
--sprb(rq,spbh,fdbh,brxss,brxse)
select max(rq) from sprb 
select min(rq) from sprb 
--rq>=2024-1-1
select rq,spbh,fdbh,brxss,brxse from sprb where rq>='2024-1-1'

--�������ڻ��ܱ������۶��������
select rq,sum(brxse),sum(brxss) from sprb where rq>='2024-7-1' group by rq

--����sp���ܱ������۶��������  rq>='2024-7-1'
select spbh,sum(brxse),sum(brxss) from sprb where rq>='2024-7-1' group by spbh
select spbh,sum(brxse),sum(brxss) from sprb where rq>='2024-7-1' group by spbh

--��ѯdlbh=26����Ʒ��2024-7-1�������������۶չʾ����rq,��Ʒ��ţ���Ʒ���ƣ�dlbh�������������۶�

select * from spzd a,sprb b where a.spbh=b.spbh and b.rq='2024-7-1'

--�������ڣ���Ʒ��ţ���Ʒ���ƣ�dlbh��sum(brxss),sum(brxse)

select b.rq,b.spbh,a.spmc,a.dlbh,SUM(b.brxss) as brxss,SUM(b.brxse) from spzd a,sprb b where a.spbh = b.spbh and b.rq = '2024-7-1' group by b.rq,b.spbh,a.spmc,a.dlbh
select b.spbh,a.spmc,a.dlbh,SUM(b.brxss),SUM(b.brxse) from spzd a,sprb b where a.spbh = b.spbh and b.rq >= '2024-7-1' and b.rq <= '2024-7-2' group by b.spbh,a.spmc,a.dlbh
select b.spbh,a.spmc,a.dlbh,c.dlmc,SUM(b.brxss) as brxss,SUM(b.brxse) as brxse from spzd a,sprb b,dlzd c where a.spbh = b.spbh and b.dlbh=c.dlbh and b.rq >= '2024-7-1' and b.rq <= '2024-7-2' group by b.spbh,a.spmc,a.dlbh,c.dlmc

--�����ķ���
select dlbh,COUNT(distinct spbh) from spzd group by dlbh having COUNT(distinct spbh)>20

select dlbh,COUNT(distinct spbh) from spzd group by dlbh having COUNT(distinct spbh)>20 order by COUNT(distinct spbh) desc

select COUNT(*) from sprb where rq='2024-7-1'

select COUNT(*) from sprb where rq='2024-7-2'

select COUNT(*) from spzd 


--25292

select a.spbh,SUM(a.brxss) as brxss,SUM(a.brxse) as brxse,b.spbh, b.spmc from spzd as b left join sprb as a on (a.spbh=b.spbh and a.rq<='2024-7-2' and a.rq>='2024-7-1' )group by a.spbh,b.spbh ,b.spmc







--

