require_dependency 'redmine_simple_author_change/hooks'

Rails.configuration.to_prepare do
  require 'redmine_simple_author_change/issue_patch'
end