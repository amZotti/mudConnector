function timing() {
  function pingServer() {
    var second = 1;
    dispatcher.trigger('timings.create', second);
  }

  function beginTimer() {
  setInterval(pingServer, 1000);
  }

channel = dispatcher.subscribe('timer'); 
channel.bind('new', beginTimer);

}


