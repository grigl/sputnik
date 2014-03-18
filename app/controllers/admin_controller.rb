class AdminController < ActionController::Base
  layout 'admin'

  def index
    @activities_count = Activity.all.count
    @lists_count = List.all.count
  end
end
