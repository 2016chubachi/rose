class LessonController < ApplicationController

  def step1
    render text: "Hello #{params[:name]}"
  end

  def step2
    render text:  params[:controller] + "#" + params[:action]
  end

  def step3
    redirect_to action: "step4"
  end

  def step4
    render text: "moved step4"
  end

  def step5
    flash[:notice] = "move to step6"
    redirect_to action: "step6"
  end

  def step6
    render text: flash[:notice]
  end

#before_action :set_message, only: :step7

   def step7
     render text: @message
   end

    #private
     def set_message
        @message = "Hello"
     end

   def step8
     @price = (2000 * 1.08).floor
   end

   def step9
     @price = 1000
     render "step8"
   end

   def step10
      @comment = "<script>alert('warning')</script>Hello."
   end

   def step12
     @population = 704414
     @surface = 141.31
  end

   def step13
     @time = Time.now
  end

  def step14
     @population = 127767944
  end

  def step15
     @message = "How about you ? Please do your best for learning ruby on rails"
  end

  def step18
    @zaiko = 10
  end

  def step19
     @items = {"frypan" => 2680, "wine glass" => 2550, "paper mill" => 4515, "pillar" => 945}
  end









end
