class Book < ApplicationRecord
  with_options presence: true do
    validates :title, presence: true
    validates :body, presence: true
  end

end
