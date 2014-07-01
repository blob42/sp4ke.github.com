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

  .directive('customScroll', ()->
    link: (scope, elm, attrs)->
      $(elm).mCustomScrollbar 
        theme: 'dark-2'
  )

  .directive('carousel', ()->
    scope: 
      carousel: '='
    link: (scope, elm, attrs)->
      carousel = scope.carousel
      img = elm.find('img')[0]
      cIndex = 0
      img.src = carousel[cIndex]

      setInterval(->
          setTimeout(->
              $(img).css({opacity: 0.1})
            ,
              100
          )

          if cIndex < carousel.length - 1
            cIndex += 1
          else
            cIndex = 0

          img.src = carousel[cIndex]
          setTimeout(->
              $(img).css({opacity: 1})
            ,
              200
            )
        ,
          4500
        )
  )