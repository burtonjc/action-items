beforeEach ->
  # give the test object stub(), spy(), and restore() functions from sinon
  @[key] = value for key, value of sinon.sandbox.create()

  module 'application'
  module 'partials'
