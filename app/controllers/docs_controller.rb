class DocsController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user

  # /docs
  def index
    q = params[:q]
    if q.present?
      @docs = Doc.where("body like '%"+q+"%'")
    else
      @docs = Doc.order('created_at')
    end
  end

  def show
    @doc = Doc.find(params[:id])
  end

  def new
    @doc = Doc.new
    @doc.build_doc_category
  end

  def create
    @doc = Doc.new(document_params)
    @doc.user = current_user
    if @doc.save
      redirect_to root_path, notice: '文書作成しました！'
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
    @doc.destroy
    redirect_to root_path, notice: 'ドキュメント削除しました！'
  end

  private

  def set_doc
    @doc = Doc.find(params[:id])
  end

  def document_params
    params.require(:doc).permit(:title, :body, doc_category_attributes: [:id, :name])
  end


end
