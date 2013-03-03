// Generated by CoffeeScript 1.4.0
(function() {

  angular.module('myApp', ['myApp.filters', 'myApp.services', 'myApp.directives', 'ui', 'ui.directives']).config([
    '$routeProvider', function($routeProvider) {
      $routeProvider.when('/', {
        templateUrl: 'partials/home.html',
        controller: MyCtrl1
      });
      $routeProvider.when('/freelance', {
        templateUrl: 'partials/freelance.html',
        controller: MyCtrl1
      });
      $routeProvider.when('/projects', {
        templateUrl: 'partials/projects.html',
        controller: projectsCtrl
      });
      $routeProvider.when('/blog', {
        templateUrl: 'partials/blog.html',
        controller: MyCtrl2
      });
      $routeProvider.when('/contact', {
        templateUrl: 'partials/contact.html',
        controller: MyCtrl2
      });
      return $routeProvider.otherwise({
        redirectTo: '/'
      });
    }
  ]);

}).call(this);