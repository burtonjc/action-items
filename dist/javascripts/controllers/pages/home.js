(function() {
  var HomePageController;

  angular.module('application').controller('HomePageController', [
    '$scope', 'Item', HomePageController = (function() {
      function HomePageController($scope, Item) {
        this.$scope = $scope;
        this.$scope.items = Item;
        $scope.items.$bind($scope, 'item.votes');
      }

      HomePageController.prototype.addMessage = function(item) {
        return this.$scope.items.$add({
          title: item.title,
          description: item.description,
          votes: 0
        });
      };

      HomePageController.prototype.upVote = function(item) {
        item = this.$scope.items.$child(item.$id);
        if (item.votes == null) {
          item.votes = 0;
        }
        return item.$update({
          votes: item.votes + 1
        });
      };

      HomePageController.prototype.downVote = function(item) {
        item = this.$scope.items.$child(item.$id);
        if (item.votes == null) {
          item.votes = 0;
        }
        return item.$update({
          votes: item.votes - 1
        });
      };

      return HomePageController;

    })()
  ]);

}).call(this);
