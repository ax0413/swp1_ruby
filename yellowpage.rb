students=[]
loop do
    puts "번호를 계속 입력하시겠습니까? (y/n)"
    cmd=gets.chomp
    break if cmd=='n'

info={}
puts "input your name"
name=gets.chomp
info[:name]=name
puts "input your phonenumber ex)010-1234-5678"
phonenumber=gets.chomp
info[:phonenumber]=phonenumber
puts "input your gender ex)male or female"
gender=gets.chomp
if gender=="female"
    info[:gender]=gender
else
    info[:gender]="male"

end
students<< info
students.each do |u|
    print "#{u[:name]}  "
    print "#{u[:phonenumber]}  "
    puts u[:gender]
end
end