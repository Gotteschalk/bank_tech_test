class Statement

attr_reader :transaction_history, :statement_view_array

  def initialize(transaction_history)
    @transaction_history = transaction_history
    @statement_view_array = []
  end

  def print
    render_statement
    return @statement_view_array.join("\n")
  end

private

def render_statement
  @transaction_history.each do | transaction_arr |
    if transaction_arr[0] == "+"
      @statement_view_array.push(transaction_arr[1] + " || " + stringy_decimalise(transaction_arr[2])  + " || || " + stringy_decimalise(transaction_arr[3]))
    else
      @statement_view_array.push(transaction_arr[1] + " || || " + stringy_decimalise(transaction_arr[2])  + " || " + stringy_decimalise(transaction_arr[3]))
    end
  end
  @statement_view_array.push("date || credit || debit || balance")
  #To ensure in descending date order
  @statement_view_array.reverse!
end

# To convert integers to a string with two decimal places
  def stringy_decimalise(integer)
    '%.2f' % integer
  end

end
