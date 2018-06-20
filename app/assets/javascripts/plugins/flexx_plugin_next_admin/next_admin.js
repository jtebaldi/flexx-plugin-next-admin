//= require jquery_ujs

// TheAdmin theme requires this call to initialize
$(document).ready(function(){
  app.config();

  $('.datetimepicker').datetimepicker({ format: "mm/dd/yyyy - HH:ii P", showMeridian: true, todayBtn: true, autoclose: true });
})

function sortMe(parent, childrenTag, dataAttr, direction) {
  var records = $(parent).children(childrenTag);

  records.sort(function(a, b) {
    var ad = a.getAttribute(dataAttr);
    var bd = b.getAttribute(dataAttr);

    if(direction.toLowerCase() == 'desc') {
      if(bd > ad)
        return 1;
      if(bd < ad)
        return -1;

      return 0;
    } else {
      if(ad > bd)
        return 1;
      if(ad < bd)
        return -1;

      return 0;
    }
  });

  records.detach().appendTo(parent);
}
