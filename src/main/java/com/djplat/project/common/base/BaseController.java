package com.djplat.project.common.base;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public abstract class BaseController {
	private static final String CURR_IMAGE_REPO_PATH = "C:\\shopping\\file_repo";

	private void deleteFile(String fileName) {
		File file = new File(CURR_IMAGE_REPO_PATH + "\\" + fileName);
		try {
			file.delete();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/*.do", method = { RequestMethod.POST, RequestMethod.GET })
	protected ModelAndView viewForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	protected String calcSearchPeriod(String fixedSearchPeriod) {
		String beginDate = null;
		String endDate = null;
		String endYear = null;
		String endMonth = null;
		String endDay = null;
		String beginYear = null;
		String beginMonth = null;
		String beginDay = null;
		DecimalFormat df = new DecimalFormat("00");
		Calendar cal = Calendar.getInstance();

		endYear = Integer.toString(cal.get(Calendar.YEAR));
		endMonth = df.format(cal.get(Calendar.MONTH) + 1);
		endDay = df.format(cal.get(Calendar.DATE));
		endDate = endYear + "-" + endMonth + "-" + endDay;

		if (fixedSearchPeriod == null) {
			cal.add(cal.MONTH, -4);
		} else if (fixedSearchPeriod.equals("one_week")) {
			cal.add(Calendar.DAY_OF_YEAR, -7);
		} else if (fixedSearchPeriod.equals("two_week")) {
			cal.add(Calendar.DAY_OF_YEAR, -14);
		} else if (fixedSearchPeriod.equals("one_month")) {
			cal.add(cal.MONTH, -1);
		} else if (fixedSearchPeriod.equals("two_month")) {
			cal.add(cal.MONTH, -2);
		} else if (fixedSearchPeriod.equals("three_month")) {
			cal.add(cal.MONTH, -3);
		} else if (fixedSearchPeriod.equals("four_month")) {
			cal.add(cal.MONTH, -4);
		}

		beginYear = Integer.toString(cal.get(Calendar.YEAR));
		beginMonth = df.format(cal.get(Calendar.MONTH) + 1);
		beginDay = df.format(cal.get(Calendar.DATE));
		beginDate = beginYear + "-" + beginMonth + "-" + beginDay;

		return beginDate + "," + endDate;
	}

}
