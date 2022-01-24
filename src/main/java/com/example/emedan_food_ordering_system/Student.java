package com.example.emedan_food_ordering_system;

public class Student implements java.io.Serializable{
    public int studentID;
    public String studentName;
    public String studentPhoneNum;
    public String studentEmail;
    public String studentPassword;

    public Student(){

    }


    public Student(int sID, String sName, String sPhoneNum, String sEmail, String sPassword){
        super();
        this.studentID = sID;
        this.studentName = sName;
        this.studentPhoneNum = sPhoneNum;
        this.studentEmail = sEmail;
        this.studentPassword = sPassword;
    }

    public int getStudentID(){
        return studentID;
    }

    public void setStudentID(int sID) {
        this.studentID = sID;
    }

    public String getStudentName(){
        return studentName;
    }

    public void setStudentName(String sName){
        this.studentName=sName;
    }

    public String getStudentPhoneNum(){
        return studentPhoneNum;
    }
    public void setStudentPhoneNum(String sPhoneNum){
        this.studentPhoneNum = sPhoneNum;
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
