class TopPagesController < ApplicationController
  def home
    q = params[:q]
    if q.present?
      @docs = Doc.where("body like '%%%s%%'" % q)
    else
      @docs = Doc.order("created_at desc")
    end
  end
end
