angular.module('portfolioNgApp', ['ngResource', 'ui.bootstrap', 'ui.bootstrap.tpls'])
    .config ($routeProvider, $locationProvider, baseUrl) ->
        $routeProvider
            .when '/index',
                templateUrl: 'views/portfolio.html'
            .when '/portfolio/projects/:id',
                templateUrl: 'views/cardsList.html'
                controller: 'CardListCtrl'
            .when '/portfolio/projects/:id/edit',
                templateUrl: 'views/project-edit.html'
                controller: 'ProjectEditCtrl'
            .otherwise
                redirectTo: '/index'

        $locationProvider.html5Mode(off).hashPrefix('!')
        return

    .constant('baseUrl', '/index')
