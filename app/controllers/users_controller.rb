class UsersController < ApplicationController
  def show
    p "你访问了 show"
  end

  def create
    user = User.new email: "shenxin@qq.com", name: "shenxin"
    if user.save
      render json: user
    else
      p "失败"
    end
  end
end
