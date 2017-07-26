//package edu.letsstudy.project.controller;
//
//import edu.letsstudy.project.pojo.Chat;
//import edu.letsstudy.project.pojo.User;
//import org.hibernate.Criteria;
//import org.hibernate.Query;
//import org.hibernate.SessionFactory;
//import org.hibernate.criterion.Restrictions;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.transaction.annotation.Transactional;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//import java.time.LocalDate;
//import java.util.List;
//
//@Transactional
//@Controller
//public class LoginController {
//
//    @Autowired
//    SessionFactory sessionFactory;
//
//    //переход на главную страницу
//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public String main() {
//        return "index";
//    }
//
//    //переход на страницу оплаты
//    @RequestMapping(value = "/payment", method = RequestMethod.GET)
//    public String payment() {
//        return "payment";
//    }
//
//    //переход на страницу чата
//    @RequestMapping(value = "/chat", method = RequestMethod.GET)
//    public String chat() {
//        return "chat";
//    }
//
//    //переход на страницу поиска
//    @RequestMapping(value = "/search", method = RequestMethod.GET)
//    public String search() {
//        return "search";
//    }
//
//
//    //переход на страницу просмотра профиля учителя
//    @RequestMapping(value = "/show_profile", method = RequestMethod.GET)
//    public String showProfile() {
//        return "show_profile";
//    }
//
//    //переход на страницу календаря
//    @RequestMapping(value = "/show_calendar", method = RequestMethod.GET)
//    public String showCalendar() {
//        return "show_calendar";
//    }
//
//
//    @RequestMapping(value = "/checkEmail", method = RequestMethod.GET, produces = { "text/html; charset=UTF-8" })
//    public @ResponseBody
//    User checkStrength(@RequestParam String userEmail) {
//        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
//        criteria.add(Restrictions.eq("email", userEmail));
//        User user = (User) criteria.uniqueResult();
//        if(user == null){
//            return user;
//        }else {
//            return user;
//        }
//    }
//
//
//    @Transactional
//    @RequestMapping(value = "/autorization", method = RequestMethod.POST)
//    public ModelAndView autorization(@RequestParam("autEmail") String autEmail,
//                                     @RequestParam("autPsw") String autPsw,
//                                     HttpSession httpSession) {
//        ModelAndView modelAndView = new ModelAndView();
//        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
//        criteria.add(Restrictions.eq("email", autEmail));
//        criteria.add(Restrictions.eq("password", autPsw));
//        String sql = "UPDATE reg.users SET status = 1 WHERE email='" + autEmail +"'";
//        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
//        User user = (User) criteria.uniqueResult();
//        if(user == null){
//            System.out.println("нет пользователя");
//            modelAndView.setViewName("index");
//        }else {
//            httpSession.setAttribute("userSession", user);
//            modelAndView.setViewName("user_page");
//        }
//        return modelAndView;
//    }
//    @RequestMapping(value = "/invalidate", method = RequestMethod.GET)
//    public ModelAndView invalidate(@RequestParam("email") String autEmail,
//            HttpSession httpSession) {
//        ModelAndView modelAndView = new ModelAndView();
//        String sql = "UPDATE reg.users SET status = 0 WHERE email='" + autEmail +"'";
//        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
//        httpSession.invalidate();
//
//        modelAndView.setViewName("index");
//        return modelAndView;
//    }
//
//    //регистрация
//    @Transactional
//    @RequestMapping(value = "/regist_user", method = RequestMethod.POST)
//    public ModelAndView registrUser(@RequestParam("userEmail") String userEmail,
//                                    @RequestParam("userName") String userName,
//                                    @RequestParam("role") String role,
//                                    @RequestParam("userPsw") String userPsw,
//                                    HttpSession httpSession, HttpServletRequest request) {
//        ModelAndView modelAndView = new ModelAndView();
//        User user = new User();
//        user.setEmail(userEmail);
//        user.setUsername(userName);
//        user.setPassword(userPsw);
//        String sql = "INSERT INTO reg.users (email, user_name, password, role) " +
//                "VALUES (" + "'" + userEmail + "','" + userName + "','" + userPsw + "','" + role + "')";
//        try{
//            sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
//            httpSession.setAttribute("userSession", user);
//            modelAndView.setViewName("user_page");
//            return modelAndView;
//        } catch (Exception e){
//            request.setAttribute("error", true);
//            modelAndView.setViewName("index");
//            return modelAndView;
//        }
//
//
//    }
//
//    @Transactional
//    @RequestMapping(value = "/regist_teacher", method = RequestMethod.POST)
//    public ModelAndView registrTeacher(@RequestParam("teachEmail") String teachEmail,
//                                       @RequestParam("teachName") String teachName,
//                                       @RequestParam("role") String role,
//                                       @RequestParam("teachPsw") String teachPsw,
//                                       HttpSession httpSession, HttpServletRequest request) {
//        ModelAndView modelAndView = new ModelAndView();
//        User user = new User();
//        user.setEmail(teachEmail);
//        user.setUsername(teachName);
//        user.setPassword(teachPsw);
//        String sql = "INSERT INTO reg.users (email, user_name, password, role) " +
//                "VALUES (" + "'" + teachEmail + "','" + teachName + "','" + teachPsw + "','" + role + "')";
//        try{
//        sessionFactory.getCurrentSession().createSQLQuery(sql).executeUpdate();
//        httpSession.setAttribute("teacherSession", user);
//        modelAndView.setViewName("teacher_page");
//        return modelAndView;
//        } catch (Exception e){
//            request.setAttribute("error", true);
//            modelAndView.setViewName("index");
//            return modelAndView;
//        }
//    }
//
//    //    Отобразить все чаты сгрупированные по ид
//    @Transactional
//    @RequestMapping(value = "/show_my_chats", method = RequestMethod.POST)
//    public ModelAndView showMyChats(HttpSession session,HttpServletRequest request) {
//        ModelAndView modelAndView = new ModelAndView();
//        List<Chat> res = sessionFactory.getCurrentSession().createQuery("from Chat GROUP BY img").list();
//        session.setAttribute("res", res);
//        modelAndView.setViewName("chat");
//        return modelAndView;
//    }
//
//    //    Посмотреть конкретынй чат
//    @Transactional
//    @RequestMapping(value = "/show_this_chat", method = RequestMethod.POST)
//    public ModelAndView showThisChat(@RequestParam("img") String img) {
//        ModelAndView modelAndView = new ModelAndView();
//        Query query = sessionFactory.getCurrentSession().createQuery("from Chat WHERE img = :img")
//                .setParameter("img", img);
//        List<Chat> showThisChat = query.list();
//        modelAndView.addObject("showThisChat", showThisChat);
//        modelAndView.setViewName("chat");
//        return modelAndView;
//    }
//
//    //    Отправить сообщение
//    @Transactional
//    @RequestMapping(value = "/send_mssg", method = RequestMethod.POST)
//    public ModelAndView sendMssg(@RequestParam("message") String message,
//                                 @RequestParam("idTeacher") String idTeacher,
//                                 @RequestParam("date") LocalDate date,
//                                 @RequestParam("username") String username,
//                                 @RequestParam("idStudent") String idStudent,
//                                 @RequestParam("img") String img, HttpSession httpSession) {
//        ModelAndView modelAndView = new ModelAndView();
//        Chat chat = new Chat();
//        chat.setMessage(message);
//        chat.setDate(date);
//        httpSession.setAttribute("chat", chat);
//        modelAndView.setViewName("message");
//        return modelAndView;
//    }
//
//}
