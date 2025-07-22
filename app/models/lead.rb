class Lead < ApplicationRecord
    has_many :interactions, dependent: :destroy
end
