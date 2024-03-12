Rails.application.config.session_store :active_record_store, key: '_app_session'
ActiveRecord::SessionStore::Session.serializer = :json
