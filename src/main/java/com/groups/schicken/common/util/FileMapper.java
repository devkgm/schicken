package com.groups.schicken.common.util;

import com.groups.schicken.common.vo.FileVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FileMapper {
    int uploadFile(FileVO fileVO) throws Exception;
    int deleteFile(FileVO fileVO) throws Exception;
    FileVO downFile(FileVO fileVO) throws Exception;
}
