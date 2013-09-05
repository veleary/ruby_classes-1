class BankAccount
	def initialize(first_name, last_name, balance, credit_card_debt)
		@first_name = first_name
		@last_name = last_name
		@balance = balance
		@credit_card_debt = credit_card_debt
	end
	def account_summary()
		puts 
		"Account for #{@first_name},#{@last_name}:
		 available balance: $ #{@balance} 
		 Payment required: $#{@credit_card_debt}" 
	end
	def deposit(deposit)
		@balance = deposit + @balance
		puts 
		"You have deposited: $ #{deposit} New balance: $ #{@balance}"	
	end
	def withdraw(withdraw)
		@balance = @balance - withdraw
		puts 
		"You have withdrawn: $ #{withdraw} New balance: $ #{@balance}"
	end

	def purchase(cost)
		if cost <= @balance
			@credit_card_debt = @credit_card_debt + cost
			puts "You have made a purchase to your credit card."
		else cost > @balance 
			@balance = @balance - 10
			puts "Card Declined"		
		end
	end

	def pay_credit(payment)
		if payment <= @balance 
			@balance = @balance - payment 
			@credit_card_debt = @credit_card_debt - payment
			puts "Thank for your payment!"
		else payment > @balance
			puts "You have insufficient funds for payment."
		end
	end

	def add_monthly_interest()
		@credit_card_debt = (@credit_card_debt*1.015) + @credit_card_debt
		@balance = (@balance*0.0003) + @balance
	end
end 
	 
