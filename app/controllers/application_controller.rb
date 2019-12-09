class ApplicationController < ActionController::API

  private

  def authentication_json(user_id)
    { token: make_token(user_id), user_id: user_id }
  end

  # In order to log in
  def make_token(user_id)
    payload = { user_id: user_id }
    JWT.encode(payload, hmac_secret, 'HS256')
  end

  # In order to authorize
  def logged_in_user_id
    token = request.headers["Authorization"]
    # something which might raise an exception
    begin 
      decoded_payload = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
      return decoded_payload.first["user_id"].to_i
    # code that deals with some exception
    rescue
      return nil
    end
  end


  def logged_in?
    # double bang converts value to boolean
    !!logged_in_user_id
  end

  def hmac_secret
    ENV["JWT_SECRET"]
  end


end