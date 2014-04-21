require "rails/generators"

class SimpleTaggable::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../../templates', __FILE__)

  desc "This generator creates migrations for simple_taggable"
  def create_migration_file
    copy_file "create_tags.rb", "db/migrate/#{Time.now.utc.strftime("%Y%m%d%H%M%S")}_create_tags.rb"
  end
end
