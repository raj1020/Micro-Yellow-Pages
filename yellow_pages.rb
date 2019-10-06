### Challenge 3 - Medium (long!)
### Yellow Pages Terminal Edition
# This is the standard phonebook example but with extra stuff!
# Let users view, add, or remove entries in a phone book.
# - view should just show all entries
# - add should provide prompts for each property of the entry eg.
# what is the name? ___
# what is the number? ___
# - remove should ask for a name, and if that name is in the phone book then ask the user to confirm the removal. Only remove the entry once the user confirms that they want to remove it!
#
# These phonebook entries should contain a lot of information about a person, like a really old-fashioned phone book!
# eg. a person's name, phone number, workplace, address
# They should also be able to view the phone book's entire collection of entries in a nicely formatted message.
# eg.
# ---------------------------------------
# Alex Holder +6100000000
# Educator at Coder Academy
# 118 Walker St, North Sydney, NSW 2060
# ---------------------------------------
# Ubisoft Australia +6100000001
# Videogame sales & support
# 14 Mountain St, Ultimo, NSW 2007
# ---------------------------------------
# Saad Saaed +6100000002
# Academic & Partnerships Director at Coder Academy
# 118 Walker St, North Sydney, NSW 2060
# ---------------------------------------
#
# Hint: You can combine arrays & hashes!

#Solution starts below:

#Hash for the database

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

# Method for providing choice to users
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
x=0

#Response if user makes invalid choice
while choice_number<1 || choice_number>3
    puts "Invalid Choice. Please choose again"
    choice_number= choice_first
    i+=1
    if i>=3
        puts"Too many wrong entries. Please try again later."
        break
    end


end

#For viewing the entries
if choice_number==1
    while x==0
        for item in yellow_pages
            print item[:name] + " " 
            p item[:tel]
            p item[:role]
            p item[:address]
            
            
        end
        break
    end

end

# For making addition to the list
if choice_number==2
    puts "What is the name?"
    name=gets.chomp
    puts "What is the number?"
    number= gets.chomp
    yellow_pages.push({name:"#{name}",
                    tel: number})
    

end

# For removing the entries
if choice_number==3 
    while x == 0
        puts "Please enter the name whose entry you want to delete:"
        name=(gets.chomp).downcase

            for i in yellow_pages
                if name == i[:name].downcase
                    puts "Please confirm to delete the entry for #{i[:name]}? Please type 'yes' to confirm deletion or type 'no' to cancel"
                    answer=(gets.chomp).downcase
                    if answer=="yes"
                        yellow_pages.delete(i)
                        x+=1
                        break
                    end
                else
                    puts "Incorrect name."
                    

                end

            end
    end
    


end



