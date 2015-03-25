class CommunityBoardController < ApplicationController
  before_action :login_check
  skip_before_action :login_check, :only => [:show, :cicpost, :imgpost, :freepost, :datapost, :eventpost, :graduatepost, :jobpost]
  include ApplicationHelper
  def cicpost
    dc=Board.where(board_type_id: "cicposts")
    @boardList=dc.find(:all, :limit =>rowsPerPage, :order=>'created_at desc')
    @totalCnt = dc.all.count
    @current_page =1
    @totalPageList=getTotalPageList(@totalCnt, rowsPerPage)
  end

  def imgpost
  end

  def freepost
  end

  def datapost
  end

  def eventpost
  end

  def graduatepost
  end

  def jobpost
  end

  def faqpost
  end

  def posts
  end
  
  def edit
    @post = Board.find(params[:id])
  end
    
  def write_complete
    post = Board.new
    c = Member.where(id:session[:user_id])[0]
    post.writer=c.name
    post.board_type_id = params[:post_category]
    post.title = params[:post_title]
    post.text = params[:post_content]
    if post.save
      flash[:alert] = "저장되었습니다."
      redirect_to "/#{post.board_type_id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def edit_complete
    post =Board.find(params[:id])
    post.board_type_id = params[:post_category]
    post.title = params[:post_title]
    post.text = params[:post_content]
    if post.save
      flash[:alert] = "수정되었습니다."
      redirect_to "/#{post.board_type_id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def delete_complete
    post = Board.find(params[:id])
    post.destroy
    flash[:alert] = "삭제되었습니다."
    redirect_to "/"

  end
  
  def viewWork
    @post = Board.find(params[:id])
    Board.increment_counter(:read_count, params[:id] ) # hits increase
  end
  
#  def listSpecificPageWork
 #    @current_page = params[:current_page]
  #   @totalCnt = Board.all.count
   #  @totalPageList = getTotalPageList( @totalCnt, rowsPerPage)
     #@boardList = Board.find_by_sql ["select ID,TITLE,MEMBER_ID, CREATED_AT, MAIL,TEXT,READ_COUNT from BOARD ORDER BY id desc limit %s offset %s", rowsPerPage, @current_page.to_i ==1 ? 0 : 2*(@current_page.to_i-1) ] 
 # end
end
