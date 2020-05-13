class District < ApplicationRecord
  belongs_to :country
  has_many :comments, dependent: :destroy
end
