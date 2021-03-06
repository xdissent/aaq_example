class Widget < ActiveRecord::Base

  acts_as_queryable :columns => {
    :name => {:sortable => true},
    :description => {},
    :public => {:groupable => true},
    :created_at => {:sortable => "widgets.created_at", :default_order => 'desc'},
    :updated_at => {:sortable => true, :default_order => 'desc'},
    :quantity => {:sortable => true, :default_order => 'desc'}
  }, :filters => {
    :name => {:type => :text, :order => 1},
    :description => {:type => :text, :order => 2},
    :public => {:type => :boolean, :order => 3},
    :created_at => {:type => :date_past, :order => 4},
    :updated_at => {:type => :date_past, :order => 5},
    :quantity => {:type => :integer, :order => 6}
  }
end
