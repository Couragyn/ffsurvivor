class K < ApplicationRecord
	include RailsSortable::Model
  set_sortable :sort
end
