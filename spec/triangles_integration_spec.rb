require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and returns if it is a triangle, and type of triangle.') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '2')
    fill_in('side3', :with => '2')
    click_button('Triangle!')
    expect(page).to have_content("Not a triangle")
  end

  it('processes the user entry and returns if it is a triangle, and type of triangle.') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '5')
    click_button('Triangle!')
    expect(page).to have_content("Equilateral")
  end

  it('processes the user entry and returns if it is a triangle, and type of triangle.') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '6')
    click_button('Triangle!')
    expect(page).to have_content("Isosceles")
  end

  it('processes the user entry and returns if it is a triangle, and type of triangle.') do
    visit('/')
    fill_in('side1', :with => '4')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '6')
    click_button('Triangle!')
    expect(page).to have_content("Scalene")
  end
end
