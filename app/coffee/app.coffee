angular
  .module( 'myApp', ['myApp.filters', 'myApp.services', 'myApp.directives'])
  .config( ['$routeProvider', ($routeProvider)->

      $routeProvider.when('/who_am_i', {templateUrl: 'partials/who_am_i.html', controller: MyCtrl1})
      $routeProvider.when('/timeline', {templateUrl: 'partials/timeline.html', controller: MyCtrl2})
      $routeProvider.otherwise({redirectTo: '/who_am_i'})
    ])

