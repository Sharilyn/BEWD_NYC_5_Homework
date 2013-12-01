class Movie < ActiveRecord::Base

    validates :title, :description, presence: true
    validates :description, length: { minimum: 10 }
end

