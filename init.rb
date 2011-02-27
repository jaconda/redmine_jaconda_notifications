require 'redmine'

RAILS_DEFAULT_LOGGER.info 'Starting Jaconda Notifications Plugin for Redmine'

require 'jaconda'
require_dependency 'notifier_hook'

Redmine::Plugin.register :redmine_jaconda_notifications do
  name 'Redmine Jaconda Notifications plugin'
  author 'Anton Mironov'
  description 'A plugin to display Redmine activity on Jaconda'
  version '1.0.0'
  url 'http://github.com/mironov/redmine_jaconda_notifications'

  settings :default => {'subdomain' => '', 'room_id' => '', 'room_token' => ''}, :partial => 'settings/jaconda_settings'
end
