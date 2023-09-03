package com.online_examination.dao;

import com.online_examination.entities.AddQuestion;
import com.online_examination.entities.GeneratePaper;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;

public class GeneratePaperDao {

    private Connection con;

    public GeneratePaperDao(Connection con) {
        this.con = con;
    }

    public boolean savePaper(GeneratePaper gp) {
        boolean f = false;
        try {
            String query = "insert into paper(InstituteName,ExamType,ClassName,SubjectName,LongInstruction,ShortInstruction,OneWordInstruction,NoOfLongQues,NoOfShortQues,NoOfOneWordQues,TotalTime,TotalMarks,TotalQues) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, gp.getInstituteName());
            pstmt.setString(2, gp.getExamType());
            pstmt.setString(3, gp.getClassName());
            pstmt.setString(4, gp.getSubjectName());
            pstmt.setString(5, gp.getLongInstruct());
            pstmt.setString(6, gp.getShortInstruct());
            pstmt.setString(7, gp.getOneWordInstruct());
            pstmt.setInt(8, gp.getNoLongQues());
            pstmt.setInt(9, gp.getNoShortQues());
            pstmt.setInt(10, gp.getNoOneWordQues());
//            pstmt.setDate(1,getCurrentDate());
//            pstmt.setTime(1,getCurrentTime());
            pstmt.setString(11, gp.getTotalTime());
            pstmt.setInt(12, gp.getTotalMarks());
            pstmt.setInt(13, gp.getTotalQues());
//            pstmt.setString(14,gp.getDateTime());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public GeneratePaper getExamById(String email, String password) {
        GeneratePaper gp = null;
        try {
            String query = "select * from paper where ClassName=? and SubjectName=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            String className ="";
            pstmt.setString(1, className);
            String subjectName="";
            pstmt.setString(2, subjectName);
            ResultSet set = pstmt.executeQuery();
            while (set.next()) {
                gp = new GeneratePaper();
                gp.setId(set.getInt("ExamID"));
                gp.setInstituteName(set.getString("InstituteName"));
                gp.setExamType(set.getString("ExamType"));
                gp.setClassName(set.getString("ClassName"));
                gp.setSubjectName(set.getString("SubjectName"));
                gp.setLongInstruct(set.getString("LongInstruction"));
                gp.setShortInstruct(set.getString("ShortInstruction"));
                gp.setOneWordInstruct(set.getString("OneWordInstruction"));
                gp.setNoLongQues(set.getInt("NoOfLongQues"));
                gp.setNoShortQues(set.getInt("NoOfShortQues"));
                gp.setNoOneWordQues(set.getInt("NoOfOneWordQues"));
                gp.setTotalTime(set.getString("TotalTime"));
                gp.setTotalMarks(set.getInt("TotalMarks"));
                gp.setTotalQues(set.getInt("TotalQues"));
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return gp;
    }

//    private Date getCurrentDate() {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
//
//    private Time getCurrentTime() {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
}
