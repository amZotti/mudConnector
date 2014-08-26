function generateDisplay() {
  return  {
    show: function(combatMessage) {
      $("#display").append("<li>" + combatMessage + "</li>");
    },

    warning: function(name) {
      return "You retract your left arm towards " + name;
    },

    success: function(name, damage) {
      return "You successfully hit " + name + " (" + damage + ")";
    },

    failure: function(name) {
      return name + " deflected your attack";
    },

    death: function(name) {
      return name + " is killed right before your eyes";
    }
  };
}

