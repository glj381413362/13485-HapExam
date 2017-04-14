package hbi.core.om.controllers;

import com.hand.hap.mybatis.util.StringUtil;
import hbi.core.om.dto.OmOrderLines;
import hbi.core.om.service.IOmOrderLinesService;
import org.springframework.stereotype.Controller;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.ResponseData;
import hbi.core.om.dto.OmOrderHeaders;
import hbi.core.om.service.IOmOrderHeadersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

import static org.codehaus.groovy.runtime.DefaultGroovyMethods.collect;

@Controller
public class OmOrderHeadersController extends BaseController {

    @Autowired
    private IOmOrderHeadersService service;

    @Autowired
    private IOmOrderLinesService omOrderLinesService;


    @RequestMapping(value = "/hap/om/order/headers/query")
    @ResponseBody
    public ResponseData query(OmOrderHeaders dto, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
                              @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pageSize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(service.select(requestContext, dto, page, pageSize));
    }

    @RequestMapping(value = "/hap/om/order/headers/queryAll")
    @ResponseBody
    public ResponseData queryAll(OmOrderHeaders dto, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
                                 @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pageSize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(service.queryAll(requestContext, dto, page, pageSize));
    }

    @RequestMapping(value = "/hap/om/order/headers/submit")
    @ResponseBody
    public ResponseData update(HttpServletRequest request, @RequestBody List<OmOrderHeaders> dto) {
        IRequest requestCtx = createRequestContext(request);
        return new ResponseData(service.batchUpdate(requestCtx, dto));
    }

    @RequestMapping(value = "/hap/om/order/headers/remove")
    @ResponseBody
    public ResponseData delete(HttpServletRequest request, @RequestBody List<OmOrderHeaders> dto) {
        dto.stream().map(i->i.getHeaderId()).forEach(i->omOrderLinesService.deleteByHeaderId(i));
        ResponseData responseData = new ResponseData();
        responseData.setMessage(service.batchDelete(dto)+"");
        return responseData;
    }


    @RequestMapping(value = "/hap/om/order/headers/gettotalprice")
    @ResponseBody
    public ResponseData getTotalPrice(HttpServletRequest request,@RequestParam(required = false) Long headerId){
        ResponseData responseData = new ResponseData();
        responseData.setMessage(service.getTotalPrice(headerId).toString());
        return responseData;
    }
}