package hbi.core.om.mapper;

import com.hand.hap.mybatis.common.Mapper;
import hbi.core.om.dto.OmOrderLines;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OmOrderLinesMapper extends Mapper<OmOrderLines>{
    int deleteByHeaderId(Long headerId);
    Long getNewLineNumber(@Param("headerId") Long headerId);
    List<OmOrderLines> queryAllByHeaderId(@Param("headerId") Long headerId);
}