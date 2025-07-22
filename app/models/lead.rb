class Lead < ApplicationRecord
    has_many :lead_tags, dependent: :destroy
end
