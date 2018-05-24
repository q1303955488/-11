<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="eip" uri="http://www.ihighest.com/eip-taglib"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="../../../common/include.jsp"></jsp:include>
 <link rel="stylesheet" href="b/css/weixin/weixin.css"/>
  <link rel="stylesheet" href="b/css/weixin/sweet-alert.css"/>
   <script src="b/js/weixin/dropzone.js"></script>
    <script src="b/js/weixin/bootstrap-growl.js"></script>
         <script src="b/js/weixin/menu.js"></script>
          <script src="b/js/weixin/sweet-alert.js"></script>
          <script src="b/js/weixin/prettify.js"></script>
<div class="main_content">

	<!-- Start -->
						<nav>
							<div id="jCrumbs" class="breadCrumb module">
								<ul>
									<li>
										<a href="javascript:eip.global_goto('main');">
											<i class="icon-home"></i>
										</a>
									</li>
									<li>
										<a href="javascript:eip.global_goto('main');">首页</a>
									</li>
									<li>
										<a href="javascript:eip.global_goto('${currentComponent.B014 }');" title="${currentComponent.B016 }">${currentComponent.B012 }</a>
									</li>
									<li>添加  </li>
									
								</ul>
							</div>
						</nav>
	
                

	
	
						<div  class="edit_area " style="float: left;">
							<form class=" form-horizontal well form_validation" style="width:100%;height: 100%">
								<fieldset>
									<div class="app-preview" style="width: 100%;height:100%;float:left;box-sizing:content-box;position: relative;">
					                    <form class="add ">
					                        <div class="app-header"></div>
					                        <div class="app-body">
					                            <div class="app-top"><h1>${was.B010 }</h1></div>
					                            <div class="app-content">
					                                <div class="app-item app-first" style="position: relative;"">
					                                    <div class="app-msg">
					                                      	 <img src="b/img/noimage.png" class="first_img"  style="width: 92%;height: 140px;margin:10px" alt=""/>
					                                    	<h4 id="div" class="app-msg-title msg_title"> </h4>
					                                    </div>
					                                   <div class="app-operation"><a id="aToClick" href="javascript:void(0);" class="app-edit dianji"><i  class="fa fa-edit"></i></a></div>
					                                     <input class="C001"  name="C001[]" value="" type="hidden">
					                                    <input class="tuwen_title"  name="tuwen_title[]" value="" type="hidden">
					                                    <input class="tuwen_con"  name="tuwen_con[]" value="" type="hidden">
					                                    <input  class="tuwen_img up-img no-preview dz-clickable dz-started" name="tuwen_img[]"  value="" type="hidden">
					                                    <input class="tuwen_content" name="tuwen_content[]" value="" type="hidden">
					                                    <input class="tuwen_url"  name="tuwen_url[]" value="" type="hidden">
					                                    <input  class="tuwen_isshow" name="tuwen_isshow[]" value="" type="hidden"> 
					                                </div>
					                            </div>
					                        </div>
					                        <div class="app-add-item"><a href="javascript:void(0);" class="add-item" id="add1"><i
					                                class="fa fa-plus"></i>
					                            		新增
					                        </a></div>
					                    </form>
					                </div>
					              </fieldset>
							</form>
						</div>
                
<!--                 left -->
			    <div class="app-sidebar" style="margin-top: 240px;">
                                <div class="arrow"></div>
                                <div class="app-edit-wrap" style="">
                                    <form action="" class="form-horizontal form-horizontal well form_validation" style="" id="twsc">
                                    	                     
                                     <div class="control-group">
					<label class="control-label">标题 </label>
					<div class="controls ">
						<input type="text"   id="B014" style="width:400px" required="required" />
						<span class="f_req">*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">作者 </label>
					<div class="controls ">
						<input type="text"  id="B015"  value="管理员" required="required" />
					</div>
				</div>
				
				 
				
				<div class="control-group">
					<label class="control-label">封面图片 </label>
					<div data-provides="fileupload" class="fileupload fileupload-new controls">
						<input type="hidden">
						<div style="width: 200px; height: 150px;" class="fileupload-new thumbnail">
							<img src="b/img/noimage.png" alt="暂无图片" id="duotu_img">
						</div>
						<div style="max-width: 200px; max-height: 150px; line-height: 0px;" class="fileupload-preview fileupload-exists thumbnail"></div>
						<div>
							<span class="btn btn-file">
								<span class="fileupload-new">选择图片</span>
								<span class="fileupload-exists">换一张</span>
								<input type="file" name="B017_image" id="B017_image"  >
							</span>
							<span class="f_req">*(图片建议尺寸：360 x 200像素)</span>
						</div>
						
					</div>
				</div>
				<div class="control-group">
					<label class="control-label"> </label>
					<div class="controls checkbox ">
							<input type="checkbox"  id="duotu_isshow"   required="required" />封面图片显示在正文中
					</div>
				</div>
				
	 
				<div class="control-group">
					<label class="control-label">摘要 </label>
					<div class="controls ">
						<input type="text"  id="B018"  style="width:400px"   placeholder="选填  ，如果不填写默认抓取正文前54个字 "/>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">正文 </label>
					<div class="controls ">
						<script id="B020"   type="text/plain"></script>
					</div>
				</div>
                                       
                                    </form>
                                </div>
                                <div class="form-actions">
								    <button class="btn btn-primary" type="button" id="btn_submit" onclick="eipForm.ajax_submit();">
								        <i class="icon-white icon-hdd"></i>
								    			    保存
								    </button>
								    <button class="btn" type="button" onclick="eip.global_goto('${currentComponent.B014 }')">
								        <i class=" icon-chevron-left"></i>
								    		    返回
								    </button>
								</div>
                            </div>
						</div>
<input id="index" value="2" type="hidden">
<style>
	
</style>
<script type="text/javascript">
   		 $(function () {    
   			 $("#B017_image").live("change",function(){//  
   	        	var data = {};
   	    		$("#twsc :input").not(':button, :submit, :reset, :checkbox, :radio').each(function() {
   	    			if (this.type == 'select-multiple') {
   	    				var vald = "";
   	    				$("li[class='ms-elem-selection ms-selected']").each(function() {
   	    					vald += this.id.replace(/\__/g, "-").replace(/\_/g, "").replace("-selection", "") + ",";
   	    				});
   	    				data[this.name] = vald.substring(0, vald.length - 1);
   	    			} else if (data[this.name]) {
   	    				var vArr = [];
   	    				if (Object.prototype.toString.call(data[this.name]) === '[object Array]') {
   	    					vArr = data[this.name];
   	    				} else {
   	    					vArr[vArr.length] = data[this.name];
   	    				}
   	    				vArr[vArr.length] = this.value.replace(/\"/g, "&quot;").replace(/\'/g, "&#39;");
   	    				data[this.name] = vArr;
   	    			} else {
   	    				data[this.name] = this.value.replace(/\"/g, "&quot;").replace(/\'/g, "&#39;");
   	    			}
   	    		});
   	    		var index = $('#index').val();
   	       	  $.ajaxFileUpload({
   	    			url :"${currentComponent.B014}/uploadImage",
   	    			type : 'post',
   	    			data : data,
   	    			async:false,
   	    			fileElementId : 'B017_image',
   	    			dataType : 'json',
   	    			success : function(data, status) {
   	    				//eip.signal_message("上传成功");
   	                          if (index == 0) {
   	                               $('.first_img').show();
   	                               $('.first_img').attr('src',  "${APP_SETTING['app.pic_url'] }/" + data.data.B017);
   	                               //$('.tuwen_img').eq(index).val(data.data.B017);
   	                               $('.C001').eq(index-1).val(data.data.C001);
   	                           } else {
   	                               $('.app-msg-pic').eq(index-1).html("<img src=${APP_SETTING['app.pic_url'] }/" + data.data.B017 + ">")
   	                               //$('.tuwen_img').eq(index-1).val(data.data.B017);
   	                               $('.C001').eq(index).val(data.data.C001);
   	                           }
   	                          
   	                           $('.tuwen_img').eq(index).val( data.data.B017);
   	                           //$(file.previewTemplate).remove();
   	    				
   	    			},
   	    			error : function(data, status, e) {
   	    				//eip.signal_message(data.message);
   	    			}
   	    		});
   	           
   	    }); 
   		   
   			UE.delEditor('B020');
   			 var ue = UE.getEditor('B020');
   		        ue.addListener("blur",function(){
   		        $('.tuwen_content').eq($('#index').val()).val(UE.getEditor('B020').getContentTxt());
   		        })
   		        
   			 $('.baoc').on('click',function(){
   	            $('.add').submit();
   	        });
   	        $('.add').submit(function(e){
   	            e.preventDefault();
   	            $.post("${currentComponent.B014}/save",
   	                    $(this).serialize(),
   	                    function(msg){
   	                    },'json');
   	        });
   			 
   		$('.add-item').on('click', function () {
        	
        	var str = '',
        	appNum = $('.app-item').size();
            str += '<div class="app-item">';
            str += '<div class="app-msg">';
            str += '<h4 class="app-msg-title appmsg_item">标题</h4>';
            str += '<div class="app-msg-pic"><p>封面图片</p></div>';
            str += '</div>';
            str += '<div class="app-operation">';
            str += '<a href="javascript:;" class="app-edit">';
            str += '<i class="fa fa-edit"></i></a>';
            str += '<a href="javascript:;" class="app-delete m-l-15 text-danger">';
            str += '<i class="fa fa-trash"></i></a>';
            str += '</div>';
            str += "<input class='C001'  name='C001[]' value='' type='hidden'> <input type='hidden' class='tuwen_title' name='tuwen_title[]'value='' /><input type='hidden' class='tuwen_con' required='required' name='tuwen_con[]' value='' /><input type='hidden'    class='tuwen_img tuwen_img ' name='tuwen_img[]' value='' /><input type='hidden' class='tuwen_content' name='tuwen_content[]' value='' /><input type='hidden' class='tuwen_url' name='tuwen_url[]' value='' /><input type='hidden' class='tuwen_isshow' name='tuwen_isshow[]' value='0' />"
//             str += "  <input id='B014' placeholder='请输入标题'class='form-control-k tuwen_title' name='weixinNews.B014' type='text'>  <input type='text' name='weixinNews.B015' id='B015' required='required' style='display: none;'/> <input type='file' name='B017_image' class='tuwen_img up-img no-preview dz-clickable dz-started' id='B017_image'><input type='text' name='weixinNews.B018' id='B018' required='required' /> <textarea name='actcontent' class='tuwen_content' style='height: 250px; display: none;'></textarea>";
            str += '</div>';
            

            if (appNum < 8) {
                $('.app-content').append(str);
            } else {
                sweetAlert({title: '您最多只可以加入8条图文消息', text: '', type: "warning", timer: 2000});
            }
        });

   		
   		
        $(document).on('click', '.app-delete', function () {
        	var $this = $(this);
            var appIndex = $(this).parent('div').parent('.app-item').index();
            var hh = (parseInt($('.app-sidebar').css('margin-top')) -300) / 60;
            swal({
                title: "您确认要删除？",
                text: "",
                type: "info",
                showCancelButton: true,
                confirmButtonColor: "#AEDEF4",
                cancelButtonText: "取消",
                confirmButtonText: "确定",
                closeOnConfirm: false,
                closeOnCancel: true
            }, function (isConfirm) {
            	if (isConfirm) {
                    if (hh >= appIndex) {
                        appTop(parseInt(hh) - 1);
                    }
                    $this.parent('div').parent('.app-item').remove();
                    if (appIndex == $('#index').val()) {
                        msg_num = appIndex - 1;
                        $('#index').val(msg_num);
                        $('#B014').val($('.tuwen_title').eq(msg_num).val());
                        $('#B015').val($('.tuwen_con').eq(msg_num).val());
                        $('#B018').val($('.tuwen_url').eq(msg_num).val());
                        UE.getEditor('B020').setContent($('.tuwen_content').eq(msg_num).val(),false);
                        if($('.tuwen_img').eq(msg_num).val()==""){
//                         	$('.fileupload-exists').hide();
//                         	$('.fileupload-new').show();
                        	$('.fileupload-preview').children("img").attr('src', "b/img/noimage.png");
                        }else{
//                         	$('.fileupload-exists').hide();
//                         	$('.fileupload-new').show();
                        	$('.fileupload-preview').children("img").attr('src',  "${APP_SETTING['app.pic_url'] }/"+$('.tuwen_img').eq(msg_num).val());
                        }
                        if ($('.tuwen_isshow').eq(msg_num).val()=="checked") {
                            $('#duotu_isshow').prop('checked', true);
                        } else {
                            $('#duotu_isshow').prop('checked', false);
                        }
                    }
                    if (appIndex < $('#index').val()) {
                        $('#index').val(parseInt($('#index').val()) - 1);
                    }
                    sweetAlert({title: '删除成功', text: '', type: "success", timer: 1000});
                }

            });
        });
//         赋值
       var add =  $(document).on('click', '.app-edit', function () {
            var appEdit = $('.app-sidebar'),
                    appIndex = $(this).parent('div').parent('.app-item').index();
            var mm = $('#index').val();
             var msg_num = $(".app-edit").index($(this));
             
                 if ($('.tuwen_title').eq(mm).val() != '' && $('.tuwen_img').eq(mm).val() != '') {
                          $(".app-sidebar").css({
                              "margin-top": (msg_num - 1) * 65 + 305
                          });
                    $('#index').val(msg_num);
                    $('#B014').val($('.tuwen_title').eq(msg_num).val());
                    $('#B015').val($('.tuwen_con').eq(msg_num).val());
                    $('#B018').val($('.tuwen_url').eq(msg_num).val());
                    UE.getEditor('B020').setContent($('.tuwen_content').eq(msg_num).val(),false);
                    if($('.tuwen_img').eq(msg_num).val()==""){
//                     	$('.fileupload-exists').hide();
//                     	$('.fileupload-new').show();
                    	$('.fileupload-preview').children("img").attr('src', "b/img/noimage.png");
                    }else{
//                     	$('.fileupload-exists').hide();
//                     	$('.fileupload-new').show();
                    	$('.fileupload-preview').children("img").attr('src',  "${APP_SETTING['app.pic_url'] }/"+$('.tuwen_img').eq(msg_num).val());
                    }
                    if ($('.tuwen_isshow').eq(msg_num).val()=="checked") {
                        $('#duotu_isshow').prop('checked', true);
                    } else {
                        $('#duotu_isshow').prop('checked', false);
                    }
                    $('#index').val(appIndex);
                       appTop(appIndex);
                       
                       
                    }else{
                    	if ($('.tuwen_title').eq(mm).val() == '') {
                            sweetAlert({title: '请填写标题', text: '', type: "warning", timer: 2000});
                        }
                        if ($('.tuwen_img').eq(mm).val() == '') {
                            sweetAlert({title: '请上传图片', text: '', type: "warning", timer: 2000});
                        }
                    }
        });
     
        function appTop(index) {
            var appTop = 305 + index * 65,
                    appEdit = $('.app-sidebar');
            if (index == 0) {
                appEdit.css('margin-top', 245);
            } else {
                appEdit.css('margin-top', appTop);
            }
        };

        $(document).on('keyup', '#B014', function () {
            $('.tuwen_title').eq($('#index').val()).val($(this).val());
            var index = $('#index').val();
            if (index == 0) {
                $('.msg_title').text($(this).val());
            } else {
                $('.appmsg_item').eq(parseInt(index) - 1).text($(this).val());
            }
        });

        $(document).on('keyup', '#B015', function () {
            $('.tuwen_con').eq($('#index').val()).val($(this).val());
        });
        
        $(document).on('keyup', '#B018', function () {
            $('.tuwen_url').eq($('#index').val()).val($(this).val());
        });
        
        $(document).on('keyup', '#B020', function () {
        	alert($("#B020").val());
            $('.tuwen_content').eq($('#index').val()).val($("#B020").val());
        });
        $(document).on('change', '#duotu_isshow', function () {
        	if($("#duotu_isshow").attr("checked")=="checked"){
        		$('.tuwen_isshow').eq($('#index').val()).val("checked");
        	}else{
        		$('.tuwen_isshow').eq($('#index').val()).val("unchecked");
        	}
        	 
        });
        
        $('#index').val(0);
        appTop(0);
               
        

    });
</script>
 
