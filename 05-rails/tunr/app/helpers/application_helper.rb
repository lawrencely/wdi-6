module ApplicationHelper
  def intellinav
    nav = ''
    if @current_user.present?
        nav += "<li> hello #{ @current_user.name }</li>"
        nav += "<li> #{ link_to('Sign Out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'})} </li>"
           else
        nav += "<li> #{link_to('Sign Up', new_user_path)}</li>"
        nav += "<li> #{link_to('Sign In', login_path)}</li>"
    end
    nav
  end
end



