//Event listener accesses the Turbolinks gem to listen for the events below
document.addEventListener("turbolinks:load", function() {

    var stickerImage = document.querySelector('.sticker-image');

    function handleFileSelect(evt) {
        var files = evt.target.files; 

        //Loop through the FileList and render image files as thumbnails
        for (var i = 0, f; f = files[i]; i++) {

            //Process image files
            if (!f.type.match('image.*')) {
                continue;
            }

            var reader = new FileReader();

            //To capture file information 
            reader.onload = (function(theFile) {
                return function(e) {
                    //To render picture's thumbnail
                    var span = document.createElement('span');
                    span.innerHTML = ['<img class="sticker-preview-thumb" src="', e.target.result, ' " title="', escape(theFile.name), '"/>'
                    ].join('');
                    document.getElementById('list').insertBefore(span, null);
                };
            })(f);

            //Read in the image file and put it into the client browser as a data URL
                reader.readAsDataURL(f);
            }
        }

        if (stickerImage){
            this.addEventListener('change', handleFileSelect, false);
        }
    });