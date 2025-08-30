class Sale < ApplicationRecord
    belongs_to :buyer
    belongs_to :item
    belongs_to :seller
end
