class Pet < ActiveRecord::Base
    belongs_to :shelter
    belongs_to :adopter

    def self.oldest
        Pet.order(:age).last
    end

    def self.average_age 
        Pet.average(:age).to_f
    end

    def in_dog_years
        
    end

end
