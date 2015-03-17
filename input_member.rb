Member.transaction do
(1..50).each do |i|
home_member.create(name: = "testuser #{i}", pkid: = i)
end
end
