package emfos;

public class student {
    private String STUDENTID;
    private String STUDENTNAME;
    private String STUDENTPHONENO;
    private String STUDENTEMAIL;
    private String STUDENTPASSWORD;
//    public boolean valid;

    public student() {
        super();
    }

    public student(String STUDENTID, String STUDENTNAME, String STUDENTPHONENO, String STUDENTEMAIL, String STUDENTPASSWORD) {
        super();
        this.STUDENTID = STUDENTID;
        this.STUDENTNAME = STUDENTNAME;
        this.STUDENTPHONENO = STUDENTPHONENO;
        this.STUDENTEMAIL = STUDENTEMAIL;
        this.STUDENTPASSWORD = STUDENTPASSWORD;
    }



    public String getSTUDENTID() {
        return STUDENTID;
    }

    public void setSTUDENTID(String STUDENTID) {
        this.STUDENTID = STUDENTID;
    }

    public String getSTUDENTNAME() {
        return STUDENTNAME;
    }

    public void setSTUDENTNAME(String STUDENTNAME) {
        this.STUDENTNAME = STUDENTNAME;
    }

    public String getSTUDENTPHONENO() {
        return STUDENTPHONENO;
    }

    public void setSTUDENTPHONENO(String STUDENTPHONENO) {
        this.STUDENTPHONENO = STUDENTPHONENO;
    }

    public String getSTUDENTEMAIL() {
        return STUDENTEMAIL;
    }

    public void setSTUDENTEMAIL(String STUDENTEMAIL) {
        this.STUDENTEMAIL = STUDENTEMAIL;
    }

    public String getSTUDENTPASSWORD() {
        return STUDENTPASSWORD;
    }

    public void setSTUDENTPASSWORD(String STUDENTPASSWORD) {
        this.STUDENTPASSWORD = STUDENTPASSWORD;
    }

//    public boolean isValid() {
//        return valid;
//    }
//
//    public void setValid(boolean newValid) {
//        this.valid = newValid;
//    }
}
