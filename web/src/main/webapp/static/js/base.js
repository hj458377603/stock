
$(".require-validate").on("blur", function() {
    var tgt = this;
    var val = $.trim(tgt.value);
    var tgtName = "";
    if (val.length == 0) {
        showMessageOnSpot(tgt, "不能为空");
        return
    }
    if ($(tgt).attr("name") == "email") {
        tgtName = "邮箱";
        if (!isEmail(val)) {
            showMessageOnSpot(tgt, "请输入正确的邮箱");
            return
        }else{
        	$(tgt).tooltip("destroy");
        }
    }
    if ($(tgt).attr("name") == "pwd") {
        tgtName = "密码";
        if (val.length < 6) {
            showMessageOnSpot(tgt, "密码长度不小于6位");
            return
        }else{
        	$(tgt).tooltip("destroy");
        }
    }
    var data = {};
    data[$(tgt).attr("name")] = tgt.value;
    var regBtn = $("#register_submit");
    if(tgt.getAttribute("data-url")!=null){
	    $.getJSON(tgt.getAttribute("data-url"), data, function(response) {
	        if (!response) {
	            $(tgt).tooltip("destroy");
	            regBtn.removeClass("disabled")
	        } else {
	            showMessageOnSpot(tgt, tgtName + "已经被使用")
	        }
	    });
    }
    regBtn.text("立即注册")
})

function isEmail(email) {
	var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
	return reg.test(email)
}

function showMessageOnSpot(tgt, msg, pos){
    if (!pos) {
        pos = "auto right"
    }
    $(tgt).tooltip("destroy").tooltip({
        title: msg,
        trigger: "manual",
        placement: pos,
        container: "body"
    }).tooltip("show")
}