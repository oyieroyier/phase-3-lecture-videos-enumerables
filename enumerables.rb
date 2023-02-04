require "pry"

books = [
  {
    title: "The Well-Grounded Rubyist 3rd Edition",
    publisher: "Manning",
    author: "David A. Black",
    page: "584",
    price: 49.44,
    language: "English",
  },
  {
    title: "Eloquent Ruby",
    publisher: "Addison-Wesley Professional",
    author: "Russ Olsen",
    page: "448",
    price: 49.17,
    language: "English",
  },
  {
    title: "Practical Object-Oriented Design: An Agile Primer Using Ruby",
    publisher: "Addison-Wesley Professional",
    author: "Sandi Metz",
    page: "288",
    price: 49.44,
    language: "Spanish",
  },
  {
    title: "Polished Ruby Programming",
    publisher: "Packt Publishing",
    author: "Jeremy Evans",
    page: "434",
    price: 51.99,
    language: "English",
  },
  {
    title: "Ruby Under a Microscope",
    publisher: "No Starch Press",
    author: "Pat Shaughnessy",
    page: "234",
    price: 536.99,
    language: "German",
  },
  {
    title: "The Ruby Programming Language",
    publisher: "O'Reilly Media",
    author: ["Yukihiro 'Matz' Matsumoto", "David Flanagan"],
    page: "448",
    price: 24.11,
    language: "Japanese",
  },
]

# each method. Loops through an array and has no return value.
def print_books
  books.each do |book|
    binding.pry
    puts book[:title]
  end
end

# collect method. The Ruby equivalent of array.map() method in JavaScript
puts "Book Titles:"
book_titles = books.collect { |book| book[:title] }

puts book_titles

puts "_" * 10
# You can alternatively use the map method in place of the collect method.
puts "Authors List:"

book_authors = books.map { |book| book[:author] }

puts book_authors

# select method. Ruby's equivalent of array.filter() method in JavaScript.

cheaper_books = books.select { |book| book[:price] > 50 }

puts cheaper_books

# find method. Ruby's equivalent of array.find() method in JavaScript.
# Stops iterating when it finds the first occurrence of the element.
# If it fails to find the element, it will return nil.
author = books.find { |book| book[:author] == "Russ Olsen" }
puts author

# sum method. Ruby's equivalent of array.reduce() method in JavaScript; but less complicated.
# It takes the targeted number and adds it to the existing sum for each iteration.

total = books.sum { |book| book[:price] }
puts "The total sum is USD #{total}"

# max method. Returns the highest value in the array.
most_expensive = books.max { |book| book[:price] }
p most_expensive
# puts "The most expensive book is #{most_expensive}"

sorted = books.sort { |book| book[:price] }

p sorted