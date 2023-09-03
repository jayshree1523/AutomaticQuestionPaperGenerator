package com.online_examination.dao;

import com.online_examination.entities.AddQuestion;
import com.online_examination.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddQuestionDao {

    private Connection con;

    public AddQuestionDao(Connection con) {
        this.con = con;
    }

    public boolean saveQues(AddQuestion adq) {
        boolean f = false;
        try {
            String query = "insert into AddQuestion(ClassName,SubjectName,Question,QuestionType,Marks) values (?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, adq.getClassName());
            pstmt.setString(2, adq.getSubjectName());
            pstmt.setString(3, adq.getQuestion());
            pstmt.setString(4, adq.getQuesType());
            pstmt.setInt(5, adq.getMarks());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
