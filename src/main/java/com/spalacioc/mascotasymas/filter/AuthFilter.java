package com.spalacioc.mascotasymas.filter;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spalacioc.mascotasymas.model.Persona;

@WebFilter("/*")
public class AuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);
        String path = httpRequest.getRequestURI().substring(httpRequest.getContextPath().length());

        boolean isLoggedIn = (session != null && session.getAttribute("usuario") != null);
        boolean isLoginRequest = path.equals("/login.jsp") || path.equals("/LoginServlet");
        boolean isResourceRequest = path.startsWith("/css/") || path.startsWith("/js/") || path.startsWith("/assets/");

        if (isLoginRequest || isResourceRequest || !requiresAuthentication(path)) {
            chain.doFilter(request, response);
        } else if (isLoggedIn) {
            Persona usuario = (Persona) session.getAttribute("usuario");
            if (path.equals("/perfil.jsp") && !"cliente".equals(usuario.getRol())) {
                String errorMessage = URLEncoder.encode("Acceso denegado. Solo clientes pueden acceder a esta página.", StandardCharsets.UTF_8.toString());
                httpResponse.sendRedirect("login.jsp?error=" + errorMessage);
            } else if ((path.equals("/perfilAdmin.jsp") || path.equals("/gestionarProductos.jsp")) && !"administrador".equals(usuario.getRol())) {
                String errorMessage = URLEncoder.encode("Acceso denegado. Solo administradores pueden acceder a esta página.", StandardCharsets.UTF_8.toString());
                httpResponse.sendRedirect("login.jsp?error=" + errorMessage);
            } else {
                chain.doFilter(request, response);
            }
        } else {
            String errorMessage = URLEncoder.encode("Por favor inicie sesión.", StandardCharsets.UTF_8.toString());
            httpResponse.sendRedirect("login.jsp?error=" + errorMessage);
        }
    }

    private boolean requiresAuthentication(String path) {
        return path.equals("/perfil.jsp") || path.equals("/perfilAdmin.jsp") || path.equals("/gestionarProductos.jsp");
    }

    @Override
    public void destroy() {
    }
}