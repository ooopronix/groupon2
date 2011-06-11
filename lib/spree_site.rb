module SpreeSite
  class Engine < Rails::Engine
    def self.activate
      # Add your custom site logic here
      ActionMailer::Base.class_eval do
        default_url_options[:host] = Spree::Config[:site_url]
        default :from => (MailMethod.current.try(:preferred_mails_from) || Spree::Config[:mails_from] || "no-reply@groupon2.adenin.ru" )
      end if ::Product.table_exists?

    end

    def load_tasks
    end

    config.to_prepare &method(:activate).to_proc
  end
end
