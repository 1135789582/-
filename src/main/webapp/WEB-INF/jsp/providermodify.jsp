<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

  <div class="right">
      <div class="location">
          <strong>你现在所在的位置是:</strong>
          <span>供应商管理页面 >> 供应商修改页</span>
      </div>
      <div class="providerAdd">
          <form id="providerForm" name="providerForm" method="post" action="${pageContext.request.contextPath }/jsp/updaProvider.action">
              <input type="hidden" name="smbmsProvider.id" value="${smbmsProvider.id }"/>
              <input type="hidden" name="smbmsProvider.modifyBy" value="${userSession.id }">
              <!--div的class 为error是验证错误，ok是验证成功-->
              <div class="">
                  <label for="proCode">供应商编码：</label>
                  <input type="text" name="smbmsProvider.proCode" id="proCode" value="${smbmsProvider.proCode }" readonly="readonly">
              </div>
              <div>
                  <label for="proName">供应商名称：</label>
                 <input type="text" name="smbmsProvider.proName" id="proName" value="${smbmsProvider.proName }">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="proContact">联系人：</label>
                  <input type="text" name="smbmsProvider.proContact" id="proContact" value="${smbmsProvider.proContact }">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="proPhone">联系电话：</label>
                  <input type="text" name="smbmsProvider.proPhone" id="proPhone" value="${smbmsProvider.proPhone }">
			<font color="red"></font>
              </div>
              
              <div>
                  <label for="proAddress">联系地址：</label>
                  <input type="text" name="smbmsProvider.proAddress" id="proAddress" value="${smbmsProvider.proAddress }">
              </div>
              
              <div>
                  <label for="proFax">传真：</label>
                  <input type="text" name="smbmsProvider.proFax" id="proFax" value="${smbmsProvider.proFax }">
              </div>
              
              <div>
                  <label for="proDesc">描述：</label>
                  <input type="text" name="smbmsProvider.proDesc" id="proDesc" value="${smbmsProvider.proDesc }">
              </div>
              <div class="providerAddBtn">
                  <input type="button" name="save" id="save" value="保存">
				  <input type="button" id="back" name="back" value="返回" >
              </div>
          </form>
      </div>
  </div>
</section>
<%@include file="/jsp/common/foot.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/providermodify.js"></script>