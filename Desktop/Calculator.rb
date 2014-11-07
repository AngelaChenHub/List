#!/usr/bin/env rub
	operator = ARGV [0]
	num1 = ARGV [1]
	num2 = ARGV [2]

class Calculator
		attr_accessor :operator, :num1, :num2

	def initialize()
		@operator = "+"
		@num1 = 2
		@num2 = 5
	end


	def calculate ()
		
	end
end