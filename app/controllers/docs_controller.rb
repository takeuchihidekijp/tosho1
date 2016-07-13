class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user

  # /docs
  def index
    #@docs = Doc.where()
  end

  def show
    @doc = Doc.find(params[:id])
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

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_doc
    @doc = Doc.find(params[:id])
  end

  def document_params
    params.require(:doc).permit(:title, :body)
  end

end
