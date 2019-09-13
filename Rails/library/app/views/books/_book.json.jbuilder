json.extract! book, :id, :name, :describe, :created_at, :updated_at
json.url book_url(book, format: :json)
