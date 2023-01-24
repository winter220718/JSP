<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정수정의 게시판</title>
</head>
<body>


   <table>
      <tr>
         <th>No</th>
         <th>Title</th>
         <th>Name</th>
         <th>View</th>
         <th>작성시간</th>
         <th>따봉아이콘</th>
      </tr>
       
      <c:forEach items="${boards}" var="board">
         <tr>
            <td>${board.board_id}</td>
            <td><a href="./board/contents?board_id=${board.board_id }&?">
            ${board.write_title}</a></td>
            <td>${board.writer_id}</td>
            <td>${board.write_view}</td>
            <td>${board.creationDateTime}</td>
            <td>${board.write_recommend}</td>
         </tr>
         <!-- <li id="board${board.board_id}">${board}</li> -->
      </c:forEach>
   </table>


</body>
</html>