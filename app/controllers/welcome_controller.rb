class WelcomeController < ApplicationController

  def index

    @sizeofwordtable = Word.count

    @randomword = rand(1..@sizeofwordtable)

    if @sizeofwordtable > 0
      @word = Word.find(Word.pluck(:id).shuffle.first)
    end

  end

end
