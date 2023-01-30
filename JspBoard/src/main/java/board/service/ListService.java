package board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.dao.BoardDao;
import board.dao.BoardDao_Impl;
import board.dto.Board;

public class ListService implements Service{
   BoardDao dao = new BoardDao_Impl();
   
   @Override
   public String service(HttpServletRequest req) {
	   String pageStr = req.getParameter("page");
      
      // page 1 : 0 ~ 9
      // page 2 : 1- ~ 19
      // page 3 : 20 ~ 29
      // page i : (i - 1) * 10 ~ (i * 10) - 1 or 글의 최대 개수
      
   
      List<Board> boards = dao.selectAllBords();
      
      // 현재 페이지 값을 통해 가져온 전체 글들 중 10개만 어트리뷰트에 실을 수 있도록
      // 부분 리스튿를 생성해야 한다
      int page;
      
      if (pageStr == null) {
    	  page = 1;
      } else {
    	  page = Integer.parseInt(pageStr);
      }
      
      // start_index : (page - 1) * size
      // end_index : page * size - 1 or 글의 최대 개수
      
      int page_size = 10;
      int board_size = boards.size();
      int start_index = (page - 1) * page_size;
      int end_index = page * page_size;
      end_index = end_index > board_size ? board_size : end_index;
      
      System.out.printf("현재 페이지는 %d페이지고, 시작 인덱스는 %d, 마지막 인덱스는 %d입니다.\n"
    		  , page, start_index, end_index);
      
      // 전체 글이 47개면 5페이지 필요하다
      int max_page = boards.size() % page_size == 0 ?
    		  board_size / page_size : board_size / page_size + 1;
      
      // 현재 페이지가 5일때 1 ~ 10로 나왔으면 함
      // 현재 페이지가 37일때 31 ~ 40로 나왔으면 함
      int pagination_start = (page / page_size) * page_size + 1;
      int pagination_end = (page / page_size + 1) * page_size;
      
      pagination_end = pagination_end > max_page ? 
    		  max_page : pagination_end; 
      
      System.out.printf("현재 페이지는 %d이고, 페이지 네비게이션 시작 숫자는 %d, 마지막 숫자는 %d입니다.\n",
    		  page, pagination_start, pagination_end);
      
      req.setAttribute("boards", boards.subList(start_index, end_index));
      req.setAttribute("pagination_start", pagination_start);
      req.setAttribute("pagination_end", pagination_end);
      
      return "board/list";
   }
}