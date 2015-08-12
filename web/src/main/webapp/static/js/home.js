var hasLoadedAll=false;
var isLoading=false;
var pageIndex=0;
var pageSize=10;

$(function(){
	$(window).scroll(function () {
		if(!hasLoadedAll){
			var scrollTop = $(window).scrollTop();
	        if ($(document).height()-($(window).scrollTop()+$(window).height())<200){
				if(!isLoading){
	                //滚动到最下方
	                pageIndex++;
	                getMoreRecommendations();
				}
	        }
		}
    });
});

// 获取更多
function getMoreRecommendations(){
	var url='http://localhost:8080/web/recommendation/more?pageIndex='+pageIndex;
    $.ajax({
        // 请求类型
        type: 'GET',
        url: url,
       	beforeSend: function(request){
       		isLoading=true;
       	},
        success: function(data){// 请求成功后的回调函数
        	isLoading=false;
        	//$("#loading").hide();
        	if(data&&data.data){
	        	addMore(data.data);
	        	if(data.data.length<pageSize){
	        		hasLoadedAll=true;// 已加载全部
	        	}
        	}	
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        	//$("#loading").hide();
        	pageIndex--;
            toastAjaxError(XMLHttpRequest.status);
            isLoading=false;
        }
    });	
}

// 模板添加更多
function addMore(data){
    var dom=[
    '{{each}}',
    	'<tr>',
			'<td>{{$value.createTime}}</td>',
			'{{if $value.upsDowns<0 }}',
				'<td class="text-success">{{$value.upsDowns}}</td>',
			'{{ else if $value.upsDowns<10 }}',
				'<td class="text-danger">{{$value.upsDowns}}</td>',
			'{{ else }}',
				'<td><span class="label label-danger">{{$value.upsDowns}}</span></td>',
			'{{/if}}',
			'{{if $value.szUpsDowns<0 }}',
				'<td class="text-success">{{$value.szUpsDowns}}</td>',
			'{{ else if $value.szUpsDowns<10 }}',
				'<td class="text-danger">{{$value.szUpsDowns}}</td>',
			'{{ else }}',
				'<td><span class="label label-danger">{{$value.szUpsDowns}}</span></td>',
			'{{/if}}',
			'<td>',
				'{{if $value.ps }}',
					'<span class="label label-danger">{{$value.ps}}</span>',
				'{{/if}}',
			'</td>',
			'<td>{{$value.stocks}}</td>',
		'</tr>',
    '{{/each}}'
    ].join("");
    var render=template.compile(dom);
    $('#contentTable').append(render(data));
}