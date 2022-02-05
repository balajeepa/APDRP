function textAreaCounter(field, cntfield, maxlimit) {

	if (field.value.length > maxlimit) // if too long...trim it!
		field.value = field.value.substring(0, maxlimit);
	// otherwise, update 'characters left' counter
	else
		cntfield.value = maxlimit - field.value.length;
}

function comparefromTo(one, two, msgone, msgtwo, textbox) {

	if (one.value == "" || two.value == "") {
		return false;
	}
	var lhd = one.value.split("/");
	var ahd = two.value.split("/");

	var lastHDate = new Date(lhd[1] + "/" + lhd[0] + "/" + lhd[2])
	var adjToDate = new Date(ahd[1] + "/" + ahd[0] + "/" + ahd[2]);

	if (lastHDate >= adjToDate) {
		alert("Please select " + msgtwo + " Date grater then the " + msgone
				+ " Date");
		textbox.value = "";
		textbox.focus();
		return false;
	}

}

function comparefromToEqual(one, two, msgone, msgtwo, textbox) {

	if (one.value == "" || two.value == "") {
		return false;
	}
	var lhd = one.value.split("/");
	var ahd = two.value.split("/");

	var lastHDate = new Date(lhd[1] + "/" + lhd[0] + "/" + lhd[2])
	var adjToDate = new Date(ahd[1] + "/" + ahd[0] + "/" + ahd[2]);

	if (lastHDate > adjToDate) {
		alert("Please select " + msgtwo + " Date grater then the " + msgone
				+ " Date");
		textbox.value = "";
		textbox.focus();
		return false;
	}

}
//5MB - 5242880
//2MB - 2097152
// 1MB - 1048576
// 512KB - 524288
// 256KB - 262144
// 128KB - 131072

var validFileTypes = [ "pdf", "jpg", "jpeg" ];
function validateUploadDocument(fileObj){
	
	if(fileObj!=null && fileObj!="undefined" && fileObj!=""){
		
		var source = fileObj.value;
		var errstr = '';
		var ext = source.substring(source.lastIndexOf(".") + 1, source.length).toLowerCase();
		for ( var i = 0; i < validFileTypes.length; i++) {
			errstr = 'T';
			if (validFileTypes[i] == ext) {
				errstr = 'F';
				break;
			}
		}
		
		if(errstr == 'T' || parseInt(fileObj.files[0].size) > parseInt(5242880)){
			alert("That is not a valid file.\nPlease upload a file with an extension of one of the following:\n\n"
					+ validFileTypes.join(", ") +" and the size should be less than 5MB.");
			fileObj.value="";
			return false;
		}
	}
}
var fileSizes = {
	MB200 : [209715200,'200MB'],	
	MB5 : [5242880,'5MB'],
	MB2 : [2097152,'2MB'],
	MB1 : [1048576,'1MB'],
	KB512 : [524288,'512KB'],
	KB256 : [262144,'262144'],
	KB128 : [131072,'128KB']
}
function validateFile(fileObj,formats,maxSize = fileSizes.KB128,minSize = 1){
	
	if(fileObj!=null && fileObj!="undefined" && fileObj!=""){
		var source = fileObj.value;
		var errstr = '';
		var ext = source.substring(source.lastIndexOf(".") + 1, source.length).toLowerCase();
		for ( var i = 0; i <= formats.length-1; i++) {
			errstr = 'T';
			if (formats[i] == ext) {
				errstr = 'F';
				break;
			}
		}
		
		if(errstr == 'T' || parseInt(fileObj.files[0].size) > parseInt(maxSize[0])){
			alert("That is not a valid file.\nPlease upload a file with an extension of one of the following:\n\n"
					+ formats.join(", ") +" and the size should be less than "+maxSize[1]+".");
			fileObj.value="";
			return false;
		}
	}
}

function validateFileNew(fileObj,formats,fileSize,minSize = 1){
	if(fileObj!=null && fileObj!="undefined" && fileObj!=""){
		var source = fileObj.value;
		var errstr = '';
		var ext = source.substring(source.lastIndexOf(".") + 1, source.length).toLowerCase();
		for ( var i = 0; i <= formats.length-1; i++) {
			errstr = 'T';
			if (formats[i] == ext) {
				errstr = 'F';
				break;
			}
		}
		
		if(errstr == 'T' || parseInt(fileObj.files[0].size) > parseInt(fileSize)){
			alert("That is not a valid file.\nPlease upload a file with an extension of one of the following:\n\n"
					+ formats.join(", ") +" and the size should be less than "+((parseInt(fileSize)/1024)/1024) +"MB.");
			fileObj.value="";
			return false;
		}
	}
}

