class Player < ApplicationRecord
	include RailsSortable::Model
  set_sortable :sort
end
