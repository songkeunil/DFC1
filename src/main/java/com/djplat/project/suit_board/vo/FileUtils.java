package com.djplat.project.suit_board.vo;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {
	
    private static final String filePath = "C:\\board\\article_image\\";
    
    public static List<Map<String,Object>> upload1(String req_no, MultipartHttpServletRequest request) throws Exception{
        
    	Iterator<String> iterator = request.getFileNames();
         
        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null;
         
        File file = new File(filePath + req_no);
        //경로가 존재하지 않을 경우 디렉토리를 만든다.
        if(file.exists() == false){
            file.mkdirs();
        }
         
        while(iterator.hasNext()){
            multipartFile = request.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                //업로드한 파일의 확장자를 포함한 파일명이다.
                originalFileName = multipartFile.getOriginalFilename();
                //업로드한 파일의 마지막 .을 포함한 확장자를 substring 한 것.
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                //32자리의 숫자를 포함한 랜덤 문자열 + 확장자를 붙여준 파일명이다.
                storedFileName = getRandomString() + originalFileExtension;
                 
                file = new File(filePath + req_no +"\\"+ storedFileName);
                multipartFile.transferTo(file);
                 
                listMap = new HashMap<String,Object>();
                //업로드할 당시의 파일이름
                listMap.put("fileName", originalFileName);
                //저장할 파일 이름
                listMap.put("stored_fileName", storedFileName);
                listMap.put("file_size", multipartFile.getSize());
                list.add(listMap);
            }
        }
        return list;
    }
    
    public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}
