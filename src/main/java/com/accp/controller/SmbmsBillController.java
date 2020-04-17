package com.accp.controller;


import com.accp.entity.Pager;
import com.accp.entity.SmbmsBill;
import com.accp.entity.SmbmsProvider;
import com.accp.service.SmbmsBillService;
import com.accp.service.SmbmsProviderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


/**
 * 功能描述：
 *
 * @Author: xiaoke
 * @Date:2018/10/19 16:50
 * @Description:
 */

@Controller
public class SmbmsBillController {

      @Resource
       private SmbmsBillService smbmsBillService;
       @Resource
       private SmbmsProviderService smbmsProviderService;

       //订单查询
      @RequestMapping("/billlist")
       public String billList(SmbmsBill smbmsBill, SmbmsProvider smbmsProvider,
                              @RequestParam(defaultValue = "1") Integer pageNo,
                              @RequestParam(defaultValue = "5") Integer pageSize,
                              HttpServletRequest request){
          Pager<SmbmsBill> billPager = smbmsBillService.billList(smbmsBill, pageNo, pageSize);
          Pager<SmbmsProvider> providerPager = smbmsProviderService.providerList(smbmsProvider, 1, 99999);
          request.setAttribute("billPager",billPager);
          request.setAttribute("providerPager",providerPager);
          request.setAttribute("providerId",smbmsBill.getProviderId());
           request.setAttribute("productName",smbmsBill.getProductName());
           request.setAttribute("isPayment",smbmsBill.getIsPayment());
          return "billlist";
       }

       //供应商查询
        @RequestMapping("/providerlist")
        public String providerList(SmbmsProvider smbmsProvider,
                                    @RequestParam(defaultValue = "1") Integer pageNo,
                                    @RequestParam(defaultValue = "5") Integer pageSize,
                                     HttpServletRequest request){
            Pager<SmbmsProvider> providerPager = smbmsProviderService.providerList(smbmsProvider,pageNo,pageSize);
             request.setAttribute("providerPager",providerPager);
             request.setAttribute("proCode",smbmsProvider.getProCode());
             request.setAttribute("proName",smbmsProvider.getProName());
            return "providerlist";
        }
       //订单详情
       @RequestMapping("/billview")
       public String billview(Integer id, HttpServletRequest request){
           SmbmsBill smbmsBill = smbmsBillService.viewBill(id);
           request.setAttribute("smbmsBill",smbmsBill);
           return "billview";
       }





}

