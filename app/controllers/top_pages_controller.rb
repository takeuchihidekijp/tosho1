class TopPagesController < ApplicationController
  def home
    q = params[:q]
    cat = params[:category]
    user = params[:user]
    
    w = Doc
    if q.present?
      w = w.where("body like '%%%s%%'" % q)
    end
    
    if cat.present?
      w = w.where(doc_category: cat)
    end
    
    if user.present?
      w = w.where(user: user)
    end
    
    @docs = w.order("created_at desc")
  end
end
