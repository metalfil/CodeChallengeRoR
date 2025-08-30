class Buyer < ApplicationRecord
    has_many :sales
    has_many :items, through: :sales
    has_many :sellers, through: :sales
end
