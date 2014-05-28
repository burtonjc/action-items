(function() {
  angular.module('application').factory('Item', [
    '$firebase', function($firebase) {
      var ref;
      ref = new Firebase("https://boiling-fire-9977.firebaseio.com/items");
      return $firebase(ref);
    }
  ]);

}).call(this);
