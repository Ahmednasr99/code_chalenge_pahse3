class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    


   # def product_reviews
    #    self.reviews
    #end

    #def Product_users
     #   self.users
    #end

    def add_review(user, star_rating ,comment) 
        Review.create(star_rating: star_rating, user_id: self.id, product_id: product_id, comment: comment)
    end

    def all_reviews 
        reviews.map do |review|
            review.full_review
        end

    def average_rating
        let i = 0
        self.reviews.map{|t|
            i=i+t
        }
        puts "Average rating :#{i/2}"
       end

    end

end