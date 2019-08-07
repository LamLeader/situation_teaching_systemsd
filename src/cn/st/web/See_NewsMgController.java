package cn.st.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="news")
public class See_NewsMgController {
	
   /**
    * 新闻查看
    * @param model
    * @return
    * @author qq
    */
   @RequestMapping
   public String  list(Model model) {
	
    return "news/list";
}
}
