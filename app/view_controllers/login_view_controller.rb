class LoginViewController < UIViewController
  extend IB 
  
  outlet :first_name_field, UITextField
  outlet :last_name_field, UITextField
  outlet :email_field, UITextField
  outlet :password_field, UITextField
  outlet :university_field, UITextField

  def initWithUniversity(university)
    initWithNibName("LoginViewController", bundle: nil).tap do
      @uni_url = 'http://breakfast-club.eu-gb.mybluemix.net'
      @university = university
    end
  end

  def viewDidLoad
    university_field.text = @university["name"]
  end

  def login

  end

  def signup
    user_params = {}
    user_params[:first_name] = first_name_field.text
    user_params[:last_name] = last_name_field.text
    user_params[:email] = email_field.text
    user_params[:password] = password_field.text
    user_params[:password_confirmation] = password_field.text
    user_params[:university_id] = @university["id"]

    AFMotion::JSON.post(@uni_url + "/users.json", user: user_params ) do |result|
      if result.success?
        dismissViewControllerAnimated(true, completion: nil)
      elsif result.failure?
        p result.error
      end
    end
  end
end

