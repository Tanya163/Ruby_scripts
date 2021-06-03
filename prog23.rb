# Q-23 Read a CSV file:
# Name, EmpId, Designation
# Jack, 15, Developer
# Mary, 13, Designer
# John, 12, Developer
# Jane, 17, Designer
# Johny, 19, Tester
# Save into another file in the format:
# Designers
# Mary (EmpId: 13)
# Jane (EmpId: 17)
# Developers
# John (EmpId: 12)
# Jack (EmpId: 15)
# Testers
# Johny (EmpId: 19)
# Listing should be in ascending order of Designation. Designation should be plural if it has more than one Employee.

file = File.open("data.csv")
file_data = file.readlines.map do |line|
  line.split(',').map(&:chomp)
end
file_data.delete_at(0)
hash = file_data.inject({}) do |h, arr|
  h[arr[2]] ||= []; h[arr[2]] << [arr[0], arr[1].to_i]
  h
end
file.close
hash = Hash[hash.sort]
file = File.open("output.txt", "w")
hash.each do |designation, data|
  if data.length == 0
    file.puts designation
    file.puts "No data Available"
  elsif data.length > 1
    file.puts "#{designation}s"
    data.each do |array|
      file.print "#{array[0]} (Employee_ID: #{array[1]})\n"
    end
  else
    file.puts designation
    data.each do |array|
      file.print "#{array[0]} (Employee_ID: #{array[1]})\n"
    end
  end
end
file.close
