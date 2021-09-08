package com.ra.web_backend.dto;
import java.util.List;
import com.ra.web_backend.dto.RpiDTO;
import org.springframework.dao.DataAccessException;
public interface RpiDAO {
	List getList() throws DataAccessException;
	RpiDTO getRpi(Integer id) throws DataAccessException;
}
