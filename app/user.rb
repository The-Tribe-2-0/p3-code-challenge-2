class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
    
    def al_review
     self.reviews
    end


    def all_product
        self.products
    end
    
    def favorite_product
        reviews.order(star_rating: :desc).first&.product
      end

      
      def remove_reviews(product)
        reviews = self.reviews.where(product_id: product.id)
        reviews.destroy_all
      end

end