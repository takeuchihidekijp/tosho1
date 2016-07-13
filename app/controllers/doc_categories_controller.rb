class DocCategoriesController < ApplicationController

  def index
    @cat = DocCategory.all
  end

  def show
  end

  def new
    @cat = DocCategory.new
  end

  def create
    @cat = DocCategory.new(category_params)
    if @cat.save
      redirect_to current_user, notice: 'カテゴリ作成しました！'
    else
      flash.now[:alert] = 'カテゴリ作成失敗しました'
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def category_params
    params.require(:doc_category).permit(:name)
  end

end
