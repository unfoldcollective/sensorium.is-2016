module.exports =
  prompts: false
  templateData:
    conf:
      name: 'Sensorium Conference 2017'
      description: 'Sensorium conference is a first-of-its-kind celebration of art, design and new media technology in Bratislava, Slovakia. Immerse yourself in the world of interactive installations, dynamic data visualisations and generative design. The program includes a workshop by computational artist and designer Karsten Schmidt, an exhibition of interactive installations and talks from internationally established speakers who use computation in their creative practice.'
      date: 'April 19'
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
      googleanalytics: 'UA-43863517-5'
      
      # Styles
      styles: [
        "./vendor/bootstrap-min.css"
        "./vendor/font-awesome-min.css"
        "./styles/instant-style.css"
        "./styles/ui-hover-effects.css"
        "./styles/ui-buttons.css"
        "./styles/jquery-image-gallery.css"
        "./styles/schedule.css"
        "./styles/news.css"
        "./styles/speakers.css"
        "./styles/sponsors.css"
        "./styles/footer.css"
        "./styles/header.css"
        "./styles/layout-program.css"
        "./styles/layout-speaker.css"
      ]

      # Scripts
      scripts: [
        "./vendor/jquery.js"
        "./vendor/bootstrap.min.js"
        "./scripts/main.js"
        # "scripts/footerheight.js"
        "./scripts/inlinesvg.js"
        "./scripts/toggletext.js"
        # "scripts/script.js"
      ]
    labels:
      about: 'About'
      news: 'News'
      location: 'Locations'
      speakers: 'Artists'
      program: 'Program'
      sponsors: 'Sponsors'
      partners: 'Partners'
      contact: 'Contact'
    sections2017: [
      # {
      #   title: 'news'
      #   label: 'News'
      # }
      # {
      #   title: 'speakers'
      #   label: 'Artists'
      # }
      {
        title: 'about'
        label: 'About'
        multilang: true
      }      
      # {
      #   title: 'program'
      #   label: 'Program'
      # }
      # {
      #   title: 'location'
      #   label: 'Locations'
      # }
      # {
      #   title: 'sponsors'
      #   label: 'Sponsors'
      #   notInNav: true
      # }
      # {
      #   title: 'partners'
      #   label: 'Partners'
      #   notInNav: true
      # }
    ]
    sections: [
      {
        title: 'news'
        label: 'News'
      }
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
        notInNav: true
      }
      {
        title: 'partners'
        label: 'Partners'
        notInNav: true
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
        url: 'http://lab.cafe/'
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
    # localize url of document to language
    localize: (doc, lang) ->
      if doc.lang is lang then doc.url 
      else if lang is 'en' then doc.url.split('sk/').join('') #return url without 'sk/'
      else if lang is 'sk' then '/sk' + doc.url # insert sk
  plugins:
        multilang:
            languages: ['en', 'sk']
            defaultLanguage: 'en'
        moment:
          formats: [
            {raw: 'date', format: 'MMMM Do YYYY', formatted: 'humanDate'}
            {raw: 'date', format: 'YYYY-MM-DD', formatted: 'computerDate'}
          ]
        assets:
          retainName: 'yes'
  collections:
    speakers: ->
      @getCollection("html").findAllLive({relativeDirPath: 'speakers'}, [{time:1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})
        model.setMetaDefaults({isLive:true})
    workshops: ->
      @getCollection("html").findAllLive({relativeDirPath: 'workshops'}, [{time:1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"program"})
        model.setMetaDefaults({isLive:true})
    posts: ->
      @getCollection("html").findAllLive({relativeDirPath: 'posts', isPost:true}, [{time:1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"program"})
        model.setMetaDefaults({isLive:true})
    activities: ->
      @getCollection("html").findAllLive({relativeDirPath: 'program'}, [{time:-1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"program"})
        model.setMetaDefaults({isLive:true})