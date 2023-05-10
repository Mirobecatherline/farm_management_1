class Factoryfarm < ApplicationRecord
  belongs_to :factory
  has_many :factoryfarmberries
  has_many :expenditures
end
