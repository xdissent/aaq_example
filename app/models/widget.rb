class Widget < ActiveRecord::Base

  acts_as_queryable :columns => [
    {:name => :name, :sortable => "#{table_name}.name"},
    {:name => :description, :sortable => "#{table_name}.description"},
    {:name => :public, :sortable => "#{table_name}.public", :groupable => true},
    {:name => :created_at, :sortable => "#{table_name}.created_at", :default_order => 'desc'},
    {:name => :updated_at, :sortable => "#{table_name}.updated_at", :default_order => 'desc'}
  ], :filters => {
    :name => {:type => :text, :order => 1},
    :description => {:type => :text, :order => 2},
    :public => {:type => :integer, :order => 3},
    :created_at => {:type => :date_past, :order => 4},
    :updated_at => {:type => :date_past, :order => 5}
  }
end
