class Array
	def iterar(bloque)
		self.each_with_index do|n,i|
			self[i] = bloque.call(n)
		end
	end
end
arreglo = [1,2,3]
arregloDos = [10,5,6,3,2]
elevarCuadrado = Proc.new do |n| #crear un nuevo procedimiento
	n**2
end
arreglo.iterar(elevarCuadrado)
arregloDos.iterar(elevarCuadrado)
for i in arregloDos
	puts i
end
gets()