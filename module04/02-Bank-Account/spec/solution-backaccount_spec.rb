require '/Users/milenasokolova/RubymineProjects/ruby-course-2019/module04/02-Bank-Account/lib/solution-backaccount.rb'

describe BankAccount do
    before(:example) do
      @bobo_acount = BankAccount.new('Bobo', 0, '$')
      @lara_account = BankAccount.new('Lara', 1000, '$')
    end

    it 'can create a bank account' do
        expect(@bobo_acount.is_a?(BankAccount)).to be true
    end

    it '.initiallize() raises error if amount is negative' do
        expect { BankAccount.new('Test', -100, '$') }.to raise_error(ArgumentError)
    end

    it '.initiallize() raises error if currency not set' do
        expect { BankAccount.new('Test', 100, '') }.to raise_error(ArgumentError)
    end

    it '.deposit() raises error if amount is negative' do
        expect { @bobo_acount.deposit(-10) }.to raise_error(ArgumentError)
    end

    it '.deposit() in empty account works' do
        @bobo_acount.deposit(500)
        expect(@bobo_acount.balance).to eq(500)
    end

    it '.deposit() in non-empty account works' do
        account = BankAccount.new('Ivo', 1000, '$')
        account.deposit(500)
        expect(account.balance).to eq(1500)
    end

    it '.balance is a Numeric' do
        expect(@bobo_acount.balance.is_a?(Numeric)).to be true
    end

    it '.withdraw() from non-empty account works' do
        @bobo_acount.deposit(100)
        result = @bobo_acount.withdraw(50)

        expect(result).to be true
        expect(@bobo_acount.balance).to eq(50)
    end

    it '.withdraw() from empty-account works per specification' do
        result = @bobo_acount.withdraw(50)

        expect(result).to be false
        expect(@bobo_acount.balance).to eq(0)
    end

    it '.history works per specification' do
        account = BankAccount.new('Test', 0, '$')
        account.deposit(20)
        account.balance
        expected = ['Account was created', 'Deposited 20$', 'Balance check -> 20$']

        expect(account.history).to eq(expected)
    end

    it '.to_s() should work per specification' do
        @bobo_acount.deposit(22)
        expect(@bobo_acount.to_s).to eq('Bank account for Bobo with balance of 22$')
    end
#--------------------------------------------------------------------------
    it '.transfer_to() should work per specification' do
        @lara_account.transfer_to(@bobo_acount, 345)
        expect(@bobo_acount.balance).to eq(345)
        expect(@lara_account.balance).to eq(655)
    end

    it '.transfer_to() with  different currencies ' do
        receiver = BankAccount.new('receiver', 0, '%')
        expect(@lara_account.transfer_to(receiver, 22)).to eq(false)
        expect(@lara_account.transfer_to(receiver, 22)).not_to change{@lara_account.balance}
        expect(@lara_account.transfer_to(receiver, 22)).not_to change{receiver.balance}
    end

    it '.transfer_to() with not enough money for the transfer' do
        sender = BankAccount.new('sender', 10 , '$')
        receiver = BankAccount.new('receiver', 0, '$')

        expect(sender.transfer_to(receiver, 22)).to eq(false)
    end

    it '.transfer_to() a negative transfer ' do
        expect(@lara_account.transfer_to(@bobo_acount, -22)).to raise_error(ArgumentError, 'You can not deposit a negative number')
    end

end
