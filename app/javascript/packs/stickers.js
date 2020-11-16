document.addEventListener("turbolinks:load", function () {

    var instrumentImage = document.querySelector('.sticker-image');
  
    function handleFileSelect(evt) {
      var files = evt.target.files; // FileList object
  
      // Loop through the FileList and render sticker image files as thumbnails.
      for (var i = 0, f; f = files[i]; i++) {
  
        // Validation so that only image files are processed
        if (!f.type.match('image.*')) {
          continue;
        }
  
        var reader = new FileReader();
  
        // Closure to capture the file information.
        reader.onload = (function (theFile) {
          return function (e) {
            // Render thumbnail.
            var span = document.createElement('span');
            span.innerHTML = ['<img class="instrument-preview-thumb" src="', e.target.result,
              '" title="', escape(theFile.name), '"/>'
            ].join('');
            document.getElementById('list').insertBefore(span, null);
          };
        })(f);
        // Read in the image file as a data URL.
        reader.readAsDataURL(f);
      }
    }
  
    if (stickerImage) {
      this.addEventListener('change', handleFileSelect, false);
    }
  
  });