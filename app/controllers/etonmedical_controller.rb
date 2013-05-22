class EtonmedicalController < ApplicationController
  def index
    @etonmedicals = Etonmedical.includes(:etonmedicalimgs)
  end
end
