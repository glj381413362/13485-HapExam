package hbi.core.om.controllers;

import org.springframework.stereotype.Controller;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.ResponseData;
import hbi.core.om.dto.InvInventoryItems;
import hbi.core.om.service.IInvInventoryItemsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class InvInventoryItemsController extends BaseController {

    @Autowired
    private IInvInventoryItemsService service;


    @RequestMapping(value = "/hap/inv/inventory/items/query")
    @ResponseBody
    public ResponseData query(InvInventoryItems dto, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
                              @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pageSize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(service.select(requestContext, dto, page, pageSize));
    }

    @RequestMapping(value = "/hap/inv/inventory/items/querybyids")
    @ResponseBody
    public ResponseData queryByIds(@RequestParam(required = false) List<Long> ids, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(service.queryAllByIds(requestContext, ids));
    }

    @RequestMapping(value = "/hap/inv/inventory/items/submit")
    @ResponseBody
    public ResponseData update(HttpServletRequest request, @RequestBody List<InvInventoryItems> dto) {
        IRequest requestCtx = createRequestContext(request);
        return new ResponseData(service.batchUpdate(requestCtx, dto));
    }

    @RequestMapping(value = "/hap/inv/inventory/items/remove")
    @ResponseBody
    public ResponseData delete(HttpServletRequest request, @RequestBody List<InvInventoryItems> dto) {
        service.batchDelete(dto);
        return new ResponseData();
    }
}