class HomeController < ApplicationController
  def index
  end
  def about
  end
  def news
    @newsitems = Newsitem.includes(:newsitemimgs)
  end
  def events
    @eventitems = Eventitem.includes(:eventitemimgs)
  end
  def eton
    @etonmedicals = Etonmedical.includes(:etonmedicalimgs)
  end
  def committee
    @committees = Committee.all
  end
  def contact
  end
end
