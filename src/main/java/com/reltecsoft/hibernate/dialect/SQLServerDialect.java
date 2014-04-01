package com.reltecsoft.hibernate.dialect;

import java.sql.Types;

/**
 * A proper dialect for Microsoft SQL Server 2000 and 2005.
 * 
 * @author Yuri Sakhno (George1)
 */
public class SQLServerDialect extends org.hibernate.dialect.SQLServerDialect {
	public SQLServerDialect() {
		registerColumnType(Types.BIGINT, "bigint");
		registerColumnType(Types.BIT, "bit");
		registerColumnType(Types.CHAR, "nchar(1)");
		registerColumnType(Types.VARCHAR, 4000, "nvarchar($l)");
		registerColumnType(Types.VARCHAR, "nvarchar(max)");
		registerColumnType(Types.VARBINARY, 4000, "varbinary($1)");
		registerColumnType(Types.VARBINARY, "varbinary(max)");
		registerColumnType(Types.BLOB, "varbinary(max)");
		registerColumnType(Types.CLOB, "nvarchar(max)");
	}
}
