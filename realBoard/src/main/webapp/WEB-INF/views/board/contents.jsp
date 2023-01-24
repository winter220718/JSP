<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${board.write_title }</title>
</head>
<body>

글 번호 : ${board.board_id }<br>
글 제목 : ${board.write_title}<br>
글쓴이 : ${board.writer_id }<br>
글 내용 : ${baord.write_content }<br>
추천 수 : ${board.write_recommend }<br>
비추 수 : ${board.write_not_recommend }<br>
조회 수 : ${board.write_view }<br>

<button>글 수정</button>
<button>글 삭제</button>
<button onclick="location.href='./list'">글 목록</button>

</body>
</html>