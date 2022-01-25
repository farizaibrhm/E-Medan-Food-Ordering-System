package com.example.emedan_food_ordering_system;

public class Student implements java.io.Serializable{
    public String STUDENTID;
    public String STUDENTNAME;
    public String STUDENTPHONENO;
    public String STUDENTEMAIL;
    public String STUDENTPASSWORD;

    public Student(){

    }


    public Student(String sID, String sName, String sPhoneNo, String sEmail, String sPassword){
        this.STUDENTID = sID;
        this.STUDENTNAME = sName;
        this.STUDENTPHONENO = sPhoneNo;
        this.STUDENTEMAIL = sEmail;
        this.STUDENTPASSWORD = sPassword;
    }

    public String getStudentID(){
        return STUDENTID;
    }

    public void setStudentID(String sID) {
        this.STUDENTID = sID;
    }

    public String getStudentName(){
        return STUDENTNAME;
    }

    public void setStudentName(String sName){
        this.STUDENTNAME=sName;
    }

    public String getStudentPhoneNo(){
        return STUDENTPHONENO;
    }
    public void setStudentPhoneNo(String sPhoneNo){
        this.STUDENTPHONENO = sPhoneNo;
    }
    public String getStudentEmail(){
        return STUDENTEMAIL;
    }
    public void setStudentEmail(String sEmail){
        this.STUDENTEMAIL = sEmail;
    }
    public String getStudentPassword(){
        return STUDENTPASSWORD;
    }
    public void setStudentPassword(String sPassword){
        this.STUDENTPASSWORD = sPassword;
    }

}
