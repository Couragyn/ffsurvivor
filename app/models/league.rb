class League < ApplicationRecord
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :limit, presence: true
end
