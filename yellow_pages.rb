
yellow_pages=[

                 {name: "Alex Holder",
                 tel: +6100000000,
                 role: "Educator at Coder Academy",
                 address: "118 Walker St, North Sydney, NSW 2060"
                    },

                    {name: "Ubisoft Australia",
                 tel: +6100000001,
                 role: "Videogame sales & support",
                 address: "14 Mountain St, Ultimo, NSW 2007"
                 },

                 {name: "Saad Saaed",
                 tel: +6100000002,
                 role: "Academic & Partnerships Director at Coder Academy",
                 address: "118 Walker St, North Sydney, NSW 2060"
                 }
               ]
def choice_first
    puts "What do you want to do?"
    p "1. View Entries"
    p "2. Add Entries"
    p "3. Remove Entries" 
    p "Please enter the option number of your choice."
    choice_number=gets.chomp.to_i
    return choice_number
end

choice_number= choice_first
i=0

while choice_number<1 || choice_number>3
    puts "Invalid Choice. Please choose again"
    choice_number= choice_first
    i+=1
    if i>=3
        puts"Too many wrong entries. Please try again later."
        break
    end


end

if choice_number==1
    p yellow_pages

end
if choice_number==2
    puts "What is the name?"
    name=gets.chomp
    puts "What is the number?"
    number= gets.chomp


end

