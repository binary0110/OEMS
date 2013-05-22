class NewsitemController < ApplicationController
  def index
    @newsitems = Newsitem.includes(:newsitemimgs)
  end
end
