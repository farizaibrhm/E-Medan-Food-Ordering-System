package com.example.emedan_food_ordering_system;

public class CafeWorker implements java.io.Serializable{
    public String CWORKID;
    public String CWORKSTALLNAME;
    public String CWORKPHONENO;
    public String CWORKEMAIL;
    public String CWORKPASSWORD;
    public String CWORKACCNUM;
    public String CWORKACCNAME;
    public String CWORKBANKNAME;

    public CafeWorker(){

    }

    public CafeWorker(String cID, String cStallName, String cPhoneNo, String cEmail, String cPassword, String cAccNum, String cAccName, String cBankName){
        this.CWORKID = cID;
        this.CWORKSTALLNAME = cStallName;
        this.CWORKPHONENO = cPhoneNo;
        this.CWORKEMAIL = cEmail;
        this.CWORKPASSWORD = cPassword;
        this.CWORKACCNUM = cAccNum;
        this.CWORKACCNAME = cAccName;
        this.CWORKBANKNAME = cBankName;
    }

    public String getCWORKID (){return CWORKID;}
    public void setCWORKID(String cworkid){this.CWORKID = cworkid;}
    public String getCWORKSTALLNAME(){return CWORKSTALLNAME;}
    public void setCWORKSTALLNAME(String cworkstallname){this.CWORKSTALLNAME =cworkstallname;}
    public String getCWORKPHONENO(){return CWORKPHONENO;}
    public void setCWORKPHONENO(String cworkphoneno){this.CWORKPHONENO = cworkphoneno;}
    public String getCWORKEMAIL(){return  CWORKEMAIL;}
    public void setCWORKEMAIL(String cworkemail){this.CWORKEMAIL = cworkemail;}
    public String getCWORKPASSWORD(){return CWORKPASSWORD;}
    public void setCWORKPASSWORD(String cworkpassword){this.CWORKPASSWORD = cworkpassword;}
    public String getCWORKACCNUM(){return CWORKACCNUM;}
    public void setCWORKACCNUM(String cworkaccnum){this.CWORKACCNUM = cworkaccnum;}
    public String getCWORKACCNAME(){return  CWORKACCNAME;}
    public void setCWORKACCNAME(String cworkaccname){this.CWORKACCNAME = cworkaccname;}
    public String getCWORKBANKNAME(){return CWORKBANKNAME;}
    public void setCWORKBANKNAME(String cworkbankname){this.CWORKBANKNAME = cworkbankname;}
}
