# p3-code-challenge-2
# E-commerce Reviews Challenge

Author: Victor Ireri

This project is part of an assignment focused on building an e-commerce review system using Ruby and ActiveRecord. The goal is to create a set of classes and methods that model the relationships between users, reviews, and products, and implement various functionalities related to these entities.

## Project Setup

To set up the project, follow these steps:

1. Clone the repository: `git clone <repository-url>`
2. Change into the project directory: `cd e-commerce-reviews`
3. Install dependencies: `bundle install`
4. Create the database: `rake db:create`
5. Run the migrations: `rake db:migrate`
6. (Optional) Add sample data: `rake db:seed`
7. Start the application: `ruby app.rb`

## Class Structure

The project consists of the following classes:

- User: Represents a user who can write reviews and interact with products.
- Review: Represents a review written by a user for a specific product.
- Product: Represents a product that can be reviewed by users.

## Functionality

The following methods are implemented in the classes:

- Review
  - `user`: Returns the user instance associated with the review.
  - `product`: Returns the product instance associated with the review.
- Product
  - `reviews`: Returns a collection of all the reviews for the product.
  - `users`: Returns a collection of all the users who reviewed the product.
  - `leave_review(user, star_rating, comment)`: Creates a new review associated with the product and the user.
  - `print_all_reviews`: Prints all the reviews for the product.
  - `average_rating`: Returns the average star rating for all reviews of the product.
- User
  - `reviews`: Returns a collection of all the reviews given by the user.
  - `products`: Returns a collection of all the products reviewed by the user.
  - `favorite_product`: Returns the product instance with the highest star rating from the user.
  - `remove_reviews(product)`: Removes all reviews of the user for a specific product.

## Usage

To use the provided functionality, you can create instances of the classes and interact with them in the `app.rb` file. You can also test the methods using the `rake console` command and checking the outputs.

Please note that there are no automated tests included in this project. Therefore, it's important to manually verify the behavior of the implemented methods.

