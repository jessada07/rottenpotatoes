Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, "201252977083210", "6625e9a709887682ff97bd1227c202db",
    scope: 'public_profile', info_fields: 'id,name,link'

    provider :twitter, "lGigfrxXMMNVXBpAvmG0kSnPH", "8KandciWECIkZrb0Yd8brkhtXpuCSJj8CVXPhRuXvqZ9dhRyP7"
    
end