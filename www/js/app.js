// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.controllers' is found in controllers.js
angular.module('starter', ['ionic', 'starter.controllers', 'starter.services'])

.run(function($ionicPlatform) {
  $ionicPlatform.ready(function() {
    // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
    // for form inputs)
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
    }
    if (window.StatusBar) {
      // org.apache.cordova.statusbar required
      StatusBar.styleDefault();
    }
  });
})

.config(function($stateProvider, $urlRouterProvider) {
  $stateProvider

  .state('app', {
    url: "/app",
    abstract: true,
    templateUrl: "templates/menu.html",
    controller: 'AppCtrl'
  })

  .state('app.vehicles', {
    url: "/vehicles",
    views: {
      'menuContent': {
        templateUrl: "templates/vehicles.html",
        controller: 'VehiclesCtrl'
      }
    }
  })

  .state('app.vendors', {
    url: "/vendors",
    views: {
      'menuContent': {
        templateUrl: "templates/vendors.html",
        controller: 'VendorsCtrl'
      }
    }
  })
  
  .state('app.roles', {
      url: "/roles",
      views: {
        'menuContent': {
          templateUrl: "templates/roles.html",
          controller: 'RolesCtrl'
        }
      }
  })

  .state('app.users', {
    url: "/users",
    views: {
      'menuContent': {
        templateUrl: "templates/users.html",
        controller: 'UsersCtrl'
      }
    }
  })
  
  	.state('app.addvehicle', {
	  url: "/addvehicle?copyIndex",
	  views: {
	    'menuContent': {
	      templateUrl: "templates/addvehicle.html",
	      controller: 'AddVehicleCtrl'
	    }
	  }
	});
  
  // if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise('/app/vehicles');
});
