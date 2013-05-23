#encoding: utf-8
module Hash
  def description
    puts 'Поиск по хешу'  
  end

	def hashin (value,haash,index)
		k=""
		v=""
		if value[index]=="{"
			i=index+1
				while value[i]!="="
					k += value[i]	
					i+=1
				end
			k+="\n"
			i+=2
				while value[i]!="}"
					v += value[i]	
					i+=1
				end
			v+="\n"
			haash[k]=v
			i+=1
				if value[i]==","
					i+=1
					hashin(value,haash,i)
				end
		end	
	end

	def tofind(haash,search)
		haash.each{|k,v| 
			if k == search
				puts "Искомое значение: "
				return v
			end
		 }
	end

	def main
		puts "Введите длинну хэша: "
		hash = {}
		length=gets.to_i
		puts(
		loop do
			print "Введите ключ: "
			k = gets
			print "Введите значение: "
			v = gets
			hash[k]=v
			if  v[0]=="["
				hashin(v,hash,index=1)
			end	
			length-=1
		break if length==0
		end)
		puts "Введите ключ для поиска значения: "
		search = gets.to_s
		puts tofind(hash,search)
	end
end
