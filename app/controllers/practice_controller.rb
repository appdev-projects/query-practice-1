class PracticeController < ApplicationController
  def one
    render({ :template => "practice/one.html.erb" })
  end

  def two
    render({ :template => "practice/two.html.erb" })
  end

  def three
    render({ :template => "practice/three.html.erb" })
  end

  def four
    render({ :template => "practice/four.html.erb" })
  end
end
