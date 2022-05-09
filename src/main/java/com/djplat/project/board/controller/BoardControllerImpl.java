
package com.djplat.project.board.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.djplat.project.board.service.BoardService;
import com.djplat.project.board.vo.ArticleVO;
import com.djplat.project.member.vo.MemberVO;





@Controller("boardController")
public class BoardControllerImpl implements BoardController {
	private static final String ARTICLE_IMAGE_REPO = "C:\\board\\article_image";
	@Autowired
	private BoardService boardService;
	@Autowired
	private ArticleVO articleVO;
	
	//글 목록 창
	@Override
	@RequestMapping(value= "/board/listArticles.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String)request.getAttribute("viewName");
		String _section = request.getParameter("section");
		String _pageNum = request.getParameter("pageNum");
		int section = Integer.parseInt(((_section==null)?"1":_section));
		int pageNum = Integer.parseInt(((_pageNum==null)?"1":_pageNum));
		
		Map pagingMap = new HashMap();
		pagingMap.put("section", section);
		pagingMap.put("pageNum", pageNum);
		Map articlesMap = boardService.listArticles(pagingMap);
		articlesMap.put("section", section);
		articlesMap.put("pageNum", pageNum);

		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("articlesMap", articlesMap);
		return mav;
	}
	
	//글 쓰기 창
	  @Override
	  @RequestMapping(value="/board/addNewArticle.do" ,method = RequestMethod.POST)
	  @ResponseBody
	  public ResponseEntity  addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception {
		multipartRequest.setCharacterEncoding("utf-8");
		String imageFileName=null;
		
		Map articleMap = new HashMap();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			articleMap.put(name,value);
		}


		//로그인 시 세션에 저장된 회원 정보에서 글쓴이 아이디를 얻어와서 Map에 저장합니다.
		HttpSession session = multipartRequest.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		String id = memberVO.getMember_id();
		articleMap.put("id",id);
//		articleMap.put("parentNO", 0);
//		String parentNO = (String)session.getAttribute("parentNO");
//		articleMap.put("parentNO", (parentNO == null ? 0: parentNO));
		
//		List<String> fileList =upload(multipartRequest);
//		List<ImageVO> imageFileList = new ArrayList<ImageVO>();
//		if(fileList!= null && fileList.size()!=0) {
//			for(String fileName : fileList) {
//				ImageVO imageVO = new ImageVO();
//				imageVO.setImageFileName(fileName);
//				imageFileList.add(imageVO);
//			}
//			articleMap.put("imageFileList", imageFileList);
//		}
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
//			int articleNO = boardService.addNewArticle(articleMap);
//			if(imageFileList!=null && imageFileList.size()!=0) {
//				for(ImageVO  imageVO:imageFileList) {
//					imageFileName = imageVO.getImageFileName();
//					File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
//					File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
//					//destDir.mkdirs();
//					FileUtils.moveFileToDirectory(srcFile, destDir,true);
//				}
//			}
		
			    
			message = "<script>";
			message += " alert('새글을 추가했습니다.');";
			message += " location.href='"+multipartRequest.getContextPath()+"/board/listArticles.do'; ";
			message +=" </script>";
		    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		    
			 
		}catch(Exception e) {
//			if(imageFileList!=null && imageFileList.size()!=0) {
//			  for(ImageVO  imageVO:imageFileList) {
//			  	imageFileName = imageVO.getImageFileName();
//				File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
//			 	srcFile.delete();
//			  }
//			}
	
			
			message = " <script>";
			message +=" alert('오류가 발생했습니다. 다시 시도해 주세요');');";
			message +=" location.href='"+multipartRequest.getContextPath()+"/board/articleForm.do'; ";
			message +=" </script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			e.printStackTrace();
		}
		return resEnt;
	  }
	  
	  
	  //글 상세창 보기
		@RequestMapping(value="/board/viewArticle.do" ,method = RequestMethod.GET)
		public ModelAndView viewArticle(@RequestParam("brd_no") int brd_no,
				  HttpServletRequest request, HttpServletResponse response) throws Exception{
			String viewName = (String)request.getAttribute("viewName");
			Map articleMap=boardService.viewArticle(brd_no);
			ModelAndView mav = new ModelAndView();
			mav.setViewName(viewName);
			mav.addObject("articleMap", articleMap);
			System.out.println(mav);
			return mav;
		}
	  
		
	  //글 수정
	  @RequestMapping(value="/board/modArticle.do" ,method = RequestMethod.POST)
	  @ResponseBody
	  public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest,  
	    HttpServletResponse response) throws Exception{
	    multipartRequest.setCharacterEncoding("utf-8");
		Map<String,Object> articleMap = new HashMap<String, Object>();
		Enumeration enu=multipartRequest.getParameterNames();
		while(enu.hasMoreElements()){
			String name=(String)enu.nextElement();
			String value=multipartRequest.getParameter(name);
			articleMap.put(name,value);
		}
		
//		List<String> imageFileName= upload(multipartRequest);
//		articleMap.put("imageFileName", imageFileName);
		
		String brd_no=(String)articleMap.get("brd_no");
		String message;
		ResponseEntity resEnt=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	    try {
//	       boardService.modArticle(articleMap);
//	       if(imageFileName!=null && imageFileName.size()!=0) {
//	         File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
//	         File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO);
//	         FileUtils.moveFileToDirectory(srcFile, destDir, true);
//	         
//	         String originalFileName = (String)articleMap.get("originalFileName");
//	         File oldFile = new File(ARTICLE_IMAGE_REPO+"\\"+articleNO+"\\"+originalFileName);
//	         oldFile.delete();
//	       }	
	       message = "<script>";
		   message += " alert('글을 수정했습니다.');";
		   message += " location.href='"+multipartRequest.getContextPath()+"/board/viewArticle.do?BRD_NO="+brd_no+"';";
		   message +=" </script>";
	       resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	    }catch(Exception e) {
//	      File srcFile = new File(ARTICLE_IMAGE_REPO+"\\"+"temp"+"\\"+imageFileName);
//	      srcFile.delete();
	      message = "<script>";
		  message += " alert('오류가 발생했습니다.다시 수정해주세요');";
		  message += " location.href='"+multipartRequest.getContextPath()+"/board/viewArticle.do?BRD_NO="+brd_no+"';";
		  message +=" </script>";
	      resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
	    }
	    return resEnt;
	  }
		
		
	  //글 삭제
	  @Override
	  @RequestMapping(value = "/board/removeArticle.do" , method = RequestMethod.POST)
	  @ResponseBody
	  public ResponseEntity removeArticle(@RequestParam("brd_no") int brd_no,
			  							  HttpServletRequest request, 
			  							  HttpServletResponse response) throws Exception{
		  
		  response.setContentType("text/html; charset=UTF-8");
		  String message;
		  ResponseEntity resEnt = null;
		  HttpHeaders responseHeaders = new HttpHeaders();
		  responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		  try {
			  boardService.removeArticle(brd_no);
//				File destDir = new File(ARTICLE_IMAGE_REPO+"\\"+BRD_NO);
//				FileUtils.deleteDirectory(destDir);
				
				message = "<script>";
				message += " alert('글을 삭제했습니다.');";
				message += " location.href='"+request.getContextPath()+"/board/listArticles.do';";
				message +=" </script>";
			    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			       
			}catch(Exception e) {
				message = "<script>";
				message += " alert('작업중 오류가 발생했습니다.다시 시도해 주세요.');";
				message += " location.href='"+request.getContextPath()+"/board/listArticles.do';";
				message +=" </script>";
			    resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
			    e.printStackTrace();
			}
			return resEnt;
	  }
}
