function handleImageUpload(event) {
    const imageFile = event.target.files[0];
    const options = {
          maxSizeMB: 5,
          maxWidthOrHeight: 1920
          }
    imageCompression(imageFile, options)
    .then(function (compressedFile) {
    const img = URL.createObjectURL(compressedFile);
         })
    .catch(function (error) {
        console.log(error.message);
        });
    }
