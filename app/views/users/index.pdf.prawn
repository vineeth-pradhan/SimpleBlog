pdf.text "Listing users", :size =>16
pdf.move_down(20)
users = @records.map do |record|
[
record.username,
record.first_name,
record.last_name,
record.is_admin
]
end

pdf.table users, :headers => ["Username", "First Name", "Last Name", "admin?"],
:header_color => "DDDDDD", :border_style => 'grid'