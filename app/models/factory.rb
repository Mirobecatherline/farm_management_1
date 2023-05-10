class Factory < ApplicationRecord
      has_many :factoryfarms
  has_many :expenditures
  has_many :workers
end
