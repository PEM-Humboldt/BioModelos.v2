module ModelsHelper
	# Maps the model method abbreviation to the full name. 
	#
	# @param method [String] Abbreviation of the model method.
	# @return [String] Full name of the model method.
	def map_method_name(method)
		case method 
		when 'mx'
		  return 'Maxent'
		when 'bc'
		  return 'Bioclim'
		when 'ch'
		  return 'Convex Hull'
		else
		  return method
		end	
	end

	# Maps the model level number to the model level name. 
	#
	# @param method [Number] Model's level.
	# @return [String] Name of the model's level.
	def map_level_name(level)
		case level 
		when 1
		  return 'Climático'
		when 2
		  return 'Coberturas'
		else
		  return level
		end	
	end

	# Sets the full file path for the models, thumbnails and downloadable zip files. 
	#
	# @param method [String] File name.
	# @param method [String] Type of file "model", "thumb" and "zip".
	# @return [String] Full file path.
	def set_path(fileName, fileType)
		case fileType 
		when "model"
		  return "/models/#{fileName}"
		when "thumb"
		  return "/thumbs/#{fileName}"
		when "zip"
		  return "/zip/#{fileName}"  
		else
		  return fileName
		end		
	end
end