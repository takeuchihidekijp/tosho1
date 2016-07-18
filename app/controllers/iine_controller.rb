class IineController < ApplicationController
  before_action :logged_in_user

  def new
    @iine = DocRef.new
  end

  def create
    o = {
      from: params[:from],
      to: params[:to]
    }
    doc = Doc.find(params[:doc_id])
    doc.doc_refs.create(o)
  end

  def destroy
  end

  private

end

