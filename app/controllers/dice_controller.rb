class DiceController < ApplicationController
  def home
    render({:template => "dice_layouts/home"})
  end

  def flexible
    @num_dice = params.fetch("num_dice").to_i
    @sides = params.fetch("num_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end
        
    render({:template => "dice_layouts/flexible"})
  end
end
