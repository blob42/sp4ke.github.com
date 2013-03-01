angular
  .module( 'myApp', ['myApp.filters', 'myApp.services', 'myApp.directives'])
  .config( ['$routeProvider', ($routeProvider)->

      $routeProvider.when('/', {templateUrl: 'partials/home.html', controller: MyCtrl1})
      $routeProvider.when('/freelance', {templateUrl: 'partials/freelance.html', controller: MyCtrl1})
      $routeProvider.when('/projects', {templateUrl: 'partials/projects.html', controller: MyCtrl2})
      $routeProvider.when('/blog', {templateUrl: 'partials/blog.html', controller: MyCtrl2})
      $routeProvider.when('/contact', {templateUrl: 'partials/contact.html', controller: MyCtrl2})
      $routeProvider.otherwise({redirectTo: '/'})
    ])

