FactoryGirl.define do
  factory :user do
    encrypted_password "w45sadlksdfl34r%6123"
    reset_password_token "osadf€%&090asdfasf"
    reset_password_sent_at "2017-01-10 16:32:43"
    remember_created_at "2017-01-08 16:32:43"
    sign_in_count 1
    current_sign_in_at "2017-01-15 16:32:43"
    last_sign_in_at "2017-01-14 16:32:43"
    current_sign_in_ip "localhost"
    last_sign_in_ip ""
  end
end
