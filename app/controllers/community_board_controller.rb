class CommunityBoardController < ApplicationController
  before_action :login_check
  skip_before_action :login_check, :only => [:show, :cicpost, :imgpost, :freepost, :datapost, :eventpost, :graduatepost, :jobpost]
  def cicpost
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

  def show
  end

  def write
  end

  def edit
  end

  def write_complete
    post = HomeBoard.new
    post.fk_memberID = params[:post_category]
    post.title = params[:post_title]
    post.text = params[:post_content]
    if post.save
      flash[:alert] = "저장되었습니다."
      redirect_to "/:post_category"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def edit_complete
  end

  def delete_complete
  end

  def posts_complete
  end
end
