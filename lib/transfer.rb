require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
<<<<<<< HEAD
  def initialize(sender, receiver, amount)
    @sender= sender
    @receiver= receiver
    @status= "pending"
    @amount= amount
=======
  def initialize(sender, receiver, status= "pending")
    @sender= sender
    @receiver= receiver
    @status= "pending"
    @amount= 50
>>>>>>> 1f08fa74cf4f774aac68de5a576d3fbf699c1305
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
<<<<<<< HEAD
  def execute_transaction 
      if status == "pending" && valid? && sender.balance > amount
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if self.execute_transaction
    receiver.balance -= amount
    sender.balance += amount
    @status = "reversed"
  end
  end

end
  
     
=======
  def execute_transaction #(sender(amanda, receiver(avi), amount)
    sender.balance -= amount
    receiver.balance += amount
    self.status = "complete"
  end
end
     
    # let(:avi) { BankAccount.new("Avi") }
    # let(:amanda) { BankAccount.new("Amanda") }
    # let(:transfer) { Transfer.new(amanda, avi, 50) }
    # let(:bad_transfer) { Transfer.new(amanda, avi, 4000) }

    # it "can execute a successful transaction between two accounts" do
    #   transfer.execute_transaction
    #   expect(amanda.balance).to eq(950)
    #   expect(avi.balance).to eq(1050)
    #   expect(transfer.status).to eq("complete")
    # end

    # it "each transfer can only happen once" do
    #   transfer.execute_transaction
    #   expect(amanda.balance).to eq(950)
    #   expect(avi.balance).to eq(1050)
    #   expect(transfer.status).to eq("complete")
    #   transfer.execute_transaction
    #   expect(amanda.balance).to eq(950)
    #   expect(avi.balance).to eq(1050)
    # end

      # if valid? == true && sender.balance > 50 && self.status == "pending"
      #   sender.balance -= amount
      #   sender.balance
      #   receiver.deposit(amount)
      # self.status = "complete" 
      # else
      #   self.status = "rejected" 
      # "Transaction rejected. Please check your account balance."
      # end
      # end
>>>>>>> 1f08fa74cf4f774aac68de5a576d3fbf699c1305
  
 