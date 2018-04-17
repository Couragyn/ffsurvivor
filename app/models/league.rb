class League < ApplicationRecord
	has_many :teams, dependent: :delete_all

	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :limit, presence: true

	def teams_in_league
	  Team.where("league_id = ?", self.id).count
	end

	def self.current_week
	  1
	end
end
