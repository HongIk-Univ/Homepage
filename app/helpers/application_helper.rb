module ApplicationHelper
  #title표시
  def full_title(page_title)
    base_title = "제목을 입력해주세요"
    if page_title.empty?
      base_title
    else
      "#{base_title}|#{page_tilte}"
    end
  end
  
  #paging helper
  def getTotalPageList(total_cnt,rowsPerPage)
    if((total_cut% rowsPerPage)==0)
      total_pages=total_cnt/rowsPerPage;
    else
      total_pages=(total_cnt/rowsPerPage)+1;
  end
end
end