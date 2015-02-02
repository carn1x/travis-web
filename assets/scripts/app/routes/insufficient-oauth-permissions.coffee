require 'routes/basic'
require 'routes/simple-layout'

SimpleLayoutRoute = Travis.SimpleLayoutRoute

Route = SimpleLayoutRoute.extend
  setupController: (controller) ->
    @_super.apply this, arguments
    existingUser = document.location.hash.match(/#existing[_-]user/)
    controller.set('existingUser', existingUser)

Travis.InsufficientOauthPermissionsRoute = Route
