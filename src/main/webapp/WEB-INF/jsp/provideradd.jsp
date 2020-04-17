<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>供应商管理页面 >> 供应商添加页面</span>
        </div>
        <div class="providerAdd">
           <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/jsp/inseProvider.action">
			<input type="hidden" name="method" value="add">
               <input type="hidden" name="smbmsProvider.createdBy" value="${userSession.id }">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="proCode">供应商编码：</label>
                    <input type="text" name="smbmsProvider.proCode" id="proCode" value="">
					<!-- 放置提示信息 -->
					<font color="red"></font>
                </div>
                <div>
                    <label for="proName">供应商名称：</label>
                   <input type="text" name="smbmsProvider.proName" id="proName" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="proContact">联系人：</label>
                    <input type="text" name="smbmsProvider.proContact" id="proContact" value="">
					<font color="red"></font>

                </div>
                <div>
                    <label for="proPhone">联系电话：</label>
                    <input type="text" name="smbmsProvider.proPhone" id="proPhone" value="">
					<font color="red"></font>
                </div>
                <div>
                    <label for="proAddress">联系地址：</label>
                    <input type="text" name="smbmsProvider.proAddress" id="proAddress" value="">
                </div>
                <div>
                    <label for="proFax">传真：</label>
                    <input type="text" name="smbmsProvider.proFax" id="proFax" value="">
                </div>
                <div>
                    <label for="proDesc">描述：</label>
                    <input type="text" name="smbmsProvider.proDesc" id="proDesc" value="">
                </div>
                <div class="providerAddBtn">
                    <input type="button" name="add" id="add" value="保存">
					<input type="button" id="back" name="back" value="返回" >
                </div>
            </form>
     </div>
</div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/provideradd.js"></script>