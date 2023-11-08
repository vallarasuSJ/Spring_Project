package com.codeLogin.Controller;

import com.codeLogin.Dao.LoginDao;
import com.codeLogin.Dao.RegisterDao;
import com.codeLogin.model.Login;
import com.codeLogin.model.Register;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String showPage(HttpServletRequest request) {
        return "index";

    }

    @RequestMapping("/ProcessLoginForm")
    public String login(HttpServletRequest request) {

        LoginDao loginDao = new LoginDao();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("success");

        Login loggedUser = loginDao.loginUser(username, password);
        if (loggedUser != null) {
            return "ProcessLoginForm";
        } else {
            return "index";
        }

    }

    @RequestMapping("/RegisterForm")
    public String showRegisterForm() {
        return "RegisterForm";
    }

    @RequestMapping("/ProcessRegisterForm")
    public String register(HttpServletRequest request,Model model) throws SQLException {
        RegisterDao registerDao = new RegisterDao();


        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String password = request.getParameter("password");

        model.addAttribute("firstname", firstname);
        model.addAttribute("lastname", lastname);
        model.addAttribute("gender", gender);
        model.addAttribute("city", city);
        model.addAttribute("state", state);
        registerDao.registerUser(firstname, lastname, gender, city, state, password);
        return "ProcessRegisterForm";

    }

}