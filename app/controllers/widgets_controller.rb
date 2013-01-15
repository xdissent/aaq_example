require_dependency 'widget'

class WidgetsController < ApplicationController
  layout "base"

  include QueryableHelper
  helper :queryable

  query_class WidgetQuery

  before_filter :find_query_object

  def index
    @widgets = @query.query
    render :layout => !request.xhr?
  end
end
