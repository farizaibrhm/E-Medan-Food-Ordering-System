package com.example.emedan_food_ordering_system;

public class Student implements java.io.Serializable{
    public String studentID;
    public String studentName;
    public String studentPhoneNo;
    public String studentEmail;
    public String studentPassword;

    public Student(){

    }


    public Student(String sID, String sName, String sPhoneNo, String sEmail, String sPassword){
        super();
        this.studentID = sID;
        this.studentName = sName;
        this.studentPhoneNo = sPhoneNo;
        this.studentEmail = sEmail;
        this.studentPassword = sPassword;
    }

    public String getStudentID(){
        return studentID;
    }

    public void setStudentID(String sID) {
        this.studentID = sID;
    }

    public String getStudentName(){
        return studentName;
    }

    public void setStudentName(String sName){
        this.studentName=sName;
    }

    public String getStudentPhoneNum(){
        return studentPhoneNo;
    }
    public void setStudentPhoneNum(String sPhoneNo){
        this.studentPhoneNo = sPhoneNo;
    }
    public String getStudentEmail(){
        return studentEmail;
    }
    public void setStudentEmail(String sEmail){
        this.studentEmail = sEmail;
    }
    public String getStudentPassword(){
        return studentPassword;
    }
    public void setStudentPassword(String sPassword){
        this.studentPassword = sPassword;
    }

}
