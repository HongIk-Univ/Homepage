class IndexController < ApplicationController
  include ApplicationHelper
  def index_page
    c=Board.where(board_type_id: "cicposts")
    @boardList=c.find(:all, :limit =>rowsPerPageIndex, :order=>'created_at desc')
    @totalCnt = c.all.count
    @current_page =1
    @totalPageList=getTotalPageList(@totalCnt, rowsPerPageIndex)
    
    j=Board.where(board_type_id: "jobposts")
    @jboardList=j.find(:all, :limit =>rowsPerPageIndex, :order=>'created_at desc')
    @jtotalCnt = j.all.count
    @jcurrent_page =1
    @jtotalPageList=getTotalPageList(@totalCnt, rowsPerPageIndex)
  end

  def index_complete
    
  end
end
