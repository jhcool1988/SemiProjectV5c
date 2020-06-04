package jhcool1988.spring.mvc.service;

import jhcool1988.spring.mvc.dao.BDReplyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import jhcool1988.spring.mvc.vo.ReplyVO;

import java.util.ArrayList;

@Service("brsrv")
public class BDReplyService {

    private BDReplyDAO brdao;

    @Autowired
    public BDReplyService(BDReplyDAO brdao) {
        this.brdao = brdao;
    }

    // 댓글쓰기
    public void makeReply(ReplyVO rvo) {
        brdao.insertReply(rvo);
    }

    // 댓글과 대댓글 가져오기
    public ArrayList<ReplyVO> showReply(String bno) {
        return (ArrayList<ReplyVO>) brdao.selectReply(bno);
    }

    // 대댓글 쓰기
    public void makeComment(ReplyVO rvo) {
        brdao.insertComment(rvo);
    }

}
