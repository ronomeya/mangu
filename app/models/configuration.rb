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

class Configuration < ActiveRecord::Base

  STUDENT_ATTENDANCE_TYPE_OPTIONS = ['Daily', 'SubjectWise']
  NETWORK_STATES                   = ['Online','Offline']

  def validate
    if self.config_key == "StudentAttendanceType"
      errors.add_to_base("Student Attendance Type should be any one of #{STUDENT_ATTENDANCE_TYPE_OPTIONS}") unless STUDENT_ATTENDANCE_TYPE_OPTIONS.include?(self.config_value.to_s)
    end
    if self.config_key == "NetworkState"
      errors.add_to_base("Network State should be any one of #{NETWORK_STATES}") unless NETWORK_STATES.include?(self.config_value)
    end
  end

  class << self

    def get_config_value(key)
      c = find_by_config_key(key)
      c.nil? ? nil : c.config_value
    end
  
    def save_institution_logo(upload)
      directory, filename = "#{RAILS_ROOT}/public/uploads/image", 'institute_logo.jpg'
      path = File.join(directory, filename) # create the file path
      File.open(path, "wb") { |f| f.write(upload['datafile'].read) } # write the file
    end

    def available_modules
      modules = find_all_by_config_key('AvailableModules')
      modules.map(&:config_value)
    end

    def set_config_values(values_hash)
      values_hash.each_pair { |key, value| set_value(key.to_s.camelize, value) }
    end

    def set_value(key, value)
      config = find_by_config_key(key)
      config.nil? ?
        Configuration.create(:config_key => key, :config_value => value) :
        config.update_attribute(:config_value, value)
    end

    def get_multiple_configs_as_hash(keys)
      conf_hash = {}
      keys.each { |k| conf_hash[k.underscore.to_sym] = get_config_value(k) }
      conf_hash
    end

  end

end

#   Configuration table entries
#
#   StudentAttendanceType  => Daily | SubjectWise
#   CurrencyType           => Rs, $, E, ...
#   ExamResultType         => Marks | Grades | MarksAndGrades
#   InstitutionName        => name of the school or college
