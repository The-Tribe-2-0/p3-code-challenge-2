class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews


    def all_reviews
        self.reviews
    end
    
    def all_users
        self.users
    end

 def leave_review(user, star_rating, comment)
    Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
  end

  def print_all_reviews
    reviews.each do |review|
      puts "Review for #{name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
    end
  end

  def average_rating
    sum = reviews.sum(:star_rating)
    count = reviews.count

    if count > 0
      average = sum.to_f / count
      average.round(2)
    else
      0.0
    end
  end

end