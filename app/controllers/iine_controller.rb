class IineController < ApplicationController
  before_action :logged_in_user
  
  def new
    @iine = DocRef.new
  end
end

