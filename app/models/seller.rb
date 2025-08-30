class Seller < ApplicationRecord
    has_many :sales
    has_many :items, through: :sales
    has_many :buyers, through: :sales
end
