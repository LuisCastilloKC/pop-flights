class Airline < ApplicationRecord
    has_many :reviews

    before_create :slugify

    ## change the name of the parameter ex: we pass (Jetblue Airline), the slugify will pass as (jetblue-airline)
    def slugify
        self.slug = name.parameterize
    end

    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
