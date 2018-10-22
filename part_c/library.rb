class Library

  def initialize(books)
    @books = books
  end

  def book_array
    return @books
  end

  def info_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def rental_info_by_title(title)
    book = info_by_title(title)
    rental_info = "Student name: #{book[:rental_details][:student_name]}, Date due: #{book[:rental_details][:date]}"
    return rental_info
  end

  def create_new(title)
    @books << {title: title, rental_details: {student_name: "", date: ""}}
  end

  def change_rental_details(title, name, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = date
      end
    end
  end

end
