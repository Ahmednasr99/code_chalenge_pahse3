class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    #def user_reviews
     #   self.reviews
    #end

    #def user_products
     #   self.products
    #end
    
    def favorite_product 
        reviews.order('star_rating DESC').first
        end

    def delete_reviews(product)
        product.reviews.destroy_all
    end
end