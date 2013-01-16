require_dependency 'widget'

class WidgetsController < ApplicationController
  layout "base"

  queryable

  def index
    render :layout => !request.xhr?
  end
end
