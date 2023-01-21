<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
</head>
<body>

   <table>
      <tr>
         <th>No</th>
         <th>Title</th>
         <th>Name</th>
         <th>View</th>
         <th>�ۼ��ð�</th>
         <th>����������</th>
      </tr>
      
      <c:forEach items="${boards}" var="board">
         <tr>
            <td>${board.board_id}</td>
            <td>${board.write_title}</td>
            <td>${board.writer_id}</td>
            <td>${board.write_view}</td>
            <td>${board.creationDateTime}</td> <!-- ���ð� �ð�����.. ���� ������ ��¥�� -->
            <td>${board.write_recommend}</td>
         </tr>
         <!-- <li id="board${board.board_id}">${board}</li> -->
      </c:forEach>
   </table>
   
   <c:forEach begin="${pagination_start}" end="${pagination_end}" var="i">
      <a href="./list?page=${i}">${i}</a>
   </c:forEach>

</body>
</html>