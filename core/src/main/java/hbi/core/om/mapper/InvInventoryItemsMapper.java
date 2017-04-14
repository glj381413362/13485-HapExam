package hbi.core.om.mapper;

import com.hand.hap.mybatis.common.Mapper;
import hbi.core.om.dto.InvInventoryItems;

import java.util.List;

public interface InvInventoryItemsMapper extends Mapper<InvInventoryItems>{
    List<InvInventoryItems> queryAllByIds(List<Long> ids);
}