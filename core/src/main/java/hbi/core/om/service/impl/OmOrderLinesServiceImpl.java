package hbi.core.om.service.impl;

import com.github.pagehelper.PageHelper;
import com.hand.hap.system.service.impl.BaseServiceImpl;
import hbi.core.om.mapper.OmOrderLinesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import hbi.core.om.dto.OmOrderLines;
import hbi.core.om.service.IOmOrderLinesService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OmOrderLinesServiceImpl extends BaseServiceImpl<OmOrderLines> implements IOmOrderLinesService{

    @Autowired
    OmOrderLinesMapper omOrderLinesMapper;

    @Override
    public int deleteByHeaderId(Long headerId) {
        return omOrderLinesMapper.deleteByHeaderId(headerId);
    }

    @Override
    public Long getNewLineNumber(Long headerId) {
        return omOrderLinesMapper.getNewLineNumber(headerId);
    }

    @Override
    public List<OmOrderLines> queryAllByHeaderId(Long headerId, int page, int pageSize) {
        PageHelper.startPage(page, pageSize);
        return omOrderLinesMapper.queryAllByHeaderId(headerId);
    }
}