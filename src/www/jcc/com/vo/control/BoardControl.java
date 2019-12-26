package www.jcc.com.vo.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import www.jcc.com.vo.Board;
import www.jcc.com.vo.db.DBConn;

public class BoardControl {

	public List<Board> selectBoardList(Board board) {
		List<Board> result = new ArrayList<Board>();
		DBConn db = new DBConn();
		try (Connection conn = db.getConnection()) {
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT * FROM board ");
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Board item = new Board();
				item.setId(rs.getInt("id"));
				item.setTitle(rs.getString("title"));
				item.setWriter(rs.getString("writer"));
				item.setContent(rs.getString("content"));
				item.setWdate(rs.getString("wdate"));

				result.add(item);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int insert(Board board) {
		int result = 0;
		DBConn db = new DBConn();

		try (Connection conn= db.getConnection()){
			StringBuilder sql= new StringBuilder();
			sql.append("INSERT INTO board (title, writer, content) ").append("VALUES (?,?,?)");
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3,  board.getContent());

			System.out.println(pstmt.toString());
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Board selectOne(Board input) {
		Board result = new Board();
		DBConn db = new DBConn();
		try (Connection conn= db.getConnection()) {
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT * FROM board WHERE id=?");

			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, input.getId());
			ResultSet rs = pstmt.executeQuery();

			if(rs.next()) {
				result.setId(rs.getInt("id"));
				result.setWdate(rs.getString("wdate"));
				result.setTitle(rs.getString("title"));
				result.setContent(rs.getString("content"));
				result.setWriter(rs.getString("writer"));
			}

		} catch(SQLException e) {
			e.printStackTrace();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int updateBoard(Board input) {
		int result = 0;
		DBConn db = new DBConn();
		try (Connection conn= db.getConnection()) {
			StringBuilder sql = new StringBuilder();
			sql.append("UPDATE board SET title = ?, content = ?, writer = ? WHERE id=?");

			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			int i = 1;
			pstmt.setString(i++, input.getTitle());
			pstmt.setString(i++, input.getContent());
			pstmt.setString(i++, input.getWriter());
			pstmt.setInt(i++, input.getId());
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
}
