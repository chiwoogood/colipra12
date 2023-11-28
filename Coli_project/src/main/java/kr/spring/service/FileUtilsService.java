package kr.spring.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileUtilsService {
    
    public String getFileNameFromPath(String filePath) {
        return getFileName(filePath);
    }

    public static String getFileName(String filePath) {
        return FilenameUtils.getName(filePath);
    }

    public static String getFileExtension(String originalFilename) {
        int dotIndex = originalFilename.lastIndexOf('.');
        return (dotIndex == -1) ? "" : originalFilename.substring(dotIndex + 1).toLowerCase();
    }
    
    public static String toDBuploadPath(String filePath){
    	String[] path = filePath.split("\\\\");
        String toDBuploadPath = "";
        boolean isContextPath = false;
        for (int i=0; i < path.length; i++) {
      	  if(path[i].equals("Coli_project")) {
      		  isContextPath = true;
      	  }
      	  if(isContextPath) {
      		toDBuploadPath += path[i]+"\\";
      	  }
        }
        return toDBuploadPath.substring(0, toDBuploadPath.length()-1);
    }
    
    public static String takeFilePath(HttpServletRequest request, String filePath){
    	String staticUploadPath = request.getServletContext().getRealPath("/uploadFile/");
    	String[] path = staticUploadPath.split("\\\\");
        String contextFilePath = "";
        for (int i=0; i < path.length; i++) {
      	  if(path[i].equals("Coli_project")) {
      		  break;
      	  }else {
      		contextFilePath += path[i]+"\\";
      	  }
        }
        
        path = filePath.split("\\\\");
        boolean isContextPath = false;
        for (int i=0; i < path.length; i++) {
      	  if(path[i].equals("Coli_project")) {
      		  isContextPath = true;
      	  }
      	  if(isContextPath) {
      		contextFilePath += path[i]+"\\";
      	  }
        }
        return contextFilePath.substring(0, contextFilePath.length()-1);
    }
    
    public static String uploadToLocalFile(HttpServletRequest request, MultipartFile file) throws IllegalStateException, IOException{
    	String fileName = UUID.randomUUID().toString();
    	String staticUploadPath = request.getServletContext().getRealPath("/uploadFile");
        String filePath = staticUploadPath + File.separator + fileName + "." + getFileExtension(file.getOriginalFilename());
        File copyToPath = new File(filePath);
        file.transferTo(copyToPath.getAbsoluteFile());
        return filePath;
    }
}
