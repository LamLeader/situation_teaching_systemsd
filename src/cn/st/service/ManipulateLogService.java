package cn.st.service;

import cn.st.dao.ManipulateLogDao;
import cn.st.entity.ManipulateLog;
import cn.st.query.Page;

/**
 * 日子操作业务类
 * @author qq
 */
public class ManipulateLogService {
    ManipulateLogDao dao=new ManipulateLogDao(); 
	/**
	 * 记录操作日志
	 * @author qq
	 * @return
	 */
	public boolean addManipulateLog(ManipulateLog manipulateLog) {
	  return	dao.addManipulateLog(manipulateLog);
	}
	
	/**
	 * 根据开始时间和结束时间查询日志记录
	 * @param userName--操作人  startTime--查询日志的的开始时间,endTime--结束时间
	 */
	public Page<ManipulateLog> queryMpLogByTime(Page<ManipulateLog> page,String
			userName,String starTime,String endTime) {
		Page<ManipulateLog> pagev=dao.queryMpLogByTime(page, userName, starTime, endTime);
		pagev.setTotal(dao.countDate(userName, starTime, endTime));
		return pagev;
	}
	/**
	 * 清空日志表操作
	 */
	public boolean truncateMaLog(){
		return dao.truncateMaLog();
	}
}
