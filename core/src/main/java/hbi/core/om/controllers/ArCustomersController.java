package hbi.core.om.controllers;

import org.springframework.stereotype.Controller;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.ResponseData;
import hbi.core.om.dto.ArCustomers;
import hbi.core.om.service.IArCustomersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

    @Controller
    public class ArCustomersController extends BaseController{

    @Autowired
    private IArCustomersService service;


    @RequestMapping(value = "/hap/ar/customers/query")
    @ResponseBody
    public ResponseData query(ArCustomers dto, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
        @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pageSize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(service.select(requestContext,dto,page,pageSize));
    }

    @RequestMapping(value = "/hap/ar/customers/submit")
    @ResponseBody
    public ResponseData update(HttpServletRequest request,@RequestBody List<ArCustomers> dto){
        IRequest requestCtx = createRequestContext(request);
        return new ResponseData(service.batchUpdate(requestCtx, dto));
    }

    @RequestMapping(value = "/hap/ar/customers/remove")
    @ResponseBody
    public ResponseData delete(HttpServletRequest request,@RequestBody List<ArCustomers> dto){
        service.batchDelete(dto);
        return new ResponseData();
    }
    }