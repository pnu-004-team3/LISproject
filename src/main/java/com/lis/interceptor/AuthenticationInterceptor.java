package com.lis.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class AuthenticationInterceptor extends HandlerInterceptorAdapter{
 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        
    	// session ��ü�� ������
        HttpSession session = request.getSession();
        // loginó���� ����ϴ� ����� ������ ��� �ִ� ��ü�� ������
        Object obj = session.getAttribute("login");

        if ( obj == null ){
            // �α����� �ȵǾ� �ִ� ���������� �α��� ������ �ٽ� ��������(redirect)
            response.sendRedirect("/test/login");
            return false; // ���̻� ��Ʈ�ѷ� ��û���� ���� �ʵ��� false�� ��ȯ��
        }
         
        // preHandle�� return�� ��Ʈ�ѷ� ��û uri�� ���� �ǳ� �ȵǳĸ� �㰡�ϴ� �ǹ���
        // ���� true���ϸ� ��Ʈ�ѷ� uri�� ���� ��.
        return true;

    }
    
 
    // ��Ʈ�ѷ��� ����ǰ� ȭ���� �������� ������ ����Ǵ� �޼���
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        // TODO Auto-generated method stub
        super.postHandle(request, response, handler, modelAndView);
    }


 
    
    
}
