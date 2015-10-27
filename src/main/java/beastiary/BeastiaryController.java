package beastiary;
 
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class BeastiaryController {
 
    @Autowired
    private BeastiaryDao beastiaryDao;
 
    @RequestMapping(value="/beastiary")
    public ModelAndView guestbook(HttpServletRequest request) {
        // Handle a new guest (if any):
        String name = request.getParameter("name");
        if (name != null)
        	beastiaryDao.persist(new Beastiary(name));
 
        // Prepare the result view (guest.jsp):
        return new ModelAndView("beastiary.jsp", "beastiaryDao", beastiaryDao);
    }
    
    @RequestMapping(value="/index")
    public ModelAndView beastiaryIndex(HttpServletRequest request) {
    	ModelAndView model =  new ModelAndView("Index");
        return model;
    }
    
    @RequestMapping(value="/monsterList")
    public ModelAndView beastiaryMonsterList(HttpServletRequest request) {
        return new ModelAndView("List");
    }
    
    @RequestMapping(value="/createMonster")
    public ModelAndView beastiaryCreateMonster(HttpServletRequest request) {
    	return new ModelAndView("createMonster");
    }
    
    @RequestMapping(value="/monster")
    public ModelAndView beastiaryMonster(HttpServletRequest request) {
        return new ModelAndView("Monster");
    }
    @RequestMapping(value="/user")
    public ModelAndView beastiaryUser(HttpServletRequest request) {
    	String name = request.getParameter("name");
        return new ModelAndView("User");
    }
    
    @RequestMapping(value="/createUser")
    public ModelAndView beastiaryCreateUser(HttpServletRequest request) {
    	String name = request.getParameter("name");
        return new ModelAndView("createUser");
    }
}