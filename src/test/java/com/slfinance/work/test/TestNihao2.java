/** 
 * @(#)TestNihao2.java 1.0.0 2016年12月20日 下午5:07:44  
 *  
 * Copyright © 2016 善林金融.  All rights reserved.  
 */ 

package com.slfinance.work.test;

/**   
 * 
 *  
 * @author  zhangzs
 * @version $Revision:1.0.0, $Date: 2016年12月20日 下午5:07:44 $ 
 */
public class TestNihao2 //extends TestNihao {
{
	public static void main(String[] args) {
		StringBuilder sql = new StringBuilder();
		sql.append("         SELECT a.*,                                                                                                                   ").
		append("             IF(@unId = a.unId, @rn:=@rn + 1, @rn:=1) AS rn,                                                                    ").
		append("             @unid:=unid AS uid                                                                                                 ").
		append("     FROM                                                                                                                       ").
		append("         (SELECT DISTINCT                                                                                                       ").
		append("         m.id,                                                                                                                  ").
		append("             m.teacher_id,                                                                                                      ").
		append("             m.student_id,                                                                                                      ").
		append("             m.send_date,                                                                                                       ").
		append("             m.send_content,                                                                                                    ").
		append("             m.is_ready,                                                                                                        ").
		append("             m.send_type,                                                                                                       ").
		append("             s.student_name,                                                                                                    ").
		append("             t.teacher_name,                                                                                                    ").
		append("             t.surname,		                                                                                                    ").
		append("             t.storage_path AS t_url,                                                                                           ").
		append("             s.storage_path AS s_url,                                                                                           ").
		append("             CONCAT(m.teacher_id, m.student_id) AS unId                                                                         ").
		append("     FROM                                                                                                                       ").
		append("         work_t_sys_info m, work_t_student_info s, work_t_teacher_info t                                                        ").
		append("     WHERE                                                                                                                      ").
		append("         (m.TEACHER_ID = ? OR m.STUDENT_ID = ?)                                                                                 ").
		append("             AND m.student_id = s.id                                                                                            ").
		append("             AND t.id = m.teacher_id                                                                                            ").
		append("             AND DATE_FORMAT((m.send_date), '%Y%m%d') BETWEEN DATE_FORMAT(?, '%Y%m%d') AND DATE_FORMAT(?, '%Y%m%d')").
		append("             AND m.send_type IN ('学生发送' , '老师发送')                                                                       ").
		append("             AND t.record_status = '有效'                                                                                       ").
		append("             AND s.record_status = '有效'                                                                                       ").
		append(" 			 AND CASE                                                    ").
		append("                 	WHEN  m.TEACHER_ID = ? THEN m.IS_APPRAISE = '否' ").
		append("                 	ELSE m.IS_APPRAISE is not null                         ").
		append("       			 END                                                   ").
		append("     ORDER BY CONCAT(m.teacher_id, m.student_id) desc, m.send_date DESC) a                                                     ")
		.append("     CROSS JOIN (SELECT @rn:=0, @unid:='') params ) b 																		   ")
		;
		System.out.println(sql.toString());
		
		
	}
}
