#-- encoding: UTF-8
#-- copyright
# ChiliProject is a project management system.
#
# Copyright (C) 2010-2012 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# See doc/COPYRIGHT.rdoc for more details.
#++

class Attachment < ActiveRecord::Base
  generator_for :container, :method => :generate_project
  generator_for :file, :method => :generate_file
  generator_for :author, :method => :generate_author

  def self.generate_project
    Project.generate!
  end

  def self.generate_author
    User.generate_with_protected!
  end

  def self.generate_file
    @file = ActiveSupport::TestCase.mock_file
  end
end
