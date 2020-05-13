class Country < ApplicationRecord
	has_many :districts, dependent: :destroy
end
