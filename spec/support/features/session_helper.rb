module Features

  #Session Helpers for devise
  module SessionHelpers
    def signin(email, password)
      visit new_user_session_path
      fill_in "user_email", with: email
      fill_in "user_password", with: password
      click_on 'log_in'
    end
  end


end
