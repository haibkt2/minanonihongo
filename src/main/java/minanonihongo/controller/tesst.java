package minanonihongo.controller;

import java.io.File;


import org.apache.commons.io.FileUtils;

public class tesst {
//	F:/SpringProject/minanonihongo/src/main/webapp/reponsitory/N5/rb
	public static void main(String[] args) throws Exception {
		FileUtils.forceDeleteOnExit(new File("F:/SpringProject/minanonihongo/src/main/webapp/reponsitory/N5/rb"));

	}

}
