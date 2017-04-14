package hbi.core.om.service.impl;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.service.impl.BaseServiceImpl;
import hbi.core.om.mapper.OmOrderHeadersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import hbi.core.om.dto.OmOrderHeaders;
import hbi.core.om.service.IOmOrderHeadersService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OmOrderHeadersServiceImpl extends BaseServiceImpl<OmOrderHeaders> implements IOmOrderHeadersService{

    @Autowired
    OmOrderHeadersMapper omOrderHeadersMapper;

    @Override
    public List<OmOrderHeaders> queryAll(IRequest requestContext, OmOrderHeaders omOrderHeaders, int page, int pagesize) {
        PageHelper.startPage(page, pagesize);
        return this.omOrderHeadersMapper.queryAll(omOrderHeaders);
    }

    @Override
    public Long getTotalPrice(Long headerId) {
        return omOrderHeadersMapper.getTotalPrice(headerId);
    }
}