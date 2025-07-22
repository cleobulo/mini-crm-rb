class Lead < ApplicationRecord
    has_many :interactions, dependent: :destroy
    accepts_nested_attributes_for :interactions, allow_destroy: true
end
