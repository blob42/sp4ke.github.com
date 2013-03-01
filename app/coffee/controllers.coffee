#Controllers

@dockCtrl = ($scope, $location)->
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
            class: 'blog'
            icon: 'icon-book'
            link: '/blog'
            text: 'Ideas'
        ,
            class: 'contact'
            icon: 'icon-envelope-alt'
            link: '/contact'
            text: 'Get in touch'
    ]

    $scope.selected = null

    defaultSelected = ()->
        for icon in $scope.icons
            if $location.path() is icon.link
                $scope.selected = $scope.icons.indexOf icon 

    defaultSelected()

    $scope.switch = ($index)->
        if $scope.selected is $index
            $location.path('/')
            $scope.selected = null
        else
            $scope.selected = $index
            $location.path($scope.icons[$index].link)

dockCtrl.$inject = ['$scope', '$location']

window.MyCtrl1 = ()->
MyCtrl1.$inject = []

window.MyCtrl2 = ()->
MyCtrl2.$inject = []
