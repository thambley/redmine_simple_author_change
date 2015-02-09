require_dependency 'issue'

module SimpleAuthorChange
  module IssuePatch
    def self.included(base)
      base.class_eval do
        safe_attributes :author_id
      end
    end
  end
end

unless Issue.included_modules.include?(SimpleAuthorChange::IssuePatch)
  Issue.send(:include, SimpleAuthorChange::IssuePatch)
end
