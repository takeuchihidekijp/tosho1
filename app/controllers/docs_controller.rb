class DocsController < ApplicationController
  before_action :logged_in_user

  # /docs
  def index
    #@docs = Doc.where()
  end

  def new
  end
end
