function fileToCsv(form){
    var fileData = form.myFile
    return fileData.getBlob().getDataAsString()
  }