class HomeController < ApplicationController
  def index
  end
  def events
    @eventitems = Eventitem.all
  end
  def committee
    @committees = Committee.all
  end
  def news
    @newsitems = Newsitem.all
  end
end
