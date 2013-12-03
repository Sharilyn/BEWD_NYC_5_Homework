class Movie < ActiveRecord::Base

    validates :title, :description, presence: true #{ message: "Movies must have a Title and a Description" }
    validates :description, length: { minimum: 10, message:"Description must be at least two words." }
    validates :rating, :year_released, numericality: { only_integer: true, message: "Must be an integer." }
#    validates :year_released, numericality: { less_than_or_equal_to: Tate.now.year, message: "Release date cannot be in the future."}
    validates :rating, numericality: { 
        greater_than_or_equal_to: 1, less_than_or_equal_to: 5
        #message: "Must be a number between 1 and 6"
        }
end

