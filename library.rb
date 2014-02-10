
class Book
  attr_accessor :author, :title, :id, :status, :borrower

  def initialize(title, author)
    @author = author
    @title = title
    @id = nil
    @status = "available"
  end
  def check_out
    if @status == "available"
    @status = "checked_out"
  end
end
  def check_in
    if @status == "checked_out"
      @status = "available"
    end
  end
end

class Borrower
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Library
  attr_reader :name
  attr_accessor :books

  def initialize(name)
    @name = name
    @books = []
    @id_counter = 1
  end

  def register_new_book(title, author)
    book = Book.new(title, author)
    book.id = @id_counter
    @id_counter += 1
    @books.push(book)
  end

  def check_out_book(book_id, borrower)
    @who_borrowed = {}
    @books.each do |x|
      book_id = x.id
      borrower = borrower.name
      @who_borrowed = {book_id => borrower}
    end

  end

  # def check_in_book(book)
  # end

  # def available_books
  # end

  # def borrowed_books
  # end
end
