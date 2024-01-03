Todo.destroy_all

# Create 10 ToDo items
10.times do |i|
  Todo.create(
    title: "ToDo #{i + 1}",
    description: "Description for ToDo #{i + 1}"
  )
end