# language: zh-CN
功能: 删除与清理
  场景: 标签和镜像的删除
    假定创建用户u
    并且用户u创建用户组g
    当用户u在g中添加镜像，版本为v1,v2，成功
    并且用户u在界面上删除g中镜像的版本v1，成功
    那么系统不能获取g中镜像的v1版本
    并且系统能够获取g中镜像的v2版本
    当用户u在界面上删除g中镜像的版本v2，成功
    那么系统不能获取g中的镜像

  场景: 分组的删除和清理
    假定创建用户u
    当用户u创建用户组g
    并且用户u在g中添加镜像，版本为v1,v2，成功
    那么用户u不能删除分组g
    当用户u在界面上删除g中的镜像，成功
    并且系统执行镜像清理任务
    那么系统释放资源
    并且用户u删除分组g，成功

