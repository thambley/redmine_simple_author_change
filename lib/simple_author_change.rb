require_dependency 'simple_author_change/hooks'

Rails.configuration.to_prepare do
  require 'simple_author_change/issue_patch'
end