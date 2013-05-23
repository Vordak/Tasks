#encoding: utf-8
module Circle
	def description
		puts 'Нарисовать круг в консоле'	
	end

	def draw()
		puts 'Введите диаметр окружности'
		diametr = gets.to_i
		radius = diametr / 2
	 	dx = radius
		dy = 2
		i = 0 	
		puts(
		loop do
		
		 	if i < radius 
				if dx == radius
					print ' ' * dx, '*' ,'*'*dy*2, '*'"\n"
				else
					print ' ' * dx, '*' ,' '*dy*2, '*'"\n"
				end
				if dx>2			 	
					
				 	dx -= 1
					dy += 1	
				end
			end
			if i >= radius 
		 		if dy == 2
					print ' ' * dx, '*' ,'*'*dy*2, '*',"\n"	
					i+=2
				else
					print ' ' * dx, '*' ,' '*dy*2, '*',"\n"	
					dy -= 1
					dx += 1
				end
				
			end
			i+=1
		break if i>diametr-2
		end)

	end
end
