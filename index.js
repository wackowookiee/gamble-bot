var tmi = require('tmi.js')


var options = {
 options: {
        debug: true
    },
connection: { 
    cluster: "aws",
    reconnect: true
},
identity: {
    username: "WackoWookiee", // Twitch username
    password:  "" //https://twitchapps.com/tmi/ Paste in whatever this site gives you, ie: "oauth:somethingsomething"


},
channels: ["sukasblood"]
};

var client = new tmi.client(options);
client.connect();


function myFunc() {
    client.say("sukasblood", "!gamble all");
  }
  
  setTimeout(myFunc, 35000);
  