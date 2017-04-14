package hbi.core.om.service;

import com.hand.hap.core.ProxySelf;
import com.hand.hap.system.service.IBaseService;
import hbi.core.om.dto.OmOrderLines;

import java.util.List;

public interface IOmOrderLinesService extends IBaseService<OmOrderLines>, ProxySelf<IOmOrderLinesService>{

    int deleteByHeaderId(Long headerId);
    Long getNewLineNumber(Long headerId);

    List<OmOrderLines> queryAllByHeaderId(Long headerId, int page, int pageSize);


}