class ListsController < ApplicationController
  before_action :current_list, only: [ :show ]
  def index
    @lists = List.all
  end

  def show
  end

  private

  def current_list
    @list = List.find(params[:id])
  end
end
