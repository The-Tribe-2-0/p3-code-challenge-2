class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
  
    def reviewer
      User.find(user_id)
    end
  
    def reviewed_product
      Product.find(product_id)
    end
  
    def print_review
      puts "Review for #{reviewed_product.name} by #{reviewer.name}: #{star_rating}. #{comment}"
    end
  end
