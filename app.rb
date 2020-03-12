require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase.@number.times}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @operation = "+"
    elsif params[:operation] == "subtract"
      @operation = "-"
    elsif params[:operation] == "divide"
      @operation = "/"
    elsif params[:operation] == "multiply"
      @operation = "*"
    end
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @eval = eval("#{@number1} #{@operation} #{@number2}")
    "#{@eval}"
  end
end
