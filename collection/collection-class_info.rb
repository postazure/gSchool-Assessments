
# This array of hashes is data entry
# [
#   {first_name: "John", last_name: "Foley" , email: "john@gschool.it", class: "Beginning snark"}
#   {first_name: "Sylwester", last_name: "Kelsey" , email: "sellie@gmail.com", class: "Ruby Immersive"}
#   {first_name: "Timothy", last_name: "Rama" , email: "tim.rama@gmail.com", class: "Ruby Immersive"}
#   {first_name: "Kane", last_name: "Baccigalupi" , email: "kane@gschool.it", class: "C for dummies"}
#   {first_name: "Nikita", last_name: "Theodosius" , email: "nikita.theo@gmail.com", class: "Ruby Immersive"}
#   {first_name: "Roddy", last_name: "Eldred" , email: "roddy.el@gmail.com", class: "Ruby Immersive"}
#   {first_name: "Martha", last_name: "Kelsey" , email: "martha@gschool.it", class: "Time travel for beginners"}
#   {first_name: "Kofi", last_name: "Thomas" , email: "k.thomas@hotmail.com", class: "Ruby Immersive"}
#
# ]




# This is my parsing function
def getHash class_str

class_info = []

class_str.each_line do |text|

  working_ary = text.gsub(/\s/, ' ').strip.split(" ")

  if working_ary.length > 4
    num_extra = (working_ary.length - 4)

    working_ary[3] = (working_ary.last(num_extra+1)).join(" ")
    working_ary.pop(num_extra)

  end

  class_info.push(
    student = {
      first_name: working_ary[0],
      last_name: working_ary[1],
      email: working_ary[2],
      class: working_ary[3]
    }
  )
end

class_info
end



class_str = """John            Foley             john@gschool.it         Beginning snark
Sylwester       Kelsey            sellie@gmail.com        Ruby Immersive
Timothy         Rama              tim.rama@gmail.com      Ruby Immersive
Kane            Baccigalupi       kane@gschool.it         C for dummies
Nikita          Theodosius        nikita.theo@gmail.com   Ruby Immersive
Roddy           Eldred            roddy.el@gmail.com      Ruby Immersive
Martha          Berner            martha@gschool.it       Time travel for beginners
Kofi            Thomas            k.thomas@hotmail.com    Ruby Immersive"""


class_info = getHash class_str
