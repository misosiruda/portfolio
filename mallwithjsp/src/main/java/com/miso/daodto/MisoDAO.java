package com.miso.daodto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.DBManager;

public class MisoDAO {
    private MisoDAO() {
    }

    private static MisoDAO instance;

    public static MisoDAO getInstance() {
        if (instance == null) {
            instance = new MisoDAO();
        }
        return instance;
    }

    public boolean adminCheck(String adminpass) {
        String sql = "SELECT * FROM admin WHERE adminpass = ?";
        String adminid = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, adminpass);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                adminid = rs.getString("adminid");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        if (adminid == null) {
            return false;
        } else {
            return true;
        }
    }

    public String loginCheck(String userpass, String userid) {
        String sql = "SELECT * FROM login WHERE userid = ?";
        LoginVO lVo = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                lVo = new LoginVO();
                lVo.setUserid(rs.getString("userid"));
                lVo.setUserpass(rs.getString("userpass"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        if (lVo == null) {
            return "wrong_userid";
        } else if (!userpass.equals(lVo.getUserpass())) {
            return "wrong_userpass";
        } else {
            return "success";
        }
    }

    public void signAccount(LoginVO lVo) {
        String sql = "INSERT INTO login(userid, userpass) VALUES(?, ?)";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, lVo.getUserid());
            pstmt.setString(2, lVo.getUserpass());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt);
        }
    }

    public int getMaxPage() {
        String sql = "SELECT count(*) AS count FROM board";
        int count = 0;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                count = rs.getInt("count");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        count = count % 10 == 0 ? (int) Math.ceil(count / 10) : (int) Math.ceil(count / 10) + 1;
        return count;
    }

    public ArrayList<BoardVO> selectAllBoards(int pageNum) {
        pageNum--; // 페이지 번호는 0부터 시작하도록 수정
        String sql = "SELECT * FROM board ORDER BY num DESC LIMIT ?, ?";
        ArrayList<BoardVO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            int start = pageNum * 10; // 페이지의 시작 인덱스 계산
            pstmt.setInt(1, start); // LIMIT의 첫 번째 매개변수에 페이지의 시작 인덱스 설정
            pstmt.setInt(2, 10); // 한 페이지에 표시될 게시글 수 설정
            rs = pstmt.executeQuery();
            while (rs.next()) {
                BoardVO bVo = new BoardVO();
                bVo.setNum(rs.getInt("num"));
                bVo.setUsername(rs.getString("username"));
                bVo.setEmail(rs.getString("email"));
                bVo.setPass(rs.getString("pass"));
                bVo.setTitle(rs.getString("title"));
                bVo.setContent(rs.getString("content"));
                bVo.setReadcount(rs.getInt("readcount"));
                bVo.setWritedate(rs.getTimestamp("writedate"));
                list.add(bVo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        return list;
    }

    public void insertBoard(BoardVO bVo) {
        String sql = "INSERT INTO board(username, email, pass, title, content) values(?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bVo.getUsername());
            pstmt.setString(2, bVo.getEmail());
            pstmt.setString(3, bVo.getPass());
            pstmt.setString(4, bVo.getTitle());
            pstmt.setString(5, bVo.getContent());
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("글 작성 중에 오류가 발생했습니다. " + e);
        } finally {
            DBManager.close(conn, pstmt);
        }
    }

    public void updateReadCount(String num) {
        String sql = "UPDATE board SET readcount = readcount + 1 WHERE num=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, num);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt);
        }
    }

    public BoardVO selectOneBoardByNum(String num) {
        String sql = "SELECT * FROM board WHERE num=?";
        BoardVO bVo = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, num);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                bVo = new BoardVO();
                bVo.setNum(rs.getInt("num"));
                bVo.setUsername(rs.getString("username"));
                bVo.setPass(rs.getString("pass"));
                bVo.setEmail(rs.getString("email"));
                bVo.setTitle(rs.getString("title"));
                bVo.setContent(rs.getString("content"));
                bVo.setWritedate(rs.getTimestamp("writedate"));
                bVo.setReadcount(rs.getInt("readcount"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        return bVo;
    }

    public void updateBoard(BoardVO bVo) {
        String sql = "update board set username=?, email=?, pass=?, "
                + "title=?, content=? where num=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, bVo.getUsername());
            pstmt.setString(2, bVo.getEmail());
            pstmt.setString(3, bVo.getPass());
            pstmt.setString(4, bVo.getTitle());
            pstmt.setString(5, bVo.getContent());
            pstmt.setInt(6, bVo.getNum());
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt);
        }
    }

    public BoardVO checkPassWord(String pass, String num) {
        String sql = "SELECT * FROM board WHERE pass = ? and num = ?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardVO bVo = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, pass);
            pstmt.setString(2, num);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                bVo = new BoardVO();
                bVo.setNum(rs.getInt("num"));
                bVo.setUsername(rs.getString("username"));
                bVo.setEmail(rs.getString("email"));
                bVo.setPass(rs.getString("pass"));
                bVo.setTitle(rs.getString("title"));
                bVo.setContent(rs.getString("content"));
                bVo.setReadcount(rs.getInt("readcount"));
                bVo.setWritedate(rs.getTimestamp("writedate"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt, rs);
        }
        return bVo;
    }

    public void deleteBoard(String num) {
        String sql = "DELETE FROM board WHERE num = ?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DBManager.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, num);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt);
        }
    }
}
