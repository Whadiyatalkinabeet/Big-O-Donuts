 import java.io.*;
 import javax.servlet.*;
 import javax.servlet.http.*;

 public class Cart extends HttpServlet {
   public void doPost(HttpServletRequest req, HttpServletResponse res)
                        throws ServletException, IOException {
     String s, goods[] = {"bible", "colt 45", "whisky bottle"};
     PrintWriter out = res.getWriter();
     res.setContentType("text/html");
     HttpSession session = req.getSession(true);
     if ( session == null ) return;
     for (int i = 0; i < goods.length; i++)
       if ( session.getAttribute(goods[i]) == null )
         session.setAttribute(goods[i], new Integer(0));
     if ( (s = req.getParameter("buy")) != null ) {
       int n = ((Integer)session.getAttribute(s)).intValue();
       session.setAttribute(s, new Integer(n + 1));
     }
     out.println("<html><body><h2>Shopping Cart</h2><ul>");
     for (int i = 0; i < goods.length; i++) {
       int n = ((Integer)session.getAttribute(goods[i])).intValue();
       if ( n > 0 )
         out.println("<li><b>" + goods[i] + "</b> : " + n + "</li>");
     }
     out.println("</ul></body></html>");
   }
 }
