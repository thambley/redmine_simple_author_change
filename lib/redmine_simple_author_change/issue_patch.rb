require_dependency 'issue'

module RedmineSimpleAuthorChange
  module IssuePatch
    def self.included(base)
      base.class_eval do
        safe_attributes :author_id
      end
    end
  end
end

unless Issue.included_modules.include?(RedmineSimpleAuthorChange::IssuePatch)
  Issue.send(:include, RedmineSimpleAuthorChange::IssuePatch)
end
