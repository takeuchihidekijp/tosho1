class DocController < ApplicationController
  before_action :set_doc, only: [:show, :edit, :update, :destroy]
  
  # /docs
  def index
    #@docs = Doc.where()
  end
  
  def show
  end
  
  def new
  end
  
  def create
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

end
