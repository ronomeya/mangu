#Fedena
#Copyright 2011 Foradian Technologies Private Limited
#
#This product includes software developed at
#Project Fedena - http://www.projectfedena.org/
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

class UserNotifier < ActionMailer::Base
  def forgot_password(user)
    setup_email(user)
    @subject    += 'Reset Password'
    @body[:url]  = "http://demo.projectfedena.org/user/reset_password/#{user.reset_password_code}"
  end

  protected
    def setup_email(user)
      @recipients  = "#{user.email}"
      @from        = "admin@fedena.com"
      @subject     = "[fedena.com] "
      @sent_on     = Time.now
      @body[:user] = user
    end
end