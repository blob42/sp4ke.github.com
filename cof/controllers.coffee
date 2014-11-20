#Controllers
#
@projectsCtrl = ($scope)->
    $scope.carousels = 
        uman: [
            '/img/uman1.png',
            '/img/uman2.png'
        ]

    $scope.selectedItem = 'simplifield'
    $scope.select = (item)->
        if $scope.selectedItem is item
            $scope.selectedItem = undefined
        else
            $scope.selectedItem = item
        
        



projectsCtrl.$inject = ['$scope']

@dockCtrl = ($scope, $location, $window)->
    $scope.icons = [
            class: 'profil'
            icon: 'icon-user'
            link: '/freelance'
            text: 'What I Do'
        ,
            class: 'projects'
            icon: 'icon-laptop'
            link: '/projects'
            text: 'My work'
        ,
            class: 'contact'
            icon: 'icon-phone'
            link: '/contact'
            text: 'Get in touch'
        ,
            class: 'blog'
            icon: 'icon-book'
            link: '/blog'
            text: 'Ideas'
        ,
    ]

    # $scope.hovered = false

    # $scope.hoverText = ($index)->
    #     $scope.hovered = true
    #     $scope.hoveredIndex = $index

    # $scope.hoverOut = ()->
    #     $scope.hovered = false
    #     $scope.hoveredIndex = null

    $scope.selected = null

    defaultSelected = ()->
        for icon in $scope.icons
            if $location.path() is icon.link
                $scope.selected = $scope.icons.indexOf icon 

    defaultSelected()

    $scope.switch = ($index)->
        if $index is 3
            $window.location.hash = ''
            $window.location.pathname = '/blog'
            return
        if $scope.selected is $index
            $location.path('/')
            $scope.selected = null
        else
            $scope.selected = $index
            $location.path($scope.icons[$index].link)

dockCtrl.$inject = ['$scope', '$location', '$window']

window.MyCtrl1 = ()->
MyCtrl1.$inject = []

window.MyCtrl2 = ()->
MyCtrl2.$inject = []
