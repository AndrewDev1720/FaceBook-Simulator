class PagesController < ApplicationController
  def home
    redirect_to articles_path if ()
  end

  def about
  end
end
