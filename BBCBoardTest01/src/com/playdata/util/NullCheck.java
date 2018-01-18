package com.playdata.util;

public class NullCheck {
	//null일경우에 숫자 0을 넣어라
	public static int nullToZero(String tmp) {
		int num = 0;
		if(isNumber(tmp)) {
			num = Integer.parseInt(tmp);
		}
		return num;
	}
	//null일경우에 숫자 1을 넣어라
	public static int nullToOne(String tmp) {
		int num = 1;
		if(isNumber(tmp)) {
			num = Integer.parseInt(tmp);
		}
		return num;
	}
	//숫자인지 아닌지 판별
	private static boolean isNumber(String tmp) {
		boolean flag = true;
		if(tmp != null) {
			int len = tmp.length();
			for(int i=0;i<len;i++) {
				int x = tmp.charAt(i) - 48;
				if(x < 0 || x > 9) {
					flag = false;
					break;
				}
			}
		} else {
			flag = false;
		}
		return flag;
	}
	
}
