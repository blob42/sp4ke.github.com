# Directives 


angular
  .module('myApp.directives', [])
  .directive('appVersion', ['version', (version)->
    (scope, elm, attrs)->
      elm.text(version)
  ])
  .directive('hoverShow', ()->
      link: (scope, elm, attrs)->
          elm.bind('mouseover', {attrs: attrs}, (ev)->
              elm.closest('.projects').find('.' + ev.data.attrs.hoverShow).show()
          )
          elm.bind('mouseout', {attrs: attrs}, (ev)->
              elm.closest('.projects').find('.' + ev.data.attrs.hoverShow).hide()
          )
  )
