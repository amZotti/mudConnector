function timing() {
  function pingServer() {
    var second = 1;
    dispatcher.trigger('timings.create', second);
  }
  setInterval(pingServer, 1000);
}

