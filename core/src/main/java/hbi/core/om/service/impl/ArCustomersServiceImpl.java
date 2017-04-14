package hbi.core.om.service.impl;

import com.hand.hap.system.service.impl.BaseServiceImpl;
import org.springframework.stereotype.Service;
import hbi.core.om.dto.ArCustomers;
import hbi.core.om.service.IArCustomersService;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ArCustomersServiceImpl extends BaseServiceImpl<ArCustomers> implements IArCustomersService{

}