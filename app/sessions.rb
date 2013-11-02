helpers do

  def authenticate_user
    @member = Member.find_by_username(params[:user])
    if @member != nil
      if @member.password_hash == params[:password]
        redirect '/member'
      else
        erb :sign_in
      end
    else
     erb :sign_up
   end
 end


 def add_users
    m = Member.new
    p params
    m.username = params[:user]
    m.password_hash = params[:password]
    m.email = params[:email]
    m.first_name = params[:firstname]
    m.last_name = params[:lastname]
    m.save
    session[:user_id] = m.id
    erb :sign_in
  end
end