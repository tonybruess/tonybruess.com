# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
TonyB::Application.initialize!

TonyB::Application.config.styles = [
    "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css",
    "//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css",
    "application",
]

TonyB::Application.config.scripts = [
    "//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js",
    "//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js",
    "application",
]

TonyB::Application.config.rots = [0, 45, 90, 135, 180, 225, 270, 315]

TonyB::Application.config.media = [
    {
        :title => "Twitter",
        :url => "https://twitter.com/Monsieur_Apple",
        :fa => "fa-twitter",
    },
    {
        :title => "GitHub",
        :url => "https://github.com/mrapple",
        :fa => "fa-github",
    },
    {
        :title => "YouTube",
        :url => "https://youtube.com/user/mrapplecomputer1",
        :fa => "fa-youtube-play",
    },
    {
        :title => "Reddit",
        :url => "http://reddit.com/u/MonsieurApple",
        :fa => "fa-reddit-square",
    },
    {
        :title => "LinkedIn",
        :url => "https://linkedin.com/pub/tony-bruess/66/17/b87",
        :fa => "fa-linkedin",
    },
    {
        :title => "Facebook",
        :url => "https://facebook.com/tonybruess",
        :fa => "fa-facebook",
    },
    {
        :title => "tony@oc.tc",
        :url => "mailto:tony@oc.tc",
        :fa => "fa-send",
    },
    {
        :title => "TwitchTV",
        :url => "http://twitch.tv/MonsieurApple",
        :fa => "fa-twitch",
    },
]
