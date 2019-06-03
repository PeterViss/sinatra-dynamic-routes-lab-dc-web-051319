require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
     @username = params[:name].reverse!
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
      @number.to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    number = params[:number].to_i
    phrase = params[:phrase]
      number.times do
         string += "#{phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    words
  end

  get '/:operation/:number1/:number2' do
      operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i

      if operation == "add"
        complete = number1 + number2
      end
      if operation == "subtract"
        complete = number1 - number2
      end
      if operation == "multiply"
        complete = number1 * number2
      end
      if operation == "divide"
        complete = number1/number2
      end
      complete.to_s
  end
end
