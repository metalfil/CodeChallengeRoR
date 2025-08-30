class Item < ApplicationRecord
    has_many :sales
    has_many :buyers, through: :sales
    has_many :sellers, through: :sales
end
