# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # basic object
  class Car
    attr_accessor :color, :model, :year, :current_speed

    def initialize(params)
      @color = params[:color] || 'color'
      @model = params[:model] || 'model'
      @year  = params[:year] || 2000
      @current_speed = 0
    end

    def push_break(speed)
      @current_speed -= speed if @current_speed >= speed
    end

    def speed_up(speed)
      @current_speed += speed
    end

    def self.default_car
      Car.new
    end
  end
end
