<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

<div class="right">
     <div class="location">
         <strong>你现在所在的位置是:</strong>
         <span>订单管理页面 >> 订单添加页面</span>
     </div>
     <div class="providerAdd">
         <form id="billForm" name="billForm" method="post" action="${pageContext.request.contextPath }/jsp/addBill.action">
             <!--div的class 为error是验证错误，ok是验证成功-->
             <input type="hidden" name="method" value="add">
             <input type="hidden" name="smbmsBill.createdBy" value="${userSession.id }">
             <div class="">
                 <label for="billCode">订单编码：</label>
                 <input type="text" name="smbmsBill.billCode" class="text" id="billCode" value="">
				 <!-- 放置提示信息 -->
				 <font color="red"></font>
             </div>
             <div>
                 <label for="productName">商品名称：</label>
                 <input type="text" name="smbmsBill.productName" id="productName" value="">
				 <font color="red"></font>
             </div>
             <div>
                 <label for="productUnit">商品单位：</label>
                 <input type="text" name="smbmsBill.productUnit" id="productUnit" value="">
				 <font color="red"></font>
             </div>
             <div>
                 <label for="productCount">商品数量：</label>
                 <input type="text" name="smbmsBill.productCount" id="productCount" value="">
				 <font color="red"></font>
             </div>
             <div>
                 <label for="totalPrice">总金额：</label>
                 <input type="text" name="smbmsBill.totalPrice" id="totalPrice" value="">
				 <font color="red"></font>
             </div>
             <div>
                 <label >供应商：</label>
                 <select name="smbmsBill.providerId" id="providerId">
		         </select>
				 <font color="red"></font>
             </div>
             <div>
                 <label >是否付款：</label>
                 <input type="radio" name="smbmsBill.isPayment" value="1" checked="checked">未付款
				 <input type="radio" name="smbmsBill.isPayment" value="2" >已付款
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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/billadd.js"></script>