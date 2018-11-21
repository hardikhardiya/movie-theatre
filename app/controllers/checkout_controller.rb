class CheckoutController < ApplicationController
  def index
    @name = params[:name]
    @movie_name = params[:movie_name]
    @seats = params[:seats]
    @time = params[:time]
    @hall = params[:hall]
    @show_id = params[:show_id]
    @number_of_seats = params[:number_seats].to_i
    @discounted_price = params[:discounted_price].to_i
    @price = MovieList.find(@movie_name.to_i).price
    if @discounted_price && @discounted_price != 0
      @final_price = @discounted_price
    else  
      @final_price = @price * @number_of_seats
    end 
  end

  def after_checkout
    @order = Order.create(name: params[:name])
    @ticket = Ticket.create(movie_id: params[:movie], hall: params[:hall], seat: params[:seats], movie_time: params[:time], show_id: params[:show_id].to_i)
  end

  def coupon_code
    coupon = params[:coupon]
    @movie_name = params[:movie_name]
    @name = params[:name]
    @seats = params[:seats]
    @time = params[:time]
    @hall = params[:hall]
    @show_id = params[:show_id]
    @number_of_seats = params[:number_seats].to_i
    @discount = Discount.where(:name => coupon, :movie_list_id => @movie_name.to_i).first.price
    @price = MovieList.find(@movie_name.to_i).price
    @discounted_price = (@number_of_seats * @price) - @discount 
    redirect_to checkout_index_path(:name => @name, :seats => @seats, :time => @time, :hall => @hall, :movie_name => @movie_name, :number_seats=> @number_of_seats, :discounted_price => @discounted_price, :show_id=>@show_id)
  end 

end
