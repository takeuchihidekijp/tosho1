class DocGroupsController < ApplicationController
  def new
    @cat = DocCategory.new
  end
  
  def create
    @cat = DocCategory.new(category_params)
    if !@cat.save
      redirect_to current_user, notice: 'カテゴリ作成しました！'
    else
      flash.now[:alert] = 'カテゴリ作成失敗しました'
      render 'new'
    end
  end
  
    private

  def category_params
    params.require(:cat).permit(:name)
  end
  
end
