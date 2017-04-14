package hbi.core.om.service.impl;

import com.hand.hap.system.service.impl.BaseServiceImpl;
import org.springframework.stereotype.Service;
import hbi.core.om.dto.OrgCompanys;
import hbi.core.om.service.IOrgCompanysService;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class OrgCompanysServiceImpl extends BaseServiceImpl<OrgCompanys> implements IOrgCompanysService{

}