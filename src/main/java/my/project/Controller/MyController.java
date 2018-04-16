package my.project.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

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


//    @RequestMapping(value = "/index")
//    public String HelloWord(){
//
//        return "page/jsptest";
//    }
}
