package hbi.core.om.controllers;

import org.springframework.stereotype.Controller;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.ResponseData;
import hbi.core.om.dto.OrgCompanys;
import hbi.core.om.service.IOrgCompanysService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

    @Controller
    public class OrgCompanysController extends BaseController{

    @Autowired
    private IOrgCompanysService service;


    @RequestMapping(value = "/hap/org/companys/query")
    @ResponseBody
    public ResponseData query(OrgCompanys dto, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
        @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pageSize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(service.select(requestContext,dto,page,pageSize));
    }

    @RequestMapping(value = "/hap/org/companys/submit")
    @ResponseBody
    public ResponseData update(HttpServletRequest request,@RequestBody List<OrgCompanys> dto){
        IRequest requestCtx = createRequestContext(request);
        return new ResponseData(service.batchUpdate(requestCtx, dto));
    }

    @RequestMapping(value = "/hap/org/companys/remove")
    @ResponseBody
    public ResponseData delete(HttpServletRequest request,@RequestBody List<OrgCompanys> dto){
        service.batchDelete(dto);
        return new ResponseData();
    }
    }