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
      city: 'Bratislava'
      country: 'Slovakia'
    # callToAction:
    #   text: 'Register now!'
    #   link: 'http://eventick.com.br'
    # forkButton: repository: 'https://github.com/braziljs/conf-boilerplate'
    site:
      theme: 'yellow-swan'
      url: 'http://sensorium.is'
      # googleanalytics: 'UA-33656081-1'
      
      # Styles
      styles: [
        "/styles/bootstrap.css"
        # "/styles/style.css"
        "/styles/font-awesome-min.css"
        "/styles/instant-style.css"
        "/styles/ui-hover-effects.css"
        "/styles/ui-buttons.css"
        "/styles/schedule.css"
      ]

      # Scripts
      scripts: [
        "/vendor/jquery.js"
        "/scripts/main.js"
        "/scripts/script.js"
      ]

    sections: [
      'speakers'
      'about'
      'program'
      'location'
      'sponsors'
      'partners'
    ]
    labels:
      about: 'About'
      location: 'Location'
      speakers: 'Speakers'
      program: 'Program'
      sponsors: 'Sponsors'
      partners: 'Partners'
      contact: 'Contact'
    schedule: [
      # {
      #   time: '18.00'
      #   description: 'Welcome'
      # }
      {
        description: 'Special Guest | To be announced...'
        time: '18.00 - 19.00'
      }
      {
        description: 'Pau Garcia | Domestic Data Streamers'
        time: '19.00 - 20.00'
      }
      {
        description: 'Karsten Schmidt | Post Spectacular'
        time: '20.00 - 21.00'
      }
    ]
    sponsors: [ {
      name: 'Eventick'
      logo: 'themes/yellow-swan/img/sponsor.png'
      url: 'http://eventick.com.br'
    } ]
    partners: [ {
      name: 'BrazilJS'
      logo: 'themes/yellow-swan/img/partner.png'
      url: 'http://braziljs.org'
    } ]
    getTheme: ->
      '/themes/' + @site.theme
    getUrl: ->
      @site.url
  collections:
    speakers: ->
      @getCollection("html").findAllLive({relativeOutDirPath: 'speakers'}, [{time:1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})
    workshops: ->
      @getCollection("html").findAllLive({relativeOutDirPath: 'workshops'}, [{time:1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})
    activities: ->
      @getCollection("html").findAllLive({relativeOutDirPath: 'program'}, [{time:-1}]).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})