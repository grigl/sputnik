class IndexController < ApplicationController
  def show_lists
    @lists = List.all
  end

  def show_list
    @list = List.find(params[:id])
  end

  def show_activity
    @activity = Activity.find(params[:id])
  end
end
