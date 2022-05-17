package kr.smhrd.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Rfid;
import kr.smhrd.mapper.RfidBackMapper;



@Service
public class RfidBackService {

	@Autowired
	private RfidBackMapper mapper;
	
	public List<Rfid> selectRfid() {
		List<Rfid> list = mapper.selectRfid();
		return list;
	}
	
	public void insertLog(Rfid vo) {
		mapper.insertLog(vo);
	}
	
	public String selectCheck() {
		return mapper.selectCheck();
	}
	
	public boolean selectSame() {
		return mapper.selectSame();
	}
	
	public int selectDiff() {
		return mapper.selectDiff();
	}
	
}
