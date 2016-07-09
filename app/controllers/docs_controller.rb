class DocsController < ApplicationController
  before_action :logged_in_user

  # /docs
  def index
    #@docs = Doc.where()
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(document_params)
    if !@doc.save
      redirect_to current_user, notice: '文書作成しました！'
    else
      flash.now[:alert] = '文書作成失敗しました'
      render 'new'
    end
  end

  private

  def document_params
    params.require(:doc).permit(:title, :body)
  end

end
