user = User.create({name: 'david', age: 10})
array = []
(1..10).each do |i|
	array << Ticket.create!({ user_id: user.id, fees: 100, event_id: 1})
end
p array
(1..20).each do |y|
	if y < 11
	  Visitor.create({ticket_id: array[y - 1].id, event_type: 0, timestamp: Time.current - y.hours })
  else
	  Visitor.create({ticket_id: array[y - 11].id, event_type: 1, timestamp: Time.current + y.hours })
  end
end
