 SELECT trx_mysql_thread_id AS process_id,trx_isolation_level,TIMEDIFF(NOW(),trx_started) AS trx_runtime,trx_state,trx_rows_locked,trx_rows_modified,trx_query AS query
 FROM information_schema.INNODB_TRX
 WHERE trx_started < CURRENT_TIME - INTERVAL 1 SECOND \G