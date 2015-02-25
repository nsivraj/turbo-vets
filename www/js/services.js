angular.module('starter.services', [])

.factory('JsonData', function($http) {
	return {
		get: function(url) {
			var httpReq = {
				method: 'GET',
				url: url
			};
			return $http(httpReq);
		}
	}
})

.factory('Vehicles', function(JsonData) {
	var vehicles = {};
	
	//JsonData.get('/vehicles').then(function(data) {
	JsonData.get('http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo').then(function(data) {
		vehicles = data.data;
	}, function(data) {
	    //error handling should go here
	    //window.alert(data);
	});
	
	return {
		all: function() {
			return vehicles;
		}
	};
});


