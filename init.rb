require 'redmine'

Redmine::Plugin.register :redmine_simple_author_change do
  name 'Simple Author Change plugin'
  author 'Dominik Staskiewicz'
  description 'This is a simplest way of changing an author I can think of'
  version '0.0.1'
  url 'http://dapplication.com'
  author_url 'http://dapplication.com'

  project_module :simple_author_change do
    permission :change_issue_author, {}
  end
end

require 'redmine_simple_author_change'
