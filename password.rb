# the new wifi network is called def_wifi

# your challenge will be to decrypt the wifi password
# here is the encoder

# def encode(password)
# 	pass_as_string = password.to_s
# 	password_array = pass_as_string.split("_")
# 	new_password_array = []
# 	new_password_array[0] = password_array.last
# 	new_password_array[3] = password_array.first
# 	new_password_array[1] = password_array[1]
# 	new_password_array.compact!
# 	joined_password = new_password_array.join(" ")
# 	joined_password.gsub!("e", "blake")
# 	joined_password.gsub!(" ", "ashley")
# 	joined_password
# end

# the secret password is "intblakernblaketsashleythblakeashleyall"

secret = "intblakernblaketsashleythblakeashleyall"

def encode(password)
	gsub_password = password.gsub("ashley", " ")
	gsub_password.gsub!("blake", "e")
	array_password = gsub_password.split
	#[internets, the, all]
	new_password_array = []
	new_password_array[1] = array_password[1]
	new_password_array[0] = array_password.last
	new_password_array[3] = array_password.first
	pass_string = new_password_array.join("_")
	pass_as_sym = pass_string.to_sym
end

puts encode(secret)