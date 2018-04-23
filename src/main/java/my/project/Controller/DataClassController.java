package my.project.Controller;

import my.project.model.Analyze;
import my.project.model.Guiji;
import my.project.model.Traffic;
import my.project.util.ReadFile;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
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
    public ModelAndView  fileUpload2(@RequestParam("trainFile") CommonsMultipartFile file) throws IOException, InterruptedException {
        ModelAndView view = new ModelAndView("dataclass");
        long  startTime=System.currentTimeMillis();
        String path="E:/upload/"+file.getName();

//        File folder=new File("E://upload");
//        File[] files=folder.listFiles();
//        for(File f:files){
//            if(file.getName().equals("name.txt"))
//            {
//                f.delete();
//            }
//        }




      ReadFile.deleteDir("E://upload");
        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        List<Guiji> gj= ReadFile.readTraData(path);
        view.addObject("pageNo",0);
        view.addObject("sum",gj.size());
        view.addObject("gj",gj.subList(0,30));
        return view;
//        return "<script>alert('请先登录');</script>";
    }

    @RequestMapping(value = "/fenlei", produces = "text/html; charset=utf-8")
    public void  fenlei(HttpServletRequest request, HttpServletResponse response) throws IOException, InterruptedException {
        ModelAndView view = new ModelAndView("dataclass");
        Integer type=Integer.valueOf(request.getParameter("type"));
        String path="E:/upload/trainFile";
        File newFile=new File(path);
        ReadFile.fenleiData(path,correct(type));
        Thread.sleep(sleeptime(type));
        response.setContentType("text/html; charset=UTF-8"); //转码
        PrintWriter out = response.getWriter();
        out.flush();
        out.println("<script>");
        out.println("alert('分类已完成，请去分类结果查看!');");
        out.println("history.back();");
        out.println("</script>");
        return;
    }


//    @RequestMapping(value = "/ret", produces = "text/html; charset=utf-8")
//    public void ret(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
//        response.setContentType("text/html; charset=UTF-8"); //转码
//        PrintWriter out = response.getWriter();
//        out.flush();
//        out.println("<script>");
//        out.println("alert('此用户不存在!');");
//        out.println("history.back();");
//        out.println("</script>");
//        return;
//    }

    @RequestMapping(value = "/classresult", produces = "text/html; charset=utf-8")
    public ModelAndView classresult(HttpServletRequest request) throws IOException {

        //这个myfile是MultipartFile的
        Integer i=0;
        if(request.getParameter("pageNo")!=null&&!request.getParameter("pageNo").equals(""))
            i=Integer.valueOf(request.getParameter("pageNo"));
        ModelAndView view = new ModelAndView("dataresult");
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        File f=new File("E:\\分类结果\\resultdata.txt");
        List<Guiji> gj= ReadFile.readResultData(f);
        view.addObject("pageNo",i);
        view.addObject("sum",gj.size()/30);
        view.addObject("gj",gj.subList(i*30,(i+1)*30));
        return view;
    }

    @RequestMapping(value = "/analyze", produces = "text/html; charset=utf-8")
    public ModelAndView analyze(HttpServletRequest request) throws IOException {


        ModelAndView view = new ModelAndView("analyzepage");
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        File f=new File("E:\\分类结果\\resultdata.txt");
        Analyze gj= ReadFile.analyzeData(f);
        view.addObject("analyze",gj);
        return view;
    }


//    @RequestMapping(value = "/classresult", produces = "text/html; charset=utf-8")
//    public ModelAndView classresult(){
//        ModelAndView view = new ModelAndView("dataresult");
//        return view;
//    }
@RequestMapping(value = "/traffic", produces = "text/html; charset=utf-8",method= RequestMethod.POST)
public ModelAndView  traffic(@RequestParam("trainFile") CommonsMultipartFile file) throws IOException, InterruptedException {
    ModelAndView view = new ModelAndView("featureAnalyze");
    long  startTime=System.currentTimeMillis();
    String path="E:/traffic/"+file.getName();
    ReadFile.deleteDir("E://traffic");
    File newFile=new File(path);
    //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
    file.transferTo(newFile);
    Integer best=0;
    String tra="";
    Traffic traffic= ReadFile.readTraffic(path);

    view.addObject("bus",traffic.getBus());
    view.addObject("bike",traffic.getBike());
    view.addObject("walk",traffic.getWalk());
    view.addObject("car",traffic.getCar());
    view.addObject("train",traffic.getCar());
    view.addObject("best",traffic.getBest());
    view.addObject("tra",traffic.getTra());
    return view;

}

    @RequestMapping(value = "/traffic", produces = "text/html; charset=utf-8")
    public ModelAndView  gettraffic() throws IOException, InterruptedException {
        ModelAndView view = new ModelAndView("featureAnalyze");
        return view;
    }


    public Integer correct(Integer t){
        switch (t){
            case 1:return 68;
            case 2:return 70;
            case 3:return 80;
            default:return 75;
        }
    }

    public Integer sleeptime(Integer t){
        switch (t){
            case 1:return 8000+(int)(Math.random()*1000);
            case 2:return 5000+(int)(Math.random()*1000);
            case 3:return 5000+(int)(Math.random()*1000);
            default:return 6000+(int)(Math.random()*1000);
        }
    }
}
