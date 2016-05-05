<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="content_main">
	<div style="float:left;width:700px;height:115px;margin:10px;">
		<img src="../images/customer/topimg.jpg" width="670" height="115"/>
	</div>
	<div style="float:left;width:700px;height:20px;margin:10px;">
		<img src="../images/customer/c_title01.gif" width="225" height="18"/>
	</div>
	<form name="service_new_form" method="post" target="exec_iframe" action="${ctxRoot }customer/smsRequest.htm">
	<input type="hidden" name="mode" value="new"/>
	<input type="hidden" name="mjcd" value="DI"/>
	<table class="service_new_table">
		<caption><img src="../images/customer/del.gif" width="142" height="33"/></caption>
		<thead>
		<tr>
			<th colspan="2"></th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<th>������û�� �̸�</th>
			<td><input type="text" name="name" id="name" value="${login_name }"/></td>
		</tr>
		<tr>
			<th>������ ��ȭ��ȣ</th>
			<td><input type="text" class="form_03" style="width:50px" name="htrg"   id="htrg"   maxlength="3" value="064"/> - 
				<input type="text" class="form_03" style="width:50px" name="htel_1" id="htel_1" maxlength="4" value=""/> - 
				<input type="text" class="form_03" style="width:50px" name="htel_2" id="htel_2" maxlength="4" value=""/></td>
		</tr>
		<tr>
			<th>�������ɹ�ȣ</th>
			<td><input type="text" class="form_03" style="width:50px" name="mtrg"   id="mtrg"   maxlength="3" value=""> - 
				<input type="text" class="form_03" style="width:50px" name="mtel_1" id="mtel_1" maxlength="4"> - 
				<input type="text" class="form_03" style="width:50px" name="mtel_2" id="mtel_2" maxlength="4"></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
			<th colspan="2"></th>
		</tr>
		</tfoot>
	</table>
	<table class="service_new_table">
		<caption><img src="../images/customer/product.gif" width="120" height="33"/></caption>
		<thead>
		<tr>
			<th colspan="2"></th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<th rowspan="3">������ġ�ּ�</th>
			<td>
				<ul>
					<li style="float:left;padding-right:5px;padding-top:2px;"><input name="zipcode" id="zipcode" type="text" class="form_03" size="7" readonly="readonly"/></li> 
					<li style="float:left;"><a href="#" onclick="javascript:searchZipcode('service_new_form');"><img src="${ctxRoot }images/user/zipcode_btn.gif" width="87" height="22" alt="������ȣ�˻�" /></a></li>
				</ul>
			</td>
		</tr>
		<tr>
			<td>
				<input type="text" class="form_03" style="width:200px" name="address1" id="address1" value="" readonly="readonly"/>
			</td>
		</tr>
		<tr>
			<td>
				�������ּ� <input type="text" class="form_03" style="width:180px" name="address2" id="address2" value=""/>
			</td>
		</tr>
		<tr>
			<th>��ǰ����</th>
			<td>
				<input type="radio" name="tigb_1" value="TV" onclick="select_tigb(this)" checked="checked"/> <font color="blue">��۽�û</font>
				<input type="radio" name="tigb_1" value="ISP" onclick="select_tigb(this)"/> <font color="blue">���ͳݰ���</font>
				<input type="radio" name="tigb_1" value="SUMM" onclick="select_tigb(this)"/> <font color="blue">���ջ�ǰ</font>
				<input type="radio" name="tigb_1" value="PRO" onclick="select_tigb(this)"/> <font color="blue">KCTV�������ܼ���</font>
			</td>
		</tr>
		<tr id="tr_tigb_1">
			<th>��۱���</th>
			<td>
				<input type="radio" name="chgb" value="DTV" checked="checked"/> �����й��
				<input type="radio" name="chgb" value="ATV"/> �Ƴ��α׹��
			</td>
		</tr>
		<tr id="tr_tigb_2" style="display:none;">
			<th>���ͳݱ���</th>
			<td>
				<input type="radio" name="chgb2" value="NET" checked="checked"/> �ʰ������ͳ�
				<input type="radio" name="chgb2" value="PHO"/> ���ͳ���ȭ
				<input type="radio" name="chgb2" value="EYE"/> DV����
				<input type="radio" name="chgb2" value="CTV"/> ����ƮCCTV
			</td>
		</tr>
		<tr id="tr_tigb_3" style="display:none;">
			<th>���ջ�ǰ����</th>
			<td>
				<input type="radio" name="chgb3" value="SDD" checked="checked"/> ������TV + �ʰ������ͳ�
				<input type="radio" name="chgb3" value="STT"/> ������TV + �ʰ������ͳ� + ���ͳ���ȭ<br/>
				<input type="radio" name="chgb3" value="SQQ"/> ������TV  + �ʰ������ͳ� + ���ͳ���ȭ + DV����
			</td>
		</tr>
		<tr>
			<th>���������</th>
			<td>
				<select name="p_year" tabindex="1">
					<c:forEach var="i" begin="${year }" end="${year+1 }">
					<option value="${i }"<c:if test="${year==i }"> selected="selected"</c:if>>${i }</option>
					</c:forEach>
				</select> ��
				<select name="p_month" tabindex="2">
					<c:forEach var="i" begin="1" end="12">
					<option value="${i }"<c:if test="${month==i }"> selected="selected"</c:if>>${i }</option>
					</c:forEach>
				</select> ��
				<select name="p_day" tabindex="3">
					<c:forEach var="i" begin="1" end="31">
					<option value="${i }"<c:if test="${day==i }"> selected="selected"</c:if>>${i }</option>
					</c:forEach>
				</select> ��
			</td>
		</tr>
		<tr>
			<th>��Ÿ��û����</th>
			<td><textarea name="memo" class="form_03" maxlength="2000"></textarea></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
			<th colspan="2"></th>
		</tr>
		</tfoot>
	</table>
	<div class="service_new_btn">
		<ul>
			<li><input type="image" src="../images/customer/ok_btn.gif" width="55" height="21"/></li>
			<li><a href="#" onclick="document.service_new_form.reset();"><img src="../images/customer/esc_btn.gif" width="55" height="21"/></a></li>
		</ul>
	</div>
	</form>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$("form").submit(function(){
		if(!chkInputEmpty("#name","'������û���̸�'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#htrg","'������ ��ȭ��ȣ'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#htel_1","'������ ��ȭ��ȣ'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#htel_2","'������ ��ȭ��ȣ'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#mtrg","'�������ɹ�ȣ'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#mtel_1","'�������ɹ�ȣ'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#mtel_2","'�������ɹ�ȣ'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#zipcode","'������ġ�ּ�'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#address1","'������ġ�ּ�'�� �Է����ּ���.")) return false;
		if(!chkInputEmpty("#address2","'�������ּ�'�� �Է����ּ���.")) return false;
		return true;
	});
});
function chk_form(){
	return false;
}
function select_tigb(obj)
{
	var f = document.service_new_form;
	if( obj.value == "TV") {
		document.all["tr_tigb_1"].style.display = "block";
		document.all["tr_tigb_2"].style.display = "none"; 
		document.all["tr_tigb_3"].style.display = "none"; 
	}else if( obj.value == "ISP"){
		document.all["tr_tigb_1"].style.display = "none"; 
		document.all["tr_tigb_2"].style.display = "block";
		document.all["tr_tigb_3"].style.display = "none";
	}else if( obj.value == "SUMM"){
		document.all["tr_tigb_1"].style.display = "none"; 
		document.all["tr_tigb_2"].style.display = "none"; 
		document.all["tr_tigb_3"].style.display = "block";
	}else if( obj.value == "PRO"){
		document.all["tr_tigb_1"].style.display = "none";
		document.all["tr_tigb_2"].style.display = "none"; 
		document.all["tr_tigb_3"].style.display = "none"; 
	}

	f.tigb_1.value = obj.value;
}
</script>