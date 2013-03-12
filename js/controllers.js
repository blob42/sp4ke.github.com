// Generated by CoffeeScript 1.4.0
(function() {

  this.projectsCtrl = function($scope) {};

  projectsCtrl.$inject = ['$scope'];

  this.dockCtrl = function($scope, $location, $window) {
    var defaultSelected;
    $scope.icons = [
      {
        "class": 'profil',
        icon: 'icon-user',
        link: '/freelance',
        text: 'What I Do'
      }, {
        "class": 'projects',
        icon: 'icon-laptop',
        link: '/projects',
        text: 'My work'
      }, {
        "class": 'contact',
        icon: 'icon-phone',
        link: '/contact',
        text: 'Get in touch'
      }, {
        "class": 'blog',
        icon: 'icon-book',
        link: '/blog',
        text: 'Ideas'
      }
    ];
    $scope.hovered = false;
    $scope.hoverText = function($index) {
      $scope.hovered = true;
      $scope.hoveredIndex = $index;
      return console.log($scope.hovered);
    };
    $scope.hoverOut = function() {
      $scope.hovered = false;
      return $scope.hoveredIndex = null;
    };
    $scope.selected = null;
    defaultSelected = function() {
      var icon, _i, _len, _ref, _results;
      _ref = $scope.icons;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        icon = _ref[_i];
        if ($location.path() === icon.link) {
          _results.push($scope.selected = $scope.icons.indexOf(icon));
        } else {
          _results.push(void 0);
        }
      }
      return _results;
    };
    defaultSelected();
    return $scope["switch"] = function($index) {
      if ($index === 3) {
        $window.location.hash = '';
        $window.location.pathname = '/blog';
        return;
      }
      if ($scope.selected === $index) {
        $location.path('/');
        return $scope.selected = null;
      } else {
        $scope.selected = $index;
        return $location.path($scope.icons[$index].link);
      }
    };
  };

  dockCtrl.$inject = ['$scope', '$location', '$window'];

  window.MyCtrl1 = function() {};

  MyCtrl1.$inject = [];

  window.MyCtrl2 = function() {};

  MyCtrl2.$inject = [];

}).call(this);
