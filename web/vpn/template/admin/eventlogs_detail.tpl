<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>{{$title}}</title>
<meta name="generator" content="editplus">
<meta name="author" content="nuttycoder">
<link href="{{$template_root}}/all_purpose_style.css" rel="stylesheet" type="text/css" />
<script src="./template/admin/cssjs/jscal2.js"></script>
<script src="./template/admin/cssjs/cn.js"></script>
<link type="text/css" rel="stylesheet" href="./template/admin/cssjs/jscal2.css" />
<script language="JavaScript">
window.onload=function(){
obj=new Date();
d=obj.getFullYear()+'-';
d+=(obj.getMonth()+1)<10?'0'+(obj.getMonth()+1):obj.getMonth()+1;
d+='-'+obj.getDate()+' '+obj.getHours()+':'+obj.getMinutes()+':'+obj.getSeconds();
form.dt.value=d;
}
</script>
</head>

<body>
<style type="text/css">
a {
    color: #003499;
    text-decoration: none;
} 
a:hover {
    color: #000000;
    text-decoration: underline;
}
</style>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td valign="middle" class="hui_bj" >
	<div class="menu">
	<ul>
	<li class="me_a"><img src="{{$template_root}}/images/an1.jpg" align="absmiddle"/><a href="#">详细信息</a><img src="{{$template_root}}/images/an3.jpg" align="absmiddle"/></li>
	</ul>
	</div>
</td>
</tr>
 <tr>
<td   width=100%>


	<table width=100%  class="BBtable">
	{{assign var="trnumber" value=0}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
		 <TD align="right" class=main_list_td1  width=30% >服务器：</TD>
         <TD align="left" class=main_list_td1>
     						 {{$detail.host}}
         </TD>
	  	
	</tr>

	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                    <TD align="right" class=main_list_td1>探针：</TD>
                    <TD align="left" class=main_list_td1>
						{{$detail.logserver}}
					</TD>
	</tr>
	
	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                   <TD align="right" class=main_list_td1>时间：</TD>
                    <TD align="left" class=main_list_td1>
						{{$detail.datetime}}
					</TD>
	</tr>

	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                   <TD align="right" class=main_list_td1>级别：</TD>
                    <TD align="left" class=main_list_td1>
						{{$detail.msg_level}}
					</TD>
	</tr>
	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                    <TD align="right" class=main_list_td1>程序：</TD>
                    <TD align="left" class=main_list_td1>
                   		{{$detail.facility}}
                      </TD>
	</tr>
	
	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                    <TD align="right" class=main_list_td1>日志级别：</TD>
                    <TD align="left" class=main_list_td1>
                   		{{$detail.priority}}
                      </TD>
	</tr>
	
		
	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                    <TD align="right" class=main_list_td1>事件：</TD>
                    <TD align="left" class=main_list_td1>
                   		{{$detail.event}}
                      </TD>
	</tr>
	
		
	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                    <TD align="right" class=main_list_td1>日志内容：</TD>
                    <TD align="left" class=main_list_td1>
                   		{{$detail.msg}}
                      </TD>
	</tr>
	  <FORM method=post id=form1 action=admin.php?controller=admin_eventlogs&action=save&t=eventlogs&f=status&id={{$id}}>
	
	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                       <TD align="right" class=main_list_td1>状态：</TD>
                    <TD align="left" class=main_list_td1>
                   		{{if $detail.status == 1}}已处理	
						{{else}}未处理
						{{/if}}
                      </TD>
	</tr>
	</FORM>
	
	
  <FORM method=post id=form2 action=admin.php?controller=admin_eventlogs&action=save&t=eventlogs&f=desc&id={{$id}}>
		
	{{assign var="trnumber" value=$trnumber+1}}
	<tr {{if $trnumber % 2 == 0}}bgcolor="f7f7f7"{{/if}}>
                       <TD align="right" class=main_list_td1>描述：</TD>
                    <TD align="left" class=main_list_td1>
                    		<textarea style="width:300px;height:120px;"	 name="desc"  >{{$detail.desc}}</textarea>
                      </TD>
	</tr>
</FORM>

	<tr>
	<td colspan='2' align="center">
		<input type=button  value="处理" {{if $detail.status == 1}}disabled{{/if}}   class="bnnew2" onClick="JavaScript: document.getElementById('form1').submit();" >
 		<input type=button  value="确定"   class="bnnew2" onClick="JavaScript: document.getElementById('form2').submit();" >
	
		<input type=button  value="关闭" onclick="window.close();"  class="bnnew2" >
	</td>
	</tr>
	</table>
</td>


</tr>
</table>

 <script type="text/javascript">



function my_confirm(str){
	if(!confirm(str + "？"))
	{
		window.event.returnValue = false;
	}
}



</script>
</body>

</html>



