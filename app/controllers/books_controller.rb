class BooksController < ApplicationController
  before_action :authenticate_user!

  def create
    Book.create!(params[:name])
  end
end
