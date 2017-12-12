require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @square = (@number.to_s.to_i) ** 2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
      @number = params[:number].to_s.to_i
      @phrase = params[:phrase]
      @array = []
      @count = @number
      while @count > 0
        @array << @phrase
        @count -= 1
      end
      "#{@array.join(" ")}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @array = []
      params.values.each do |value|
        @array << value
      end
      "#{@array.join(" ")}."
    end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation].to_s
      @number1 = params[:number1].to_s.to_i
      @number2 = params[:number2].to_s.to_i
      if @operation.to_s == "add"
        "#{@number1 + @number2}"
      elsif params[:operation] == "subtract"
        "#{@number1 - @number2}"
      elsif params[:operation] == "divide"
        "#{@number1 / @number2}"
      elsif params[:operation] == "multiply"
        "#{@number1 * @number2}"
      end
    end






end
