# Flipkart-Dissection-Project

# Project Overview
The Product Dissection of Flipkart is a database design and analysis project aimed at deconstructing the Flipkart platform's core entities, such as Users, Products, Orders, Reviews, Payments, and more. This project models the relationships between these entities and provides a structured schema for managing data, creating a foundation for analyzing e-commerce activities on a platform like Flipkart.

# Features
User Management: User account creation, storing personal details, and tracking registration date.
Seller Management: Link sellers to their corresponding user accounts and manage product listings.
Product Catalog: Manage products with details such as name, description, category, price, stock, and seller.
Order Management: Track orders, including total amounts, order status, and associated items.
Review and Rating System: Users can provide feedback and ratings for purchased products.
Wishlist Functionality: Users can add products to their wishlist for future purchases.
Payment System: Capture payment details for orders with different payment methods.

# Database Schema
The project follows a relational database schema consisting of the following tables:

Users: Stores user information, such as username, email, and address.
Sellers: Associates users with their seller accounts and stores the seller's rating and store name.
Products: Represents products available on the platform, with details like price, category, and stock.
Orders: Captures all order transactions made by users, including shipping details and order status.
OrderItems: Links individual products with their corresponding orders, tracking quantities and price at the time of purchase.
Reviews: Stores reviews and ratings for products, linking users and products.
Payments: Tracks payments for orders, including the payment method and status.
Wishlist: Stores products that users add to their wishlists.


