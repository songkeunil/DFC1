package com.djplat.project.mail;

import java.util.Random;
//이메일 인증을 난수화 하는 코드
//이메일 기능으로 아이디/비밀번호 찾기도 구현 할 계획이라 클래스로 분리해서 import할 예정
public class TempKey {
	private boolean lowerCheck;
	private int size;
	
	public String getKey(int size, boolean lowerCheck) {
		this.size = size;
		this.lowerCheck = lowerCheck;
		return init();
	}
	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;
		do {
			num = ran.nextInt(75) + 48;
			if((num>=48 && num<=57)||(num >= 65 && num <= 90)|| (num>=97 && num <=122)) {
				sb.append((char)num);
			}else {
				continue;
			}
		}while(sb.length()<size);
		if(lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}
}
