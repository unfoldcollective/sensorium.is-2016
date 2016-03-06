module.exports =
  prompts: false
  templateData:
    conf:
      name: 'Conference name'
      description: 'Conference description'
      date: 'November 15'
      price: '$100'
      venue: 'Coco Bongo'
      address: 'Boulevard Kukulcan, 30'
      city: 'Cancún'
      state: 'Quintana'
    callToAction:
      text: 'Register now!'
      link: 'http://eventick.com.br'
    forkButton: repository: 'https://github.com/braziljs/conf-boilerplate'
    site:
      theme: 'instant-swan'
      url: 'http://braziljs.github.io/conf-boilerplate/'
      # googleanalytics: 'UA-33656081-1'
      
      # Styles
      styles: [
        "/styles/bootstrap.css"
        # "/styles/style.css"
        "/styles/font-awesome-min.css"
        "/styles/instant-style.css"
      ]

      # Scripts
      scripts: [
        "/scripts/script.js"
        "/vendor/jquery.js"
      ]

    sections: [
      'about'
      'speakers'
      'schedule'
      'location'
      'sponsors'
      'partners'
    ]
    labels:
      about: 'About'
      location: 'Location'
      speakers: 'Speakers'
      schedule: 'Schedule'
      sponsors: 'Sponsors'
      partners: 'Partners'
      contact: 'Contact'
    schedule: [
      {
        name: 'Check-in / Breakfast'
        time: '9h00'
      }
      {
        name: 'Linus Torvalds'
        photo: 'themes/yellow-swan/img/speaker.jpg'
        bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
        company: 'Linux Foundation'
        link:
          href: 'http://twitter.com/linus'
          text: '@linus'
        presentation:
          title: 'Digging into a Linux Kernel'
          description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
          time: '10h00'
      }
      {
        name: 'Bill Gates'
        photo: 'themes/yellow-swan/img/speaker.jpg'
        bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
        company: 'Microsoft'
        link:
          href: 'http://github.com/billy95'
          text: '@billy95'
        presentation:
          title: 'Introducing Windows 12'
          description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
          time: '11h00'
      }
      {
        name: 'Lunch'
        time: '12h00'
      }
      {
        name: 'Chuck Norris'
        photo: 'themes/yellow-swan/img/speaker.jpg'
        bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
        company: 'Delta Command'
        link:
          href: 'http://twitter.com/littlechuck'
          text: '@littlechuck'
        presentation:
          title: 'How to kill a elephant with one finger'
          description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
          time: '13h00'
      }
      {
        name: 'Steve Jobs'
        photo: 'themes/yellow-swan/img/speaker.jpg'
        bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
        company: 'Apple, Inc.'
        link:
          href: 'http://github.com/stevie'
          text: '@stevie'
        presentation:
          title: 'Presenting iPad'
          description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
          time: '14h00'
      }
      {
        name: 'Coffee-break'
        time: '15h00'
      }
      {
        name: 'Mark Zuckerberg'
        photo: 'themes/yellow-swan/img/speaker.jpg'
        bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
        company: 'Facebook'
        link:
          href: 'http://twitter.com/zuck'
          text: '@zuck'
        presentation:
          title: 'Revealing Facebook Secrets'
          description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
          time: '16h00'
      }
      {
        name: 'Steve Wozniak'
        photo: 'themes/yellow-swan/img/speaker.jpg'
        bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
        company: 'Apple, Inc.'
        link:
          href: 'http://twitter.com/woz'
          text: '@woz'
        presentation:
          title: 'Why do I prefer Android over iPhone'
          description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo'
          time: '17h00'
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
      @getCollection("html").findAllLive({relativeOutDirPath: 'speakers'}).on "add", (model) ->
        model.setMetaDefaults({layout:"speaker"})