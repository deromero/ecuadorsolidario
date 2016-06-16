require 'rails_helper'

feature 'Sign in', :devise do

  scenario 'user cannot sign in if not registered' do
    signin('email@email.com', 'password')
    expect(page).to have_content 'Email o contraseña no válidos'
  end

  scenario 'user can sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Sesión iniciada'
  end

  scenario 'user cannot sign in with invalid email' do
    user = FactoryGirl.create(:user)
    signin('invalid@email.com',user.password)
    expect(page).to have_content 'Email o contraseña no válidos'
  end

  scenario 'user cannot sign in witn invalid password' do
    user = FactoryGirl.create(:user)
    signin(user.email,'invalidpass')
    expect(page).to have_content 'Email o contraseña no válidos'
  end

end
