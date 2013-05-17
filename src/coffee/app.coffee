angular.module('portfolioNgApp', ['ngResource'])
    .config ($routeProvider, $locationProvider) ->
        $route
            .when '/',
                templateUrl: '/views/index.html'
            .when '/menu/:menuId/edit',
                templateUrl: '/views/menu_edit.html'
                controller: 'MenuEditCtrl'
            .when '/menu/:menuId/cards',
                templateUrl: '/views/menu_cards.html'
                controller: 'CardListCtrl'
            .otherwise
                redirectTo: '/'

        $location.html5Mode(off).hashPrefix('!')