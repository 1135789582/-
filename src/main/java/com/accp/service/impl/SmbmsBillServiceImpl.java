package com.accp.service.impl;


import com.accp.entity.Pager;
import com.accp.entity.SmbmsBill;
import com.accp.mapper.SmbmsBillMapper;
import com.accp.service.SmbmsBillService;
import com.accp.util.MybatiUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


/*
 **
 * @Author: xiaoke
 * @Description:
 * @Date: Created in 9:12 2018/10/11
 * @Modified By:
*/



@Service("smbmsBillService")
public class SmbmsBillServiceImpl implements SmbmsBillService {

    @Resource
    private SmbmsBillMapper smbmsBillMapper;

    public Pager<SmbmsBill> billList(SmbmsBill smbmsBill, int pageNo, int pageSize) {

        int count = smbmsBillMapper.billCount(smbmsBill);
        Pager<SmbmsBill>billPager=new Pager<SmbmsBill>();
         billPager.setPageNo(pageNo);
         billPager.setPageSize(pageSize);
         billPager.setTotalRows(count);
         billPager.setTotalPage((billPager.getTotalRows()+pageSize-1)/pageSize);
        List<SmbmsBill> smbmsBills = smbmsBillMapper.billList(smbmsBill,(pageNo-1)*pageSize,pageSize);
         billPager.setDatas(smbmsBills);

        return billPager;
    }

    public SmbmsBill viewBill( Integer id) {

        SmbmsBill smbmsBill1 = smbmsBillMapper.viewBill(id);

        return smbmsBill1;
    }

    public String deleBill(Integer id) {

        int i = smbmsBillMapper.deleBill(id);

   /*  return JSON.toJSONString(i);*/

        return null;
    }

    public int insertBill(SmbmsBill smbmsBill) {

        int i = smbmsBillMapper.insertBill(smbmsBill);

        return i;
    }

    public int updateBill(SmbmsBill smbmsBill) {

        int i = smbmsBillMapper.updateBill(smbmsBill);

        return i;
    }


}

