$(document).ready(function() {
  $(".is-wrapper").contentbox({
    snippetFile: '/minimalist-basic/snippets.html',
    snippetOpen: true,
    coverImageHandler: 'savecover.php',
    moduleConfig: [{
      "moduleSaveImageHandler": "saveimage-module.php" /* for module purpose image saving (ex. slider) */
    }],
    onRender: function () {
        $('a.is-lightbox').simpleLightbox({ closeText: '<i style="font-size:35px" class="icon ion-ios-close-empty"></i>', navText: ['<i class="icon ion-ios-arrow-left"></i>', '<i class="icon ion-ios-arrow-right"></i>'], disableScroll: false });
    },
    snippetCustomCode: true
  });

  $("#btnAddSection").click(function () {
    $('.is-wrapper').data('contentbox').addSection();
    return false;
  });
});
