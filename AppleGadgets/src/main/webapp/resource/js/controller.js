var app=angular.module("app",[])
app.controller("ProductController",function($scope,$http){
	 $scope.addToCart=function(productId){
		 $http.put('http://localhost:8080/AppleGadgets/cart/addCartItem/'+productId).success(function(){
			 alert("Product Successfully added to the Cart")
		 })
	 }
	 
	 $scope.getCart=function(cartId){
		 console.log("cartId is"+cardId)
		 $http.get('http://localhost:8080/AppleGadgets/cart/getCart/'+cartId).success(function(){
			 $scope.cart=data
		 })
	 }
	 
})