package hbi.core.om.mapper;

import com.hand.hap.mybatis.common.Mapper;
import hbi.core.om.dto.OmOrderHeaders;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OmOrderHeadersMapper extends Mapper<OmOrderHeaders>{

        List<OmOrderHeaders> queryAll(OmOrderHeaders omOrderHeaders);

        Long getTotalPrice(@Param("headerId") Long headerId);
}