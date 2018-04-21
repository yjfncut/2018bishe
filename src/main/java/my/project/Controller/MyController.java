package my.project.Controller;

import my.project.model.Guiji;
import my.project.util.ReadFile;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 1107 on 2018-04-10.
 */
@Controller
@RequestMapping("/")
public class MyController {

    @RequestMapping(value = "/index", produces = "text/html; charset=utf-8")
    public ModelAndView HelloWord(){
        ModelAndView view = new ModelAndView("jsptest");

        List<String> authorWords = new ArrayList<String>();
        view.addObject("key",50);
        return view;
    }

    @RequestMapping(value = "/gallery", produces = "text/html; charset=utf-8")
    public ModelAndView Gallery(){
        ModelAndView view = new ModelAndView("gallery");

        List<String> authorWords = new ArrayList<String>();
        view.addObject("key","hello");
        return view;
    }

    @RequestMapping(value = "/example", produces = "text/html; charset=utf-8")
    public ModelAndView example(){
        ModelAndView view = new ModelAndView("dataexample");

        String filePath = "E:\\geo\\Geolife Trajectories 1.3\\Geolife Trajectories 1.3\\example.txt";
        String content=ReadFile.readTxtFile(filePath);
        view.addObject("content",content);
        return view;
    }

    @RequestMapping(value = "/datatable", method= RequestMethod.GET)
    public ModelAndView datatable(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        ModelAndView view = new ModelAndView("datatable");

        String filePath = "K:\\myproject\\src\\main\\webapp\\txt\\new_test.csv";
        List<Guiji> gj=ReadFile.readTraData(filePath);
        view.addObject("pageNo",0);
        view.addObject("sum",gj.size());
        view.addObject("gj",gj.subList(0,30));
        return view;
    }

    @RequestMapping(value = "/datatable", method= RequestMethod.POST)
    public ModelAndView datapage(HttpServletRequest request, HttpServletResponse response, Model model) {
        ModelAndView view = new ModelAndView("datatable");
        try {
        Integer i=Integer.valueOf(request.getParameter("pageNo"));
        String filePath = "K:\\myproject\\src\\main\\webapp\\txt\\new_test.csv";
        List<Guiji> gj= null;
        gj = ReadFile.readTraData(filePath);
        view.addObject("pageNo",i);
        view.addObject("sum",gj.size());
        view.addObject("gj",gj.subList(i*30,(i+1)*30));
        return view;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return view;
    }


}
