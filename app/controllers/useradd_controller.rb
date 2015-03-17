class UseraddController < ApplicationController
  def signup
  end

  def signup_complete
    user = HomeMember.new
    user.name = params[:username]
    if params[:password] == params[:retype_password]
      user.password = params[:password]
      if user.save
        flash[:alert] = "성공으로 가입됬습니다."
        redirect_to "/"
      else
        flash[:alert] = user.errors.values.flatten.join(' ')
        redirect_to :back
      end
      else
        flash[:alert]="비밀번호가 맞지 않습니다."
        redirect_to :back
    end
  end

  def login
  end

  def login_complete
  end

  def logout_complete
  end
end
