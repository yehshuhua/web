
<%@page import="DAO.TaiKhoanDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="Entities.KhoaHoc"%>
<%@page import="DAO.KhoaHocDAO"%>
<%@page import="Entities.TaiKhoan"%>
<%@page import="DAO.TaiKhoanDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <link rel="stylesheet" href="css/basestyle.css">
        <link rel="stylesheet" href="css/mainpage.css">
    </head>
    <body>
        <div id="all">
            <div id="header"></div>
            <div id="profile">
                <% TaiKhoanDAOImpl taiKhoanDAOImpl = new TaiKhoanDAOImpl();
                    KhoaHocDAO khoaHocDAO = new KhoaHocDAO();
                    List<KhoaHoc> list = khoaHocDAO.getAll();
                    TaiKhoan a = taiKhoanDAOImpl.getAccByUsername(session.getAttribute("username").toString());
                    if (a != null) {%>
                <br>
                <br>
                <div class="text">MY PROFILE</div>
                <div class="box">
                    <div class="img-container1">
                        <img src="<%= a.getAvatar()%>" style="width: 200px; height: 200px;">
                    </div>
                    <div>
                        <p class="text-justify">
                            <br>Username:
                            <%= a.getUsername()%>
                            <br>Họ và tên:
                            <%= a.getHoten()%>
                            <br>Email:
                            <%= a.getEmail()%>
                            <br>Số điện thoại:
                            <%= a.getSdt()%>
                        </p>
                    </div>
                </div>
                <% }
                %>
            </div>
            <div id="khoahoc">
                <% for(KhoaHoc kh:list){ %>
                <div id="khoa">
                    <div class="titleCourse"><%= kh.getTen()%></div>
                    <div>
                        <div class="box">
                            <div class="img-container">
                                <img src="https://aptechvietnam.com.vn/c/assets/img/Layer_15.png">
                            </div>
                            <div>
                                <p class="text-justify">
                                    <%= kh.getMoTa() %>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </body>
</html>
