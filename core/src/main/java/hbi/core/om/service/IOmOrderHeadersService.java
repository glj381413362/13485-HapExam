package hbi.core.om.service;

import com.hand.hap.core.IRequest;
import com.hand.hap.core.ProxySelf;
import com.hand.hap.system.service.IBaseService;
import hbi.core.om.dto.OmOrderHeaders;

import java.util.List;

public interface IOmOrderHeadersService extends IBaseService<OmOrderHeaders>, ProxySelf<IOmOrderHeadersService>{
    List<OmOrderHeaders> queryAll(IRequest requestContext, OmOrderHeaders omOrderHeaders, int page, int pagesize);

    Long getTotalPrice(Long headerId);
}