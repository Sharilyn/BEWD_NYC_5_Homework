class UrlsController < ApplicationController
  def redirectors
  end

  def preview
  end

  def create
    @url = Url.create link: params[:url], hash_code: rand(10000)
    redirect_to @url
  end

  def show
    @url = Url.find params[:id]
  end

end
