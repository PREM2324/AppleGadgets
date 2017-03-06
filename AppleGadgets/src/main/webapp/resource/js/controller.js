var app=angular.module("app",[])
app.controller("ProductController",function($scope,$http){
	 $scope.addToCart=function(productId){
		 $http.put('http://localhost:8080/AppleGadgets/cart/addCartItem/'+productId).success(function(){
			 alert("Product Successfully added to the Cart")
		 })
	 }
})