class ColorGenius
	#This ColorGenius is for primary, secondary and tertiary colors
	#attr_reader :color1, :color2, :color3 #This is the getter
	#attr_writer :color1, :color2, :color3 #Helps modify values for instance variables
	attr_accessor :color1, :color2 #This does everything
	def initialize
		@color1 = color1
		@color2 = color2
	end
	#Mixes any two colors (primary/primary , primary/secondary)
	def mix(color1,color2)
		mix = {
			["Red","Yellow"] => "Orange" ,
			["Blue","Yellow"] => "Green",
			["Red","Blue"] => "Purple",
			["Red","Orange"] => "Red-Orange",
			["Red","Purple"] => "Red-Purple",
			["Yellow","Orange"] => "Yellow-Orange",
			["Yellow","Green"] => "Yellow-Green",
			["Blue","Green"] => "Blue-Green",
			["Blue","Purple"] => "Blue-Purple"
		}
		#If the two arguments are equal to one of the keys in any order, then it should return the value pair
		mix.each {|key, value| p value if key.join(" and ").downcase == "#{color1.downcase} and #{color2.downcase}" || key.join(" and ").downcase == "#{color2.downcase} and #{color1.downcase}"}
	end
	#Returns a completary color of the primary colors
	def comp(color1)
		complementary = {
			"Blue" => "Orange",
			"Yellow" => "Purple",
			"Red" => "Green",
			"Red-Orange" => "Blue-Green",
			"Yellow-Orange" => "Blue-Purple",
			"Yellow-Green" => "Red-Purple"
		}
		#If the argument is equal to one of the keys, then it should return the value pair
		complementary.each {|key,value| p value if key.downcase == color1.downcase}
		complementary.each {|key,value| p key if value.downcase == color1.downcase}
	end
	#Returns split complementary colors for input
	def split_comp(color1)
		split = {
			"Red" => ["Blue-Green","Yellow-Green"],
			"Red-Orange" => ["Blue","Green"],
			"Orange" => ["Blue-Purple","Blue-Green"],
			"Yellow-Orange" => ["Purple","Blue"],
			"Yellow" => ["Red-Purple","Blue-Purple"],
			"Yellow-Green" => ["Purple","Red"],
			"Green" => ["Red-Purple","Red-Orange"],
			"Blue-Green" => ["Red","Orange"],
			"Blue" => ["Red-Orange","Yellow-Orange"],
			"Blue-Purple" => ["Orange","Yellow"],
			"Purple" => ["Yellow-Orange","Yellow-Green"],
			"Red-Purple" => ["Green","Yellow"]
		}
		split.each {|key,value| p value.join(" and ") if key.downcase == color1.downcase}
	end
	#Returns analogous colors to input
	def analogous(color1)
		analogous = {
			"Red" => ["Red-Purple","Red-Orange"],
			"Red-Orange" => ["Red","Orange"],
			"Orange" => ["Red-Orange","Yellow-Orange"],
			"Yellow-Orange" => ["Orange","Yellow"],
			"Yellow" => ["Yellow-Orange","Yellow-Green"],
			"Yellow-Green" => ["Yellow","Green"],
			"Green" => ["Yellow-Green","Blue-Green"],
			"Blue-Green" => ["Blue","Green"],
			"Blue" => ["Blue-Green","Blue-Purple"],
			"Blue-Purple" => ["Blue","Purple"],
			"Purple" => ["Blue-Purple","Red-Purple"],
			"Red-Purple" => ["Red","Purple"]
		}
		analogous.each {|key,value| p value.join(" and ") if key.downcase == color1.downcase}
	end
	#Breaks down a secondary color into its primary colors
	def breakdown(color1)
		breakdown = {
			"Orange" => ["Red","Yellow"],
			"Green" => ["Blue","Yellow"],
			"Purple" => ["Red","Blue"],
			"Red-Orange" => ["Red","Orange"],
			"Red-Purple" => ["Red","Purple"],
			"Yellow-Orange" => ["Yellow","Orange"],
			"Yellow-Green" => ["Yellow","Green"],
			"Blue-Green" => ["Blue","Green"],
			"Blue-Purple" => ["Blue","Purple"]
		}
		#If the argument is equal to one of the keys, then it should return the value pair
		breakdown.each {|key,value|  p value.join(" and ") if key.downcase == color1.downcase}
	end
	#Returns to other colors equally spaced from it on color wheel
	def triadic(color1)
		tri = {
			"Red" => ["Yellow","Blue"],
			"Red-Orange" => ["Blue-Purple","Yellow-Green"],
			"Orange" => ["Green","Purple"],
			"Yellow-Orange" => ["Blue-Green","Red-Purple"]
		}
		tri.each {|key,value| p value.join(" and ") if key.downcase == color1.downcase}
		tri.each {|key,value| tri[key].delete(color1.split("-").map {|x| x.capitalize}.join("-")) and p "#{key} and #{value.join}" if color1.downcase != key.downcase}
	end
	#"Double Complementary", so returns complementary match and another complementary pair (input is 'primary' color of the 4)
	def tetradic(color1)
		tetra = {
			"Red" => ["Violet","Green","Yellow"],
			"Red-Orange" => ["Yellow-Green","Blue-Green","Red-Purple"],
			"Orange" => ["Red","Blue","Green"],
			"Yellow-Orange" => ["Red-Orange","Blue-Purple","Blue-Green"],
			"Yellow" => ["Orange","Blue","Violet"],
			"Yellow-Green" => ["Yellow-Orange","Red-Purple","Blue-Purple"],
			"Green" => ["Yellow","Purple","Red"],
			"Blue-Green" => ["Blue-Purple","Red-Orange","Yellow-Orange"],
			"Blue" => ["Red","Orange","Green"],
			"Blue-Purple" => ["Red-Orange","Blue-Green","Yellow-Orange"],
			"Purple" => ["Orange","Yellow","Blue"],
			"Red-Purple" => ["Yellow-Orange","Yellow-Green","Blue-Purple"]
		}
		tetra.each {|key,value| p value.join(" and ") if key.downcase == color1.downcase}
	end
end

color = ColorGenius.new




