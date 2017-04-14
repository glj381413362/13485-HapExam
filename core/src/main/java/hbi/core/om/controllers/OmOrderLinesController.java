package hbi.core.om.controllers;

import hbi.core.om.dto.InvInventoryItems;
import hbi.core.om.service.IInvInventoryItemsService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONUtils;
import org.springframework.stereotype.Controller;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.core.IRequest;
import com.hand.hap.system.dto.ResponseData;
import hbi.core.om.dto.OmOrderLines;
import hbi.core.om.service.IOmOrderLinesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
public class OmOrderLinesController extends BaseController {

    @Autowired
    private IOmOrderLinesService service;


    @Autowired
    private IInvInventoryItemsService invInventoryItemsService;


    @RequestMapping(value = "/hap/om/order/lines/query")
    @ResponseBody
    public ResponseData query(OmOrderLines dto, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
                              @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pageSize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(service.select(requestContext, dto, page, pageSize));
    }


    @RequestMapping(value = "/hap/om/order/lines/queryallbyheaderid")
    @ResponseBody
    public ResponseData query(@RequestParam(required = false) Long headerId, @RequestParam(defaultValue = DEFAULT_PAGE) int page,
                              @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pageSize, HttpServletRequest request) {
        IRequest requestContext = createRequestContext(request);
        List<OmOrderLines> list = service.queryAllByHeaderId(headerId, page, pageSize);
        Set<Long> itemIds = new HashSet<Long>();
        list.stream().forEach((item)->itemIds.add(item.getInventoryItemId()));

        ResponseData responseData = new ResponseData(list);

        List<InvInventoryItems> invInventoryItems = invInventoryItemsService.queryAllByIds(requestContext, new ArrayList<>(itemIds));
        responseData.setMessage(JSONArray.fromObject(invInventoryItems).toString());
        return responseData;

    }

    @RequestMapping(value = "/hap/om/order/lines/submit")
    @ResponseBody
    public ResponseData update(HttpServletRequest request, @RequestBody List<OmOrderLines> dto) {
        IRequest requestCtx = createRequestContext(request);
        return new ResponseData(service.batchUpdate(requestCtx, dto));

    }

    @RequestMapping(value = "/hap/om/order/lines/remove")
    @ResponseBody
    public ResponseData delete(HttpServletRequest request, @RequestBody List<OmOrderLines> dto) {
        service.batchDelete(dto);
        return new ResponseData();
    }


    @RequestMapping(value = "/hap/om/order/lines/getnewlinenumber")
    @ResponseBody
    public ResponseData getNewLineNumber(HttpServletRequest request, @RequestParam(required = false) Long headerId) {
        ResponseData responseData = new ResponseData();
        responseData.setMessage(service.getNewLineNumber(headerId).toString());
        return responseData;
    }
}