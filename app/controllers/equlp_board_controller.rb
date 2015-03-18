class EqulpBoardController < ApplicationController
  before_action :login_check
  skip_before_action :login_check, :only => [:post_equlp, :numstatus_complete, :status_complete]
  def post_equlp
  end

  def reservation_complete
  end

  def numstatus_complete
  end

  def status_complete
  end
end
