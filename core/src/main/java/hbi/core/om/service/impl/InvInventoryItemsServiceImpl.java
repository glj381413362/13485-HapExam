package hbi.core.om.service.impl;

import com.github.pagehelper.PageHelper;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.service.impl.BaseServiceImpl;
import hbi.core.om.mapper.InvInventoryItemsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import hbi.core.om.dto.InvInventoryItems;
import hbi.core.om.service.IInvInventoryItemsService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class InvInventoryItemsServiceImpl extends BaseServiceImpl<InvInventoryItems> implements IInvInventoryItemsService{

    @Autowired
    InvInventoryItemsMapper invInventoryItemsMapper;

    @Override
    public List<InvInventoryItems> queryAllByIds(IRequest requestContext, List<Long> ids) {
        return this.invInventoryItemsMapper.queryAllByIds(ids);
    }
}