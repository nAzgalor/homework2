# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # basic object
  class Car
    attr_reader :color, :model, :year, :current_speed

    DEFAULT_COLOR_VALUE = 'color'
    DEFAULT_MODEL_VALUE = 'model'
    DEFAULT_YEAR_VALUE = 2000

    def initialize(params)
      @color = params.fetch(:color, DEFAULT_COLOR_VALUE)
      @model = params.fetch(:model, DEFAULT_MODEL_VALUE)
      @year  = params.fetch(:year, DEFAULT_YEAR_VALUE)
      @current_speed = 0
    end

    def push_break(speed)
      @current_speed -= speed if @current_speed >= speed
    end

    def speed_up(speed)
      @current_speed += speed
    end

    def self.default_car
      new({})
    end
  end
end
