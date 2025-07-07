sql server 常用的系统存储过程
 

系统存储过程
说明

sp_databases
列出服务上的所有数据库

sp_helpdb
报告有关指定数据库或所有数据库的信息

sp_renamedb
更改数据库的名称

sp_tables
返回当前环境下可查询的对象的列表

sp_columns
返回某个表列的信息

sp_help
返回某个表的所有信息

sp_helpconstraint
查看某个表的约束

sp_helpindex
查看某个表的索引

sp_password
添加或修改登录账户的密码

sp_helptext

显示默认值，未加密的存储过程、用户定义的

存储过程、触发器或视图的实际文本

--Purpose:常用系统存储过程的使用

EXEC sp_databases   --列出当前系统中的数据库

EXEC sp_renamedb 'Northwind','Northwind1'   --改变数据库名称（单用户访问）

USE master

GO

EXEC sp_tables  --当前数据库中可查询对象的列表

EXEC sp_columns stuInfo   --查看表stuInfo中列的信息

EXEC sp_help stuInfo  --查看表stuInfo中的所有信息

EXEC sp_helpconstraint stuInfo  --查看表stuInfo的约束

EXEC sp_helpindex stuMarks   --查询表stuMarks的索引

EXEC sp_helptext 'view_stuInfo_stuMarks'   --查看视图的语句文本

EXEC sp_stored_procedures  --返回当前数据库中的存储过程列表

 

 

Sql Server 常用系统存储过程大全
-- 更详细的介结参考联机帮助文档

xp_cmdshell --*执行DOS各种命令，结果以文本行返回。

xp_fixeddrives --*查询各磁盘/分区可用空间

xp_loginconfig --*报告SQL Server 实例在Windows 上运行时的登录安全配置

xp_logininfo --*返回有关Windows 认证登录的信息。

xp_msver --*返回有关Microsoft SQL Server 的版本信息

xp_enumgroups    --返回Windows用户组列表或在指定域中的全局组列表。

xp_sendmail  --将电子邮件发送给指定的收件人(后续版本将删除该功能)。

xp_readmail --阅读SQL Mail收件箱中的邮件(后续版本将删除该功能)。

xp_deletemail --删除Microsoft SQL Server 收件箱中的邮件(后续版本将删除该功能)。

xp_startmail --通过该过程启动SQL Mail将返回两条消息,主要用于故障排除。

xp_stopmail --停止SQL 邮件客户端会话(后续版本将删除该功能)。

xp_grantlogin  --授予Windows 组或用户对SQL Server 的访问权限(后续版本将删除该功能)。

xp_revokelogin   --撤消Windows 组或用户对SQL Server 的访问权限(后续版本将删除该功能)。

xp_logevent --将用户定义消息记入SQL Server 日志文件和Windows 事件查看器。

xp_sprintf --设置一系列字符和值的格式并将其存储到字符串输出参数中。每个格式参数都用相应的参数替换。

xp_sqlmaint --使用包含sqlmaint 开关的字符串调用sqlmaint 实用工具(后续版本将删除该功能)。

xp_sscanf      --将数据从字符串读入每个格式参数所指定的参数位置。

sp_ActiveDirectory_Obj --控制数据库在Windows活动目录中的注册。

sp_ActiveDirectory_SCP  --控制已连接实例的数据库在Windows活动目录中的注册。

sp_add_agent_parameter --将新参数及其值添加到代理配置文件中。

sp_add_agent_profile --为复制代理创建新的配置文件。

sp_add_alert --创建一个警报。

sp_add_category --将指定的作业、警报或操作员类别添加到服务器中。

sp_add_job --*添加由SQLServerAgent 服务执行的新作业。

sp_add_jobschedule --*创建作业计划。

sp_add_jobserver --在指定的服务器中，以指定的作业为目标。

sp_add_jobstep --*在作业中添加一个步骤（操作）。

sp_add_log_shipping_alert_job  --检查是否已在此服务器上创建了警报作业，无则创建。

sp_add_log_shipping_primary_database --设置日志传送配置（包括备份作业、本地监视记录及远程监视记录）的主数据库。

sp_add_log_shipping_primary_secondary --在主服务器上添加辅助数据库项。

sp_add_log_shipping_secondary_database --为日志传送设置辅助数据库。

sp_add_log_shipping_secondary_primary --为指定的主数据库设置主服务器信息，添加本地和远程监视器链接，并在辅助服务器上创建复制作业和还原作业。

sp_add_maintenance_plan --添加维护计划并返回计划ID(后续版本将删除该功能)。

sp_add_maintenance_plan_db --将数据库与维护计划关联(后续版本将删除该功能)。

sp_add_maintenance_plan_job --将维护计划与现有作业关联(后续版本将删除该功能)。

sp_add_notification --设置警报通知。

sp_add_operator --创建用于警报和作业的操作员（通知收件人）。

sp_add_proxy --添加指定SQL Server 代理的代理帐户。

sp_add_schedule --创建一个可由任意数量的作业使用的计划。

sp_add_targetservergroup --添加指定的服务器组。

sp_add_targetsvrgrp_member --将指定的目标服务器添加到指定的目标服务器组。

sp_addapprole --向当前数据库中添加应用程序角色(后续版本将删除该功能)。

sp_addarticle --创建项目并将其添加到发布中。

sp_adddistpublisher --配置发布服务器以使用指定的分发数据库。

sp_adddistributiondb --创建新的分发数据库并安装分发服务器架构。

sp_adddistributor --在分发服务器上对主数据库执行以注册服务器，并将其标记为分发服务器。

sp_adddynamicsnapshot_job --创建一个代理作业，该代理作业可为具有参数化行筛选器的发布生成筛选数据快照。

sp_addextendedproc --向Microsoft SQL Server 注册新扩展存储过程的名称(后续版本将删除该功能)。

sp_addextendedproperty --将新扩展属性添加到数据库对象中。

sp_addlinkedserver --*创建链接服务器。

sp_addlinkedsrvlogin --*添加链接服务器登录映射。

sp_addlogin --创建新的SQL Server 登录(后续版本将删除该功能)。

sp_addlogreader_agent --为给定数据库添加日志读取器代理。

sp_addmergealternatepublisher --为订阅服务器添加使用备用同步伙伴的功能。

sp_addmergearticle --在现有的合并发布中添加项目。

sp_addmergefilter --添加新合并筛选以创建基于与另一个表的联接的分区。

sp_addmergepartition --为在订阅服务器上按HOST_NAME 或SUSER_SNAME 的值进行筛选的订阅创建动态筛选分区。

sp_addmergepublication --创建新合并发布。

sp_addmergepullsubscription --添加对合并发布的请求订阅。

sp_addmergepullsubscription_agent --向合并发布添加一个用于计划请求订阅同步的新代理作业。

sp_addmergepushsubscription_agent --添加一个新代理作业，用于制定合并发布推送订阅的同步计划。

sp_addmergesubscription --创建推送合并订阅或请求合并订阅。

sp_addmessage --将新的用户定义错误消息存储在SQL Server 数据库引擎实例中。

sp_addpublication --创建快照或事务发布。

sp_addpublication_snapshot --为指定的发布创建快照代理。

sp_addpullsubscription --将请求订阅添加到快照或事务发布。

sp_addpullsubscription_agent --向事务发布添加用于同步请求订阅的全新预定的代理作业。

sp_addpushsubscription_agent --添加新的预定代理作业，以使推送订阅与事务发布同步。

sp_addqreader_agent --为给定分发服务器添加队列读取器代理。

sp_addremotelogin --在本地服务器上添加新的远程登录ID(后续版本将删除该功能)。

sp_addrole --在当前数据库中创建新的数据库角色(后续版本将删除该功能)。

sp_addrolemember --为当前数据库中的数据库角色添加数据库用户、数据库角色、Windows 登录名或Windows 组。

sp_addscriptexec --将SQL 脚本（.sql 文件）投递到发布的所有订阅服务器。

sp_addserver --定义SQL Server 本地实例的名称(后续版本将删除该功能)。

sp_addsrvrolemember --添加登录，使其成为固定服务器角色的成员。

sp_addsubscriber --向发布服务器添加新的订阅服务器，使其能够接收发布。

sp_addsubscriber_schedule --为分发代理和合并代理添加计划。

sp_addsubscription --订阅添加到发布并设置订阅服务器的状态。

sp_addsynctriggers --在订阅服务器上创建与所有类型的可更新订阅一起使用的触发器。

sp_addtabletocontents --将源表中当前不在跟踪表内的任何行的引用插入合并跟踪表中。

sp_addtype --创建别名数据类型(后续版本将删除该功能)。

sp_addumpdevice --将备份设备添加到SQL Server 数据库引擎的实例中。

sp_adduser --向当前数据库中添加新的用户(后续版本将删除该功能)。

sp_adjustpublisheridentityrange --调整发布上的标识范围，并基于发布上的阈值重新分配新的范围。

sp_altermessage --更改SQL Server 数据库引擎实例中用户定义消息的状态。

sp_apply_job_to_targets --将作业应用于一个或多个目标服务器或属于一个或多个目标服务器组的目标服务器。

sp_approlepassword --更改当前数据库中应用程序角色的密码(后续版本将删除该功能)。

sp_article_validation --启动对指定项目的数据验证请求。

sp_articlecolumn --用于指定项目中包含的列以垂直筛选已发布表中的数据。

sp_articlefilter --基于表项目筛选发布的数据。

sp_articleview --在垂直或水平筛选表时创建用于定义已发布项目的视图。

sp_attach_db --将数据库附加到服务器(后续版本将删除该功能)。

sp_attach_schedule --设置一个作业计划。

sp_attach_single_file_db --将只有一个数据文件的数据库附加到当前服务器。

sp_attachsubscription --将现有的订阅数据库附加到任何订阅服务器。

sp_autostats --显示或更改特定索引或统计信息的自动UPDATE STATISTICS 设置。

sp_batch_params --显示有关Transact-SQL 批处理中所含参数的信息。

sp_bindefault --将默认值绑定到列或绑定到别名数据类型(后续版本将删除该功能)。

sp_bindrule --将规则绑定到列或别名数据类型(后续版本将删除该功能)。

sp_bindsession --将会话绑定到同一SQL Server 数据库引擎实例中的其他会话或取消它与这些会话的绑定(后续版本将删除该功能)。

sp_browsemergesnapshotfolder --返回为合并发布生成的最新快照的完整路径。

sp_browsereplcmds --返回分发数据库中存储的可读版本复制命令的结果集，并将其用作诊断工具。

sp_browsesnapshotfolder --返回为发布生成的最新快照的完整路径。

sp_can_tlog_be_applied --验证事务日志是否可应用于数据库。

sp_catalogs --返回指定链接服务器中目录的列表。

sp_cdc_add_job --在当前数据库中创建变更数据捕获清理或捕获作业。

sp_cdc_change_job --修改当前数据库中变更数据捕获清除或捕获作业的配置。

sp_cdc_cleanup_change_table --根据指定的low_water_mark 值从当前数据库的更改表中删除行。

sp_cdc_disable_db --对当前数据库禁用变更数据捕获。

sp_cdc_disable_table --对当前数据库中指定的源表和捕获实例禁用变更数据捕获。

sp_cdc_drop_job --从当前数据库中删除变更数据捕获清除或捕获作业。

sp_cdc_enable_db --对当前数据库启用变更数据捕获。

sp_cdc_enable_table --为当前数据库中指定的源表启用变更数据捕获。

sp_cdc_generate_wrapper_function --生成用于为SQL Server 中可用的变更数据捕获查询函数创建包装函数的脚本。

sp_cdc_get_ddl_history --返回自对指定的捕获实例启用变更数据捕获后与该捕获实例关联的数据定义语言(DDL) 更改历史记录。

sp_cdc_get_captured_columns --返回指定捕获实例所跟踪的捕获源列的变更数据捕获元数据信息。

sys.sp_cdc_help_change_data_capture --返回当前数据库中为变更数据捕获启用的每个表的变更数据捕获配置。

sys.sp_cdc_help_jobs --报告关于当前数据库中所有变更数据捕获清除或捕获作业的信息。

sp_cdc_scan --执行变更数据捕获日志扫描操作。

sp_cdc_start_job --启动当前数据库中的变更数据捕获清除或捕获作业。

sp_cdc_stop_job --停止当前数据库中的变更数据捕获清除或捕获作业。

sp_certify_removable --验证是否正确配置数据库以便在可移动媒体上分发，并向用户报告所有问题(后续版本将删除该功能)。

sp_change_agent_parameter --更改存储在MSagent_parameters 系统表中的复制代理配置文件的参数。

sp_change_agent_profile --更改存储在MSagent_profiles (Transact-SQL) 表中的复制代理配置文件参数。

sp_change_log_shipping_primary_database --更改主数据库设置。

sp_change_log_shipping_secondary_database --更改辅助数据库设置。

sp_change_log_shipping_secondary_primary --更改辅助数据库设置。

sp_change_subscription_properties --更新请求订阅信息。

sp_change_users_login --将现有数据库用户映射到SQL Server 登录名(后续版本将删除该功能)。

sp_changearticle --更改事务或快照发布中的项目属性。

sp_changearticlecolumndatatype --更改Oracle 发布的项目列数据类型映射。

sp_changedbowner --更改当前数据库的所有者。

sp_changedistpublisher --更改分发发布服务器的属性。

sp_changedistributiondb --更改分发数据库的属性。

sp_changedistributor_password --更改分发服务器的密码。

sp_changedistributor_property --更改分发服务器的属性。

sp_changedynamicsnapshot_job --修改为带有参数化行筛选器的发布的订阅生成快照的代理作业。

sp_changelogreader_agent -- 更改日志读取器代理的安全属性。

sp_changemergearticle --更改合并项目的属性。

sp_changemergefilter -- 更改某些合并筛选属性。

sp_changemergepublication --更改合并发布的属性。

sp_changemergepullsubscription --更改合并请求订阅的属性。

sp_changemergesubscription -- 更改合并推送订阅的选定属性。

sp_changeobjectowner -- 更改当前数据库中对象的所有者(后续版本将删除该功能)。

sp_changepublication -- 更改发布的属性。

sp_changepublication_snapshot -- 更改指定发布的快照代理的属性。

sp_changeqreader_agent -- 更改队列读取器代理的安全属性。

sp_changereplicationserverpasswords -- 更改复制代理连接到复制拓扑中的服务器时所用的Microsoft Windows 帐户或Microsoft SQL Server 登录名的存储密码。

sp_changesubscriber -- 更改订阅服务器的选项。

sp_changesubscriber_schedule -- 更改订阅服务器的分发代理或合并代理调度。

sp_changesubscription -- 对于排队更新事务复制所涉及的快照或者事务推送订阅，或所涉及的请求订阅，更改其属性。

sp_changesubscriptiondtsinfo -- 更改订阅的Data Transformation Services (DTS) 包属性。

sp_changesubstatus -- 更改现有订阅服务器的状态。

sp_check_dynamic_filters -- 显示有关发布的参数化行筛选器属性的信息，特别是用于为发布生成已筛选数据分区的函数以及关于发布是否有资格使用预计算分区的信息。

sp_check_for_sync_trigger -- 确定在用于立即更新订阅的复制触发器的上下文中，是否正在调用用户定义的触发器或存储过程。

sp_check_join_filter -- 用于验证两个表之间的联接筛选器以确定联接筛选子句是否有效。

sp_check_subset_filter -- 用来对任何表检查筛选子句，以确定筛选子句对该表是否有效。

sp_cleanup_log_shipping_history -- 此存储过程将根据保持期，清理本地和监视服务器上的历史记录。

sp_column_privileges -- 返回当前环境中单个表的列特权信息。

sp_column_privileges_ex -- 返回指定链接服务器上指定表的列特权。

sp_columns -- 返回当前环境中可查询的指定表或视图的列信息。

sp_columns_ex --返回指定链接服务器表的列信息，每列一行。

sp_configure -- 查询SQL Server外围配置各项参数信息以及更新sp_configure 结果集中的config_value 列的值。

sp_configure_peerconflictdetection -- 为对等事务复制拓扑中包含的发布配置冲突检测。

sp_control_dbmasterkey_password -- 添加或删除包含打开数据库主密钥所需的密码的凭据。

sp_control_plan_guide --删除、启用或禁用计划指南。

sp_copymergesnapshot --将指定发布的快照文件夹复制到@destination_folder 中列出的文件夹。

sp_copysnapshot --将指定发布的快照文件夹复制到@destination_folder 中列出的文件夹。

sp_copysubscription --复制具有请求订阅但无推送订阅的订阅数据库。

sp_create_plan_guide --创建用于将查询提示或实际查询计划与数据库中的查询关联的计划指南。

sp_create_plan_guide_from_handle --从计划缓存中的查询计划创建一个或多个计划指南。

sp_create_removable --创建可移动媒体数据库(后续版本将删除该功能)。

sp_createstats --为当前数据库中所有用户表的所有合格列和内部表创建单列统计信息。

sp_cursor_list --报告当前为连接打开的服务器游标的属性。

sp_cycle_agent_errorlog --关闭当前的SQL Server 代理错误日志文件，并循环SQL Server 代理错误日志扩展编号。

sp_cycle_errorlog --关闭当前的错误日志文件，并循环错误日志扩展编号。

sp_databases --列出驻留在数据库引擎实例中的数据库或可以通过数据库网关访问的数据库。

sp_datatype_info --返回有关当前环境所支持的数据类型的信息。

sp_db_vardecimal_storage_format --返回数据库的当前vardecimal 存储格式状态，或为数据库启用vardecimal 存储格式。

sp_dbcmptlevel --设置数据库的兼容级别(后续版本将删除该功能)。

sp_dbfixedrolepermission --显示固定数据库角色的权限(后续版本将删除该功能)。

sp_dbmmonitoraddmonitoring --创建数据库镜像监视器作业，该作业可定期更新服务器实例上每个镜像数据库的镜像状态。

sp_dbmmonitorchangealert --添加或更改指定镜像性能指标的警告阈值。

sp_dbmmonitorchangemonitoring --更改数据库镜像监视参数的值。

sp_dbmmonitordropalert --更改数据库镜像监视参数的值。

sp_dbmmonitordropmonitoring --停止并删除服务器实例上所有数据库的镜像监视器作业。

sp_dbmmonitorhelpalert --返回若干个关键数据库镜像监视器性能指标中的一个或所有指标的警告阈值信息。

sp_dbmmonitorhelpmonitoring --返回当前更新持续时间。

sp_dbmmonitorresults --从存储数据库镜像监视历史记录的状态表中返回所监视数据库的状态行，并允许您选择该过程是否预先获得最新状态。

sp_dbmmonitorupdate --通过为每个镜像数据库插入新的表行来更新数据库镜像监视器状态表，并截断早于当前保持期的行。

sp_dboption --显示或更改数据库选项(后续版本将删除该功能)。

sp_dbremove --删除数据库及其所有相关文件(后续版本将删除该功能)。

sp_defaultdb --更改Microsoft SQL Server 登录名的默认数据库(后续版本将删除该功能)。

sp_defaultlanguage  --更改SQL Server 登录的默认语言(后续版本将删除该功能)。

sp_delete_alert --删除警报。

sp_delete_backuphistory --通过删除早于指定日期的备份集条目，减小备份和还原历史记录表的大小。

sp_delete_category --从当前服务器中删除指定的作业、警报或操作员类别。

sp_delete_database_backuphistory --从当前服务器中删除指定的作业、警报或操作员类别。

sp_delete_job --删除作业。

sp_delete_jobschedule --删除作业计划。

sp_delete_jobserver --删除指定的目标服务器。

sp_delete_jobstep --从作业中删除作业步骤。

sp_delete_jobsteplog --删除参数指定的所有SQL Server 代理作业步骤日志。

sp_delete_log_shipping_alert_job --如果存在警报作业且不存在其他需要监视的主要和辅助数据库，则从日志传送监视服务器中删除警报作业。

sp_delete_log_shipping_primary_database --该存储过程删除主数据库的日志传送，包括备份作业、本地历史记录以及远程历史记录。

sp_delete_log_shipping_primary_secondary --删除主服务器上的辅助数据库项。

sp_delete_log_shipping_secondary_database --该存储过程删除辅助数据库、本地历史记录和远程历史记录。

sp_delete_log_shipping_secondary_primary --此存储过程可从辅助服务器删除有关指定主服务器的信息，并从辅助服务器删除复制作业和还原作业。

sp_delete_maintenance_plan --删除指定的维护计划。

sp_delete_maintenance_plan_db --取消指定数据库和指定维护计划的关联。

sp_delete_maintenance_plan_job --取消指定作业与指定维护计划的关联。

sp_delete_notification --删除特定警报和操作员的SQL Server 代理通知定义。

sp_delete_operator --删除一位操作员。

sp_delete_proxy --删除指定代理。

sp_delete_schedule --删除计划。

sp_delete_targetserver --从可用目标服务器列表中删除指定服务器。

sp_delete_targetservergroup --删除指定的目标服务器组。

sp_delete_targetsvrgrp_member --从目标服务器组中删除目标服务器。

sp_deletemergeconflictrow --删除冲突表或MSmerge_conflicts_info (Transact-SQL) 表中的行。

sp_deletepeerrequesthistory --删除与发布状态请求相关的历史记录。

sp_deletetracertokenhistory --删除MStracer_tokens (Transact-SQL) 和MStracer_history (Transact-SQL) 系统表中的跟踪令牌记录。

sp_denylogin --防止Windows 用户或Windows 组连接到SQL Server 实例(后续版本将删除该功能)。

sp_depends --显示有关数据库对象依赖关系的信息。

sp_describe_cursor --报告服务器游标的属性。

sp_describe_cursor_columns --报告服务器游标结果集中的列属性。

sp_describe_cursor_tables --报告服务器游标被引用对象或基表。

sp_detach_db --从服务器示例中分离当前未使用的数据库，并可以选择在分离前对所有表运行UPDATE STATISTICS。

sp_detach_schedule --删除计划和作业之间的关联。

sp_drop_agent_parameter --从MSagent_parameters 表中的配置文件删除一个参数或所有参数。

sp_drop_agent_profile --从MSagent_profiles 表中删除配置文件。

sp_dropalias --删除将当前数据库中的用户链接到SQL Server 登录名的别名(后续版本将删除该功能)。

sp_dropanonymousagent --从发布服务器中删除分发服务器上进行监视的匿名复制代理。

sp_dropapprole --从当前数据库删除应用程序角色。

sp_droparticle --从快照发布或事务发布中删除一个项目。

sp_dropdevice --从SQL Server 2005 数据库引擎实例中删除数据库设备或备份设备，并从master.dbo.sysdevices 中删除相应的项。

sp_dropdistpublisher --删除分发发布服务器。

sp_dropdistributiondb --删除分发数据库。

sp_dropdistributor --卸载分发服务器。

sp_dropdynamicsnapshot_job --为具有参数化行筛选器的发布删除筛选的数据快照作业。

sp_dropextendedproc --删除扩展存储过程(后续版本将删除该功能)。

sp_dropextendedproperty --删除现有的扩展属性(后续版本将删除该功能)。

sp_droplinkedsrvlogin --删除运行SQL Server 的本地服务器上的登录与链接服务器上的登录之间的现有映射。

sp_droplogin --删除SQL Server 登录名(后续版本将删除该功能)。

sp_dropmergealternatepublisher --删除合并发布中的备用发布服务器。

sp_dropmergearticle --删除合并发布中的项目。

sp_dropmergefilter --删除合并筛选器。

sp_dropmergepartition --从发布中删除参数化行筛选器的分区。

sp_dropmergepublication --删除合并发布及其关联的快照代理。

sp_dropmergepullsubscription --删除合并请求订阅。

sp_dropmergesubscription -- 删除对合并发布的订阅及其关联的合并代理。

sp_dropmessage -- 从SQL Server 数据库引擎实例中删除指定的用户定义的错误消息。

sp_droppublication -- 删除发布及其关联的快照代理。

sp_droppullsubscription -- 在订阅服务器的当前数据库中删除订阅。

sp_dropremotelogin -- 删除映射到本地登录的远程登录(后续版本将删除该功能)。

sp_droprole -- 从当前数据库中删除数据库角色(后续版本将删除该功能)。

sp_droprolemember -- 从当前数据库的SQL Server 角色中删除安全帐户。

sp_dropserver --从本地SQL Server 实例中的已知远程服务器和链接服务器的列表中删除服务器。

sp_dropsrvrolemember --从固定服务器角色中删除SQL Server 登录或Windows 用户或组。

sp_dropsubscriber --从已注册的服务器中删除订阅服务器指定。

sp_dropsubscription --删除对发布服务器上的特殊项目、发布或订阅集的订阅。

sp_droptype --从systypes 删除别名数据类型。

sp_dropuser --从当前数据库中删除数据库用户(后续版本将删除该功能)。

sp_dsninfo --从与当前服务器关联的分发服务器返回ODBC 或OLE DB 数据源信息。

sp_enum_login_for_proxy --列出安全主体服务器和代理服务器之间的关联。

sp_enum_proxy_for_subsystem --列出SQL Server 代理的代理访问子系统所需的权限。

sp_enum_sqlagent_subsystems --列出SQL Server 代理子系统。

sp_enumcustomresolvers --返回所有可用的业务逻辑处理程序以及在分发服务器上注册的自定义冲突解决程序的列表。

sp_enumdsn --对运行于特定Microsoft Windows 用户帐户下的服务器，返回所有已定义ODBC 和OLE DB 数据源名称的列表。

sp_enumeratependingschemachanges --返回所有的挂起架构更改的列表。

sp_estimate_data_compression_savings --返回表的当前大小并估算表在请求的压缩状态下的大小。

sp_estimated_rowsize_reduction_for_vardecimal --估计对表启用vardecimal 存储格式后行平均大小的减少量。

sp_executesql --执行可以多次重复使用或动态生成的Transact-SQL 语句或批处理。

sp_expired_subscription_cleanup --检查每个发布的所有订阅的状态，并删除已过期的订阅。

sp_fkeys --返回当前环境的逻辑外键信息。

sp_foreignkeys --返回引用链接服务器中表的主键的外键。

sp_fulltext_catalog --创建和删除全文目录，并启动和停止目录的索引操作。

sp_fulltext_column --指定表的某个特定列是否参与全文索引。

sp_fulltext_keymappings --返回文档标识符(DocId) 和全文键值之间的映射。

sp_fulltext_load_thesaurus_file --从指定了LCID 的语言对应的同义词库文件中分析并加载数据。

sp_fulltext_pendingchanges --为正在使用更改跟踪的指定表返回未处理的更改，如挂起的插入、更新和删除等。

sp_fulltext_resetfdhostaccount --更新SQL Server 使用的Windows 帐户和密码以启动筛选器后台程序宿主。

sp_fulltext_service --更改SQL Server 全文搜索的服务器属性。

sp_fulltext_table --标记或取消标记要编制全文索引的表(后续版本将删除该功能)。

sp_generatefilters --复制指定的表时，创建外键表的筛选器。

sp_get_distributor --确定服务器上是否已安装分发服务器。

sp_get_query_template --返回参数化格式的查询。

sp_getagentparameterlist --返回一个列表，其中包含所有可在代理配置文件中为指定代理类型设置的复制代理参数。

sp_getapplock --对应用程序资源设置锁。

sp_getbindtoken --返回事务的唯一标识符。

sp_getdefaultdatatypemapping --返回有关指定的数据类型在Microsoft SQL Server 和非SQL Server 数据库管理系统(DBMS) 之间的默认映射的信息。

sp_getmergedeletetype --返回合并删除的类型。

sp_getqueuedrows --在订阅服务器上检索在队列中有未决更新的行。

sp_getsubscriptiondtspackagename --在将数据发送到订阅服务器之前返回用于转换数据的Data Transformation Services (DTS) 包名称。

sp_gettopologyinfo --返回有关对等事务复制拓扑的信息。

sp_grant_login_to_proxy --授予安全主体数据库访问代理的权限。

sp_grant_proxy_to_subsystem --授权代理访问子系统。

sp_grant_publication_access --将登录名添加到发布的访问列表中。

sp_grantdbaccess --将数据库用户添加到当前数据库(后续版本将删除该功能)。

sp_grantlogin --创建SQL Server 登录名(后续版本将删除该功能)。

sp_help --*报告有关数据库对象（sys.sysobjects 兼容视图中列出的所有对象）。

sp_help_agent_default --检索作为参数传递的代理类型默认配置的ID。

sp_help_agent_parameter --*返回MSagent_parameters (Transact-SQL) 系统表中的配置文件的所有参数。

sp_help_agent_profile --显示指定代理的配置文件。

sp_help_alert --报告有关为服务器定义的警报信息。

sp_help_category --提供有关作业、警报或操作员的指定类的信息。

sp_help_downloadlist --针对所提供的作业，列出sysdownloadlist 系统表中的所有行，或者在未指定作业的情况下列出所有行。

sp_help_fulltext_catalog_components --返回用于当前数据库中所有全文目录的所有组件（筛选器、断字符和协议处理程序）的列表。

sp_help_fulltext_catalogs --返回指定的全文目录的ID、名称、根目录、状态以及全文索引表的数量。

sp_help_fulltext_catalogs_cursor --使用游标返回指定的全文目录的ID、名称、根目录、状态和全文索引表的数量。

sp_help_fulltext_columns --返回为全文索引指定的列。

sp_help_fulltext_columns_cursor --使用游标返回为全文索引指派的列。

sp_help_fulltext_system_components --返回已注册的断字程序、筛选器和协议处理程序的信息。

sp_help_fulltext_tables --返回为全文索引注册的表的列表(后续版本将删除该功能)。

sp_help_fulltext_tables_cursor --使用游标返回为全文索引注册的表的列表(后续版本将删除该功能)。

sp_help_job --返回有关SQL Server 代理用来在SQL Server 中执行自动活动的作业的信息。

sp_help_jobactivity --列出有关SQL Server 代理作业的运行时状态的信息。

sp_help_jobcount --提供计划附加到的作业数。

sp_help_jobhistory --为多服务器管理域中的服务器提供有关作业的信息。

sp_help_jobs_in_schedule --返回有关附加了特定计划的作业的信息。

sp_help_jobschedule --返回有关SQL Server Management Studio 用来执行自动活动的计划作业的信息。

sp_help_jobserver --为给定的作业返回有关服务器的信息。

sp_help_jobstep --返回有关SQL Server 代理服务在执行自动活动时使用的作业中的步骤信息。

sp_help_jobsteplog --返回有关特定SQL Server 代理作业步骤日志的元数据。

sp_help_log_shipping_alert_job --此存储过程将从日志传送监视器返回警报作业的作业ID。

sp_help_log_shipping_monitor --返回一个结果集，其中包含主服务器、辅助服务器或监视服务器上注册的主数据库和辅助数据库的状态和其他信息。

sp_help_log_shipping_monitor_primary --从监视表返回有关主数据库的信息。

sp_help_log_shipping_monitor_secondary --从监视表返回关于辅助数据库的信息。

sp_help_log_shipping_primary_database --检索主数据库设置。

sp_help_log_shipping_primary_secondary --此存储过程将返回有关给定主数据库的所有辅助数据库的信息。

sp_help_log_shipping_secondary_database --此存储过程可检索一个或多个辅助数据库的设置。

sp_help_log_shipping_secondary_primary --此存储过程将在辅助服务器上检索给定的主数据库的设置。

sp_help_maintenance_plan --返回有关指定的维护计划的信息(后续版本将删除该功能)。

sp_help_notification --报告给定操作员的警报列表，或者报告给定警报的操作员列表。

sp_help_operator --报告有关为服务器定义的操作员的信息。

sp_help_peerconflictdetection --返回对等事务复制拓扑中包含的发布的冲突检测设置信息。

sp_help_proxy --列出一个或多个代理的信息。

sp_help_publication_access --返回发布的所有授权登录的列表。

sp_help_schedule --列出有关计划的信息。

sp_help_targetserver --列出所有的目标服务器。

sp_help_targetservergroup --列出指定的组中所有的目标服务器。

sp_helparticle --显示有关项目的信息。

sp_helparticlecolumns --返回基础表中的所有列。

sp_helparticledts --用于获取使用Microsoft Visual Basic 创建事务订阅时所用的正确自定义任务名称的信息。

sp_helpconstraint --*返回一个列表，其内容包括所有约束类型、约束类型的用户定义或系统提供的名称、定义约束类型时用到的列，以及定义约束的表达式（仅适用于DEFAULT 和CHECK 约束）。

sp_helpdatatypemap --返回有关Microsoft SQL Server 和非SQL Server 数据库管理系统(DBMS) 间的定义数据类型映射。

sp_helpdb --*报告有关指定数据库或所有数据库的信息。

sp_helpdbfixedrole --*返回固定数据库角色的列表。

sp_helpdevice --报告有关Microsoft® SQL Server™ 备份设备的信息。

sp_helpdistpublisher --返回使用分发服务器的发布服务器的属性。

sp_helpdistributiondb --返回指定分发数据库的属性。

sp_helpdistributor --列出有关分发服务器、分发数据库、工作目录和Microsoft SQL Server 代理用户帐户的信息。

sp_helpdistributor_properties --返回分发服务器属性。此存储过程在分发服务器上对分发数据库执行。

sp_helpdynamicsnapshot_job --返回有关生成筛选数据快照的代理作业的信息。

sp_helpextendedproc --*报告当前定义的扩展存储过程，以及该过程（函数）所属的动态链接库(DLL) 的名称。

sp_helpfile --*返回与当前数据库关联的文件的物理名称及属性。

sp_helpfilegroup --*返回与当前数据库相关联的文件组的名称及属性。

sp_helpindex --*报告有关表或视图上索引的信息。

sp_helplanguage --*报告有关某个特定的替代语言或所有语言的信息。

sp_helplinkedsrvlogin --*查询已定义的链接服务器的登录信息。

sp_helplogins --*提供有关每个数据库中的登录及相关用户的信息。

sp_helplogreader_agent --为发布数据库返回日志读取器代理作业属性。

sp_helpmergealternatepublisher --返回作为合并发布的备用发布服务器启用的所有服务器列表。

sp_helpmergearticle --返回有关项目的信息。

sp_helpmergearticlecolumn --返回合并发布的指定表或视图项目中的列的列表。

sp_helpmergearticleconflicts --返回发布中有冲突的项目。

sp_helpmergeconflictrows --返回指定冲突表中的行。

sp_helpmergedeleteconflictrows --返回有关丢失删除冲突的数据行的信息。

sp_helpmergefilter --返回有关合并筛选器的信息。

sp_helpmergepartition --返回指定合并发布的分区信息。

sp_helpmergepublication --返回有关合并发布的信息。

sp_helpmergepullsubscription --返回有关订阅服务器中存在的请求订阅的信息。

sp_helpmergesubscription --返回有关对合并发布的订阅（推送订阅和请求订阅）的信息。

sp_helpntgroup --报告在当前数据库中有帐户的Windows 组的有关信息。

sp_helppeerrequests --返回有关对等复制拓扑中的参与者收到的所有状态请求的信息。

sp_helppeerresponses --返回针对从对等复制拓扑中的参与者处接收到的特定状态请求的所有响应。

sp_helppublication --返回有关发布的信息。

sp_helppublication_snapshot --返回给定发布的快照代理的有关信息。

sp_helppullsubscription --显示订阅服务器上的一个或多个订阅的有关信息。

sp_helpqreader_agent --返回队列读取器代理的属性。

sp_helpremotelogin --报告已经在本地服务器上定义的某个或所有远程服务器的远程登录的有关信息。

sp_helpreplfailovermode --显示订阅的当前故障转移模式。

sp_helpreplicationdboption --显示是否已启用发布服务器上的数据库，以进行复制。

sp_helpreplicationoption --显示为服务器启用的复制选项的类型。

sp_helprole --*返回当前数据库中有关角色的信息。

sp_helprolemember --*返回有关当前数据库中某个角色的成员的信息。

sp_helprotect --返回一个报表，报表中包含当前数据库中某对象的用户权限或语句权限的信息。

sp_helpserver --*报告某个特定远程服务器或复制服务器的信息，或者报告两种类型的所有服务器的信息。

sp_helpsort --*显示SQL Server 实例的排序顺序和字符集。

sp_helpsrvrole --*返回SQL Server 固定服务器角色的列表。

sp_helpsrvrolemember --*返回有关SQL Server 固定服务器角色成员的信息。

sp_helpstats --返回指定表中列和索引的统计信息。

sp_helpsubscriberinfo --显示有关订阅服务器的信息。

sp_helpsubscription --列出与特定的发布、项目、订阅服务器或订阅集关联的订阅信息。

sp_helpsubscription_properties --从MSsubscription_properties 表检索安全信息。

sp_helpsubscriptionerrors --返回给定订阅的所有事务复制错误。

sp_helptext --*显示用户定义规则的定义、默认值、未加密的Transact-SQL 存储过程、用户定义Transact-SQL 函数、触发器、计算列、CHECK 约束、视图或系统对象（如系统存储过程）。

sp_helptracertokenhistory --返回指定跟踪令牌的详细滞后时间信息，为每个订阅服务器返回一行。

sp_helptracertokens --为每个已插入发布以确定滞后时间的跟踪标记分别返回一行。

sp_helptrigger --*返回对当前数据库的指定表定义的DML 触发器的类型。

sp_helpuser --*报告有关当前数据库中数据库级主体的信息。

sp_helpxactsetjob --显示有关Oracle 发布服务器的Xactset 作业的信息。

sp_indexes --*返回指定的远程表的索引信息。

sp_indexoption --为用户定义的聚集索引和非聚集索引或没有聚集索引的表设置锁选项值。

sp_invalidate_textptr --使事务中指定的行内文本指针或所有行内文本指针失效。

sp_ivindexhasnullcols --验证索引视图的聚集索引是否唯一，而且当索引视图将要用于创建事务发布时其聚集索引不包含任何可能为Null 的列。

sp_link_publication --设置在连接到发布服务器时立即更新订阅的同步触发器所使用的配置和安全信息。

sp_linkedservers --*返回本地服务器中定义的链接服务器列表。

sp_lock --*报告有关锁的信息(后续版本将删除该功能)。

sp_lookupcustomresolver --返回有关在分发服务器注册的基于COM 的自定义冲突解决程序组件的业务逻辑处理程序或类标识符(CLSID) 值的信息。

sp_manage_jobs_by_login --删除或重新分配属于指定登录的作业。

sp_markpendingschemachange --用于合并发布的可支持性，它通过让管理员跳过所选择的挂起架构更改，使这些更改不会被复制。

sp_marksubscriptionvalidation --将当前打开的事务标记为指定订阅服务器的订阅级验证事务。

sp_mergearticlecolumn --对合并发布进行垂直分区。

sp_mergedummyupdate  --在给定的行中进行虚更新，以便在下次合并时将该行再次发送。

sp_monitor --显示有关Microsoft SQL Server 的统计信息。

sp_MSchange_distribution_agent_properties --更改在Microsoft SQL Server 2005 或更高版本的分发服务器上运行的分发代理作业的属性。

sp_MSchange_logreader_agent_properties --更改在Microsoft SQL Server 2005 或更高版本的分发服务器上运行的日志读取器代理作业的属性。

sp_MSchange_merge_agent_properties --更改在Microsoft SQL Server 2005 或更高版本的分发服务器上运行的合并代理作业的属性。

sp_MSchange_snapshot_agent_properties --更改在Microsoft SQL Server 2005 或更高版本分发服务器上运行的快照代理作业的属性。

sp_MShasdbaccess --*列出用户有权限访问的所有数据库的名称和所有者。

sp_msx_defect --从多服务器操作中删除当前服务器。

sp_msx_enlist --将当前服务器添加到主服务器的可用服务器列表。

sp_msx_get_account --列出目标服务器用于登录到主服务器的凭据的有关信息。

sp_msx_set_account --设置目标服务器上的SQL Server 代理主服务器帐户名和密码。

sp_notify_operator --使用数据库邮件向操作员发送电子邮件。

sp_OACreate --*创建OLE 对象的实例。

sp_OADestroy --*破坏已创建的OLE 对象。

sp_OAGetErrorInfo --*获取OLE 自动化错误信息。

sp_OAGetProperty --*获取OLE 对象的属性值。

sp_OAMethod --*调用一个OLE 对象的方法。

sp_OASetProperty --*将OLE 对象的属性设置为新值。

sp_OAStop --*停止服务器范围内的OLE 自动化存储过程执行环境。

sp_password --为Microsoft SQL Server 登录名添加或更改密码(后续版本将删除该功能)。

sp_pkeys --*返回当前环境中单个表的主键信息。

sp_post_msx_operation --向系统表sysdownloadlist 中插入操作（行），以供目标服务器下载和执行。

sp_posttracertoken --跟踪令牌发布到发布服务器的事务日志中，并开始滞后时间统计信息的跟踪进程。

sp_primarykeys --*返回指定远程表的主键列，每个键列对应一行。

sp_publication_validation --对指定发布中的每个项目启动项目验证请求。

sp_publisherproperty --显示或更改非Microsoft SQL Server 发布服务器的发布服务器属性。

sp_purge_jobhistory --删除作业的历史记录。

sp_recompile --使存储过程和触发器在下次运行时重新编译。

sp_refresh_log_shipping_monitor --使用指定日志传送代理的给定主服务器或辅助服务器中的最新信息来刷新远程监视器表。

sp_refreshsqlmodule  --更新当前数据库中指定的非绑定到架构的一些对象。

sp_refreshsubscriptions --对于所有现有的订阅服务器，将对其请求订阅中的新项目的订阅添加到发布中。

sp_refreshview --用于更新指定的未绑定到架构的视图的元数据。

sp_register_custom_scripting --复制允许用户定义的自定义存储过程替换事务复制中使用的一个或多个默认过程。

sp_registercustomresolver --注册可在合并复制同步进程中调用的业务逻辑处理程序或基于COM 的自定义冲突解决程序。

sp_reinitmergepullsubscription --将合并请求订阅标记为在合并代理下一次运行时重新初始化。

sp_reinitmergesubscription --标记一个合并订阅，以便在下一次运行合并代理时重新初始化。

sp_reinitpullsubscription --将事务请求订阅或匿名订阅标记为在下一次运行分发代理时重新初始化。

sp_reinitsubscription  --将订阅标记为要重新初始化。

sp_releaseapplock --为应用程序资源释放锁。

sp_remoteoption --显示或更改在运行SQL Server 的本地服务器中定义的远程登录的选项。

sp_remove_job_from_targets --从指定的目标服务器或目标服务器组中删除指定的作业。

sp_removedbreplication --该存储过程在发布服务器的发布数据库中或在订阅服务器的订阅数据库中执行。

sp_removedistpublisherdbreplication --删除属于分发服务器上特定发布的发布元数据。

sp_rename --*在当前数据库中更改用户创建对象的名称。

sp_renamedb --更改数据库的名称(后续版本将删除该功能)。

sp_repladdcolumn --将列添加到已发布的现有表项目中。

sp_replcmds --返回标记为要复制的事务的命令。

sp_replcounters --为每个发布数据库返回有关滞后时间、吞吐量和事务计数的复制统计信息。

sp_repldone --更新用于标识服务器的最后一个已分发事务的记录。

sp_repldropcolumn --从已发布的现有表项目中删除列。

sp_replflush --刷新项目缓存。

sp_replication_agent_checkup --检查每个分发数据库的复制代理，这些复制代理正在运行但在指定的检测信号间隔内没有历史记录。

sp_replicationdboption --设置指定数据库的复制数据库选项。

sp_replmonitorchangepublicationthreshold --更改发布的监视阈值标准。

sp_replmonitorhelpmergesession --返回给定复制合并代理过去会话的信息，并且针对每个符合筛选条件的会话返回一行。

sp_replmonitorhelpmergesessiondetail --返回有关特定复制合并代理会话的项目级详细信息

sp_replmonitorhelppublication --返回发布服务器上一个或多个发布的当前状态信息。

sp_replmonitorhelppublicationthresholds --返回为所监视发布设置的阈值度量指标。

sp_replmonitorhelppublisher --为与分发服务器关联的一个或多个发布服务器返回当前状态信息。

sp_replmonitorhelpsubscription --返回发布服务器上属于一个或多个发布的订阅的当前状态信息，并为每个返回的订阅返回一行。

sp_replmonitorsubscriptionpendingcmds --返回有关对事务发布的订阅的等待命令数以及处理这些命令的粗略估计时间的信息。

sp_replqueuemonitor --列出Microsoft SQL Server 队列或Microsoft 消息队列中指定发布的排队更新订阅的队列消息。

sp_replrestart --由事务复制在备份和还原过程中使用，以便分发服务器上的复制数据与发布服务器上的数据同步。

sp_replsetoriginator --用于在双向事务复制中调用环回检测和处理。

sp_replshowcmds --以可读格式返回标记为要复制的事务的命令。

sp_repltrans --返回由发布数据库事务日志中所有标记为复制、但没有标记为已分发的事务组成的结果集。

sp_requestpeerresponse --从对等拓扑中的节点执行此过程时，此过程将从拓扑中的其他每个节点请求响应。

sp_requestpeertopologyinfo --使用有关对等事务复制拓扑的信息填充MSpeer_topologyresponse 系统表。

sp_resetsnapshotdeliveryprogress --重置请求订阅的快照传递进程，以便可以重新启动快照传递。

sp_resetstatus --重置可疑数据库的状态(后续版本删除该功能)。

sp_restoredbreplication --将数据库还原到非发起服务器、数据库或因其他原因而无法运行复制过程的系统时，删除复制设置。

sp_restoremergeidentityrange --此存储过程用于更新标识范围分配。

sp_resync_targetserver --重新同步指定目标服务器中的所有多服务器作业。

sp_resyncmergesubscription --将合并订阅重新同步到指定的已知验证状态。

sp_revoke_login_from_proxy --删除对安全主体数据库的代理的访问权。

sp_revoke_proxy_from_subsystem --撤消代理对子系统的访问权限。

sp_revoke_publication_access --从发布访问列表中删除登录名。

sp_revokedbaccess --从当前数据库中删除数据库用户(后续版本将删除该功能)。

sp_revokelogin --从SQL Server 中删除使用CREATE LOGIN、sp_grantlogin 或sp_denylogin 为Windows 用户或组创建的登录项(后续版本将删除该功能)。

sp_schemafilter --修改并显示架构的相关信息，此架构在列出适合于发布的Oracle 表时被排除。

sp_script_synctran_commands --生成一个脚本以包含将在可更新订阅的订阅服务器上应用的sp_addsynctrigger 调用。

sp_scriptdynamicupdproc --生成创建动态更新存储过程的CREATE PROCEDURE 语句。

sp_scriptpublicationcustomprocs --在启用了自动生成自定义过程架构选项的发布中，为所有表项目编写自定义INSERT、UPDATE 和DELETE 过程的脚本。

sp_scriptsubconflicttable --为给定的排队订阅项目生成用于在订阅服务器上创建冲突表的脚本。

sp_send_dbmail --向指定收件人发送电子邮件。

sp_server_info --*返回SQL Server、数据库网关或基础数据源的属性名称和匹配值的列表。

sp_serveroption --*为远程服务器和链接服务器设置服务器选项。

sp_setapprole --激活与当前数据库中的应用程序角色关联的权限。

sp_setdefaultdatatypemapping --将Microsoft SQL Server 与非SQL Server 数据库管理系统(DBMS) 之间的现有数据类型映射标记为默认映射。

sp_setnetname --将sys.servers 中的网络名称设置为用于远程SQL Server 实例的实际网络计算机名。

sp_setreplfailovermode --允许为启用了以排队更新为故障转移的立即更新的订阅设置故障转移操作模式。

sp_setsubscriptionxactseqno --进行故障排除时，用于指定订阅服务器上的分发代理应用的下一个事务的日志序列号(LSN)，从而使代理可以跳过失败的事务。

sp_settriggerorder --指定第一个激发或最后一个激发的AFTER 触发器。

sp_showpendingchanges --返回一个结果集，其中显示了等待复制的更改。

sp_showrowreplicainfo --显示有关在合并复制中用作项目的表中的行的信息。

sp_spaceused --*显示行数、保留的磁盘空间以及当前数据库中的表、索引视图或Service Broker 队列所使用的磁盘空间，或显示由整个数据库保留和使用的磁盘空间。

sp_sproc_columns --为当前环境中的单个存储过程或用户定义函数返回列信息。

sp_srvrolepermission --显示固定服务器角色的权限。

sp_start_job --指示SQL Server 代理立即执行作业。

sp_startpublication_snapshot --用于启动可为发布生成初始快照的快照代理作业。

sp_statistics --返回针对指定的表或索引视图的所有索引和统计信息的列表。

sp_stop_job --指示SQL Server 代理停止执行作业。

sp_stored_procedures --*返回当前环境中的存储过程列表。

sp_subscription_cleanup --在从订阅服务器中删除订阅时同时删除元数据。

sp_syscollector_create_collection_item --在收集组中创建一个收集项。

sp_syscollector_create_collection_set --创建一个新的收集组。

sp_syscollector_create_collector_type --为收集项创建收集器类型。

sp_syscollector_delete_collection_item --用于从收集组中删除收集项。

sp_syscollector_delete_collection_set --删除收集组及其所有收集项。

sp_syscollector_delete_collector_type --删除收集器类型的定义。

sp_syscollector_delete_execution_log_tree --删除与单个收集组的运行有关的所有日志项。

sp_syscollector_disable_collector --禁用数据收集器。

sp_syscollector_enable_collector --启用数据收集器。

sp_syscollector_run_collection_set --如果已启用收集器并且收集组配置为非缓存收集模式，则启动收集组。

sp_syscollector_set_cache_directory --指定所收集数据在上载到管理数据仓库之前的存储目录。

sp_syscollector_set_cache_window --设置在数据上载失败时尝试上载数据的次数。

sp_syscollector_set_warehouse_database_name --指定在用于连接到管理数据仓库的连接字符串中定义的数据库名称。

sp_syscollector_set_warehouse_instance_name --指定用于连接到管理数据仓库的连接字符串的实例名称。

sp_syscollector_start_collection_set --如果已启用收集器但收集组未运行，请启动收集组。

sp_syscollector_stop_collection_set --停止收集组。

sp_syscollector_update_collection_item --更新收集组中的收集项。

sp_syscollector_update_collection_set --用于更新收集组数据或重命名收集组。

sp_syscollector_update_collector_type --为收集项更新收集器类型。

sp_syscollector_upload_collection_set --在启用了收集组时启动收集组数据的上载。

sp_table_privileges --*返回指定的一个或多个表的表权限（如INSERT、DELETE、UPDATE、SELECT、REFERENCES）的列表。

sp_table_privileges_ex --从指定的链接服务器返回有关指定表的特权信息。

sp_table_validation --返回有关表或索引视图的行数或校验和信息，或者将提供的行数或校验和信息与指定的表或索引视图进行比较。

sp_tableoption --设置用户定义表的选项值（后续版本将删除此功能）。

sp_tables --*返回可在当前环境中查询的对象列表。也就是说，返回任何能够在FROM 子句中出现的对象（不包括同义词对象）。

sp_tables_ex --返回有关指定链接服务器中表的信息。

sp_testlinkedserver --*测试与链接服务器的连接。

sp_trace_create --创建跟踪定义。新的跟踪将处于停止状态。

sp_trace_generateevent --创建用户定义事件。

sp_trace_setevent --在跟踪中添加或删除事件或事件列。

sp_trace_setfilter --将筛选应用于跟踪。

sp_trace_setstatus --修改指定跟踪的当前状态。

sp_unbindefault --在当前数据库中为列或者别名数据类型解除（删除）默认值绑定。

sp_unbindrule --在当前数据库中取消列或别名数据类型的规则绑定。

sp_unregister_custom_scripting --此存储过程删除用户定义自定义存储过程或通过执行sp_register_custom_scripting 注册的Transact-SQL 脚本文件。

sp_unregistercustomresolver --撤消注册先前注册的业务逻辑模块。

sp_unsetapprole --停用应用程序角色并恢复到前一个安全上下文。

sp_update_agent_profile --更新复制代理所用的配置文件。

sp_update_alert --更新现有警报的设置。

sp_update_category --更改类别的名称。

sp_update_job --更改作业的属性。

sp_update_jobschedule --更改指定作业的计划设置。

sp_update_jobstep --更改执行自动活动的作业中某一步骤的设置。

sp_update_operator --更新警报和作业所用的操作员（通知收件人）信息。

sp_update_proxy --更改现有代理的属性。

sp_update_schedule --更改SQL Server 代理计划的设置。

sp_update_targetservergroup --更改指定目标服务器组的名称。

sp_updateextendedproperty --更新现有扩展属性的值。

sp_update_notification --更新警报提示的提示方法。

sp_updatestats --对当前数据库中所有用户定义表和内部表运行UPDATE STATISTICS。

sp_upgrade_log_shipping --sp_upgrade_log_shipping 存储过程是自动调用的，用于升级特定于SQL Server 2008 中日志传送的元数据。

sp_validatelogins --报告有关映射到SQL Server 主体，但不再存在于Windows 环境中的Windows 用户和组的信息。

sp_validatemergepublication --执行整个发布范围内的验证，一次性地验证所有订阅（推送、请求和匿名）。

sp_validatemergesubscription --执行对指定订阅的验证。

sp_validname --检查有效的SQL Server 标识符名称。

sp_vupgrade_mergeobjects --重新生成用于跟踪和应用合并复制数据更改的特定于项目的触发器、存储过程和视图。

sp_vupgrade_replication --升级复制服务器时由安装程序激活。

sp_who --*提供有关Microsoft SQL Server 数据库引擎实例中的当前用户、会话和进程的信息。

sp_xml_preparedocument --读取作为输入提供的XML 文本，然后使用MSXML 分析器(Msxmlsql.dll) 对其进行分析，并提供分析后的文档供使用。

sp_xml_removedocument --删除文档句柄指定的XML 文档的内部表示形式并使该文档句柄无效。

sp_xp_cmdshell_proxy_account --创建xp_cmdshell 代理凭据。