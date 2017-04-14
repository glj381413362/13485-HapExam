package hbi.core.om.service;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.system.service.IBaseService;
import hbi.core.om.dto.InvInventoryItems;
import hbi.core.om.dto.OmOrderHeaders;

import java.util.List;

public interface IInvInventoryItemsService extends IBaseService<InvInventoryItems>, ProxySelf<IInvInventoryItemsService>{
    List<InvInventoryItems> queryAllByIds(IRequest requestContext, List<Long> ids);
}