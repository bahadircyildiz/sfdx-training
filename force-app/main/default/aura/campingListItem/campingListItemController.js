({
  packItem: function (component, event, handler) {
    var btnClicked = event.getSource();

    btnClicked.set("v.disabled", true);
    component.set("v.item.Packed__c", true);
  }
});
