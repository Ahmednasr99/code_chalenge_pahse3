class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    #def user_review
    #    self.user
    #end
    
    #def product_review
       # self.product
    #end



    def full_review 
        "Review for #{product.name} by #{user.name}: #{star_rating} stars #{comment}"
    end
    
end