$(document).ready(function(){
	$("#form-cari").submit(function(){
		$("#kelas option[value='']").attr("disabled","disabled");
		$("#keyword option[value='']").attr("disabled","disabled");
		$("#jurusan option[value='']").attr("disabled","disabled");
		
		return true;
	});
});