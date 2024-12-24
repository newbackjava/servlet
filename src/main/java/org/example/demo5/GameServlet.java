package org.example.demo5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "game", value = "/game")
public class GameServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        System.out.println("GET---------------------");
        //받을 때 한글 처리 server.xml 설정에 따라감.
        //서버에서 데이터를 받자.
        String gameName = req.getParameter("gameName");
        String gameType = req.getParameter("gameType");

        //응답을 보내자. 한글로!!
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<html><body>");
        out.println("<h1>게임서블릿이 받은 값들</h1>");
        out.println("<h2>" + gameName + "</h2>");
        out.println("<h2>" + gameType + "</h2>");
        out.println("</body></html>");
        out.close();
    }
}
