package com.online_examination.entities;

import java.sql.*;
public class AddQuestion {
    private int id;
    private String className;
    private String subjectName;
    private String question;
    private String quesType;
    private int marks;

    public AddQuestion(int id, String className, String subjectName, String question, String quesType, int marks) {
        this.id = id;
        this.className = className;
        this.subjectName = subjectName;
        this.question = question;
        this.quesType = quesType;
        this.marks = marks;
    }

    public AddQuestion() {
    }
    public AddQuestion(String className, String subjectName, String question, String quesType, int marks) {
        this.className = className;
        this.subjectName = subjectName;
        this.question = question;
        this.quesType = quesType;
        this.marks = marks;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getQuesType() {
        return quesType;
    }

    public void setQuesType(String quesType) {
        this.quesType = quesType;
    }

    public int getMarks() {
        return marks;
    }

    public void setMarks(int marks) {
        this.marks = marks;
    }
    
}
