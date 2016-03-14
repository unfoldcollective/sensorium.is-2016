module.exports =
  prompts: false
  templateData:
    conf:
      name: 'Sensorium 2016'
      description: 'Sensorium festival is a celebration of art and science taking place in Bratislava'
      date: 'April 19'
      price: '€10'
      venue: 'Berlinka, Slovenská Národná Galéria'
      address: 'Námestie Ľudovíta Štúra 33/4'
      venue2: 'LAB'
      address2: 'Námestie SNP 484/25'
      city: 'Bratislava'
      country: 'Slovakia'
      logo: '/images/sensorium-circle.png'
      logotype: '/images/sensorium2016-logo-teal.svg'
    site:
      theme: 'yellow-swan'
      url: 'http://sensorium.is'
      # googleanalytics: 'UA-33656081-1'
      
      # Styles
      styles: [
        "styles/bootstrap.css"
        # "styles/style.css"
        "styles/font-awesome-min.css"
        "styles/instant-style.css"
        "styles/ui-hover-effects.css"
        "styles/ui-buttons.css"
        "styles/schedule.css"
        "styles/sponsors.css"
        "styles/footer.css"
        "styles/header.css"
      ]

      # Scripts
      scripts: [
        "vendor/jquery.js"
        "vendor/bootstrap.min.js"
        "scripts/main.js"
        "scripts/footerheight.js"
        "scripts/inlinesvg.js"
        # "scripts/script.js"
      ]
    labels:
      about: 'About'
      location: 'Locations'
      speakers: 'Artists'
      program: 'Program'
      sponsors: 'Sponsors'
      partners: 'Partners'
      contact: 'Contact'
    sections: [
      {
        title: 'speakers'
        label: 'Artists'
      }
      {
        title: 'about'
        label: 'About'
        multilang: true
      }      
      {
        title: 'program'
        label: 'Program'
      }
      {
        title: 'location'
        label: 'Locations'
      }
      {
        title: 'sponsors'
        label: 'Sponsors'
      }
      {
        title: 'partners'
        label: 'Partners'
      }
    ]
    sponsors: [ 
      {
        name: 'Studio 727'
        logo: '/images/sponsors/studio727.png'
        url: 'http://www.727.sk/'
      }
      {
        name: 'Nethemba'
        logo: '/images/sponsors/nethemba.png'
        url: 'https://nethemba.com/sk'
      }
    ]
    partners: [ 
      {
        name: 'Resonate'
        logo: '/images/partners/resonate-wordmark.svg'
        url: 'http://resonate.io/'
      }
      {
        name: 'Slovenská Národná Galéria'
        logo: '/images/partners/logo-sng.svg'
        url: 'http://www.sng.sk'
      }
      {
        name: 'Goethe Institut'
        logo: '/images/partners/logo-goethe-institut.png'
        url: 'https://www.goethe.de/en/index.html'
      }
      {
        name: 'Lab'
        logo: '/images/partners/logo-lab.svg'
        # url: '#'
      }
    ]
    # helper functions
    getTheme: ->
      '/themes/' + @site.theme
    getUrl: ->
      @site.url
    getStylesFromFirstLevel: ->
      ("../"+style for style in @site.styles) 
    getStylesFromSecondLevel: ->
      ("../../"+style for style in @site.styles) 
    getStylesFromThirdLevel: ->
      ("../../../"+style for style in @site.styles) 
    getScriptsFromFirstLevel: ->
      ("../"+script for script in @site.scripts) 
    getScriptsFromSecondLevel: ->
      ("../../"+script for script in @site.scripts) 
    getScriptsFromThirdLevel: ->
      ("../../../"+script for script in @site.scripts) 
    # sort function
    order: (a,b) ->
      b.order - a.order
    getLeveledPath: (filePath) ->
      if @document.lang is 'en' then '..'+filePath else '../..'+filePath
    # getTranslatedUrl: (filePath) ->
    #   if @document.lang is 'en' then '..'+filePath else '../..'+filePath
  plugins:
        multilang:
            languages: ['en', 'sk']
            defaultLanguage: 'en'
  collections:
    speakers: ->
      @getCollection("html").findAllLive({relativeDirPath: 'speakers'}, [{time:1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})
    workshops: ->
      @getCollection("html").findAllLive({relativeDirPath: 'workshops'}, [{time:1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})
    activities: ->
      @getCollection("html").findAllLive({relativeDirPath: 'program'}, [{time:-1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})