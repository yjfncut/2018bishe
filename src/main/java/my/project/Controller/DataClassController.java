package my.project.Controller;

import my.project.model.Guiji;
import my.project.util.ReadFile;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * Created by 1107 on 2018-04-21.
 */
@Controller
@RequestMapping("/")
public class DataClassController {

    @RequestMapping(value = "/dataclass", produces = "text/html; charset=utf-8")
    public ModelAndView HelloWord(){
        ModelAndView view = new ModelAndView("dataclass");
        return view;
    }

    @RequestMapping(value = "/upload", produces = "text/html; charset=utf-8")
    public ModelAndView  fileUpload2(@RequestParam("trainFile") CommonsMultipartFile file) throws IOException {
        ModelAndView view = new ModelAndView("dataclass");
        long  startTime=System.currentTimeMillis();
        System.out.println("fileName："+file.getOriginalFilename());
        String path="E:/upload/"+file.getName();

        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        long  endTime=System.currentTimeMillis();
        System.out.println("方法二的运行时间："+String.valueOf(endTime-startTime)+"ms");


        List<Guiji> gj= ReadFile.readTraData(path);
        view.addObject("pageNo",0);
        view.addObject("sum",gj.size());
        view.addObject("gj",gj.subList(0,30));
        return view;
//        return "<script>alert('请先登录');</script>";
    }
}
