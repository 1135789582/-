
package com.accp.service.impl;


import com.accp.entity.Pager;
import com.accp.entity.SmbmsProvider;
import com.accp.mapper.SmbmsProviderMapper;
import com.accp.service.SmbmsProviderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;




/**
 * @Author: xiaoke
 * @Description:
 * @Date: Created in 10:33 2018/10/11
 * @Modified By:
 */


@Service("smbmsProviderService")
public class SmbmsProviderServiceImpl implements SmbmsProviderService {

    @Resource
    private SmbmsProviderMapper smbmsProviderMapper;

    public Pager<SmbmsProvider> providerList(SmbmsProvider smbmsProvider, int pageNo, int pageSize) {

        int count = smbmsProviderMapper.providerCount(smbmsProvider);
        Pager<SmbmsProvider> providerPager=new Pager<SmbmsProvider>();
         providerPager.setPageSize(pageSize);
         providerPager.setPageNo(pageNo);
         providerPager.setTotalRows(count);
        providerPager.setTotalPage((providerPager.getTotalRows()+pageSize-1)/pageSize);
        List<SmbmsProvider> smbmsProviders = smbmsProviderMapper.providerList(smbmsProvider,(pageNo-1)*pageSize,pageSize);
         providerPager.setDatas(smbmsProviders);

        return providerPager;
    }

    public String ProviderContactAjax() {

        List<SmbmsProvider> smbmsProviders = smbmsProviderMapper.providerList(null,1,99999);

      /*  return JSON.toJSONString(smbmsProviders);*/
        return null;
    }

    public SmbmsProvider providerView(Integer id) {

        SmbmsProvider smbmsProvider1 = smbmsProviderMapper.providerView(id);
        return smbmsProvider1;
    }

    public String deleteProvider(Integer id) {

             int reuslt = smbmsProviderMapper.deleteProvider(id);

      /*  return JSON.toJSONString(reuslt);*/
        return null;
    }

    public int insertProvder(SmbmsProvider smbmsProvider) {

        int i = smbmsProviderMapper.insertProvder(smbmsProvider);

        return i;
    }

    public int updateProvder(SmbmsProvider smbmsProvider) {

        int i = smbmsProviderMapper.updateProvder(smbmsProvider);

        return i;
    }

    public SmbmsProvider providerChild(int id) {

        SmbmsProvider smbmsProvider = smbmsProviderMapper.providerChild(id);
        return smbmsProvider;
    }


}


