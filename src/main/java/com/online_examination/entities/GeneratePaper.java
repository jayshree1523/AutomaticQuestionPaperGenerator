package com.online_examination.entities;

import java.sql.Timestamp;
//import java.time.LocalDate;
//import java.time.LocalTime;

public class GeneratePaper {

    private int id;
    private String instituteName;
    private String examType;
    private String className;
    private String subjectName;
    private String longInstruct;
    private String shortInstruct;
    private String oneWordInstruct;
    private int noLongQues;
    private int noShortQues;
    private int noOneWordQues;
    private String dateTime;
//    private LocalTime startTime;
    private String totalTime;
    private int totalQues;
    private int totalMarks;

    public GeneratePaper(int id, String instituteName, String examType, String className, String subjectName, String longInstruct, String shortInstruct, String oneWordInstruct, int noLongQues, int noShortQues, int noOneWordQues,String totalTime, int totalQues, int totalMarks) {
        this.id = id;
        this.instituteName = instituteName;
        this.examType = examType;
        this.className = className;
        this.subjectName = subjectName;
        this.longInstruct = longInstruct;
        this.shortInstruct = shortInstruct;
        this.oneWordInstruct = oneWordInstruct;
        this.noLongQues = noLongQues;
        this.noShortQues = noShortQues;
        this.noOneWordQues = noOneWordQues;
//        this.dateTime = dateTime;
//        this.startTime = startTime;
        this.totalTime = totalTime;
        this.totalQues = totalQues;
        this.totalMarks = totalMarks;
    }

    public GeneratePaper() {
    }

    public GeneratePaper(String instituteName, String examType, String className, String subjectName, String longInstruct, String shortInstruct, String oneWordInstruct, int noLongQues, int noShortQues, int noOneWordQues,String totalTime, int totalQues, int totalMarks) {

        this.instituteName = instituteName;
        this.examType = examType;
        this.className = className;
        this.subjectName = subjectName;
        this.longInstruct = longInstruct;
        this.shortInstruct = shortInstruct;
        this.oneWordInstruct = oneWordInstruct;
        this.noLongQues = noLongQues;
        this.noShortQues = noShortQues;
        this.noOneWordQues = noOneWordQues;
//         this.dateTime = dateTime;
//        this.examDate = examDate;
//        this.startTime = startTime;
        this.totalTime = totalTime;
        this.totalQues = totalQues;
        this.totalMarks = totalMarks;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getInstituteName() {
        return instituteName;
    }

    public void setInstituteName(String instituteName) {
        this.instituteName = instituteName;
    }

    public String getExamType() {
        return examType;
    }

    public void setExamType(String examType) {
        this.examType = examType;
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

    public String getLongInstruct() {
        return longInstruct;
    }

    public void setLongInstruct(String longInstruct) {
        this.longInstruct = longInstruct;
    }

    public String getShortInstruct() {
        return shortInstruct;
    }

    public void setShortInstruct(String shortInstruct) {
        this.shortInstruct = shortInstruct;
    }

    public String getOneWordInstruct() {
        return oneWordInstruct;
    }

    public void setOneWordInstruct(String oneWordInstruct) {
        this.oneWordInstruct = oneWordInstruct;
    }

    public int getNoLongQues() {
        return noLongQues;
    }

    public void setNoLongQues(int noLongQues) {
        this.noLongQues = noLongQues;
    }

    public int getNoShortQues() {
        return noShortQues;
    }

    public void setNoShortQues(int noShortQues) {
        this.noShortQues = noShortQues;
    }

    public int getNoOneWordQues() {
        return noOneWordQues;
    }

    public void setNoOneWordQues(int noOneWordQues) {
        this.noOneWordQues = noOneWordQues;
    }

    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

//    public Timestamp getExamDate() {
//        return examDate;
//    }
//
//    public void setExamDate(LocalDate examDate) {
//        this.examDate = examDate;
//    }

//    public LocalTime getStartTime() {
//        return startTime;
//    }

//    public void setStartTime(LocalTime startTime) {
//        this.startTime = startTime;
//    }

    public String getTotalTime() {
        return totalTime;
    }

    public void setTotalTime(String totalTime) {
        this.totalTime = totalTime;
    }

    public int getTotalQues() {
        return totalQues;
    }

    public void setTotalQues(int totalQues) {
        this.totalQues = totalQues;
    }

    public int getTotalMarks() {
        return totalMarks;
    }

    public void setTotalMarks(int totalMarks) {
        this.totalMarks = totalMarks;
    }
    
}
