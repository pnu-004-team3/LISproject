<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
    <h1>Hello world!</h1>
 
    <table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${memberList}" var="member">
                <tr>
                <!-- 소문자로 할것 User_key 안됨. user_key ok -->
                    <td>${member.user_key}</td>
                    <td></td>
                </tr>
            </c:forEach>
            
            <c:forEach items="${bookList}" var="book">
                <tr>
                <!-- 소문자로 할것 User_key 안됨. user_key ok -->
                    <td>${book.TITLE}</td>
                    <td></td>
                </tr>
            </c:forEach>
            
        </tbody>
    </table>
 
 
</body>
</html>
