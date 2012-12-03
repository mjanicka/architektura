Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, 'e98ca137a199237b75cf', 'cc347b1acaa365b2b2bdfa69c7243b0fc6f418ea'
end
