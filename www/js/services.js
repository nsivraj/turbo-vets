angular.module('starter.services', [])

//.factory('JsonData', function($http) {
//	return {
//		get: function(url) {
//			var httpReq = {
//				method: 'GET',
//				url: url
//			};
//			return $http(httpReq);
//		}
//	}
//})

.factory('DB', function() {
	//var db = new PouchDB('https://turbovets.iriscouch.com/turbo-vets');
	var db = new PouchDB();
	var remoteCouch = false;
	
	return {
		db: function() {
			return db;
		}
	}
})

.factory('Vehicles', function(DB) {
	DB.db().info().then(function (info) {
		  console.log(info);
	});
	var vehicles = undefined;
	
		
	//JsonData.get('/vehicles').then(function(data) {
	//JsonData.get('http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo').then(function(data) {
	//	vehicles = data.data;
	//}, function(data) {
	    //error handling should go here
	    //window.alert(data);
	//});
	
	return {
		// Force all to be synchronous
		all: function(dataCallback) {
			if(vehicles === undefined) {
				vehicles = [];
				DB.db().allDocs({include_docs: true}, function(err, response) {
					for(var i=0; i < response.rows.length; ++i) {
						vehicles.push(response.rows[i].doc);
					}
					dataCallback(vehicles);
				});
			}
		},
		clearOutVehicles: function() {
			vehicles = undefined;
		},
		save: function(vehicle) {
			console.log(vehicle);
			DB.db().put(vehicle).then(function() {
				DB.db().allDocs({include_docs: true}, function(err, response) {
					vehicles.splice(0,vehicles.length)
					for(var i=0; i < response.rows.length; ++i) {
						vehicles.push(response.rows[i].doc);
					}
				});
			});
		}
	};
});


