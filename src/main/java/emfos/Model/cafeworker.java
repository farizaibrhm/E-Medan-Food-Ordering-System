package emfos.Model;

public class cafeworker {

    private String CWORKID;
    private String CWORKSTALLNAME;
    private String CWORKPHONENO;
    private String CWORKEMAIL;
    private String CWORKPASSWORD;
    private String CWORKACCNUM;
    private String CWORKACCNAME;
    private String CWORKBANKNAME;
//    public boolean valid;

    public cafeworker(){
        super();
    }

    public cafeworker(String CWORKID, String CWORKSTALLNAME, String CWORKPHONENO, String CWORKEMAIL, String CWORKPASSWORD, String CWORKACCNUM, String CWORKACCNAME, String CWORKBANKNAME) {
        super();
        this.CWORKID = CWORKID;
        this.CWORKSTALLNAME = CWORKSTALLNAME;
        this.CWORKPHONENO = CWORKPHONENO;
        this.CWORKEMAIL = CWORKEMAIL;
        this.CWORKPASSWORD = CWORKPASSWORD;
        this.CWORKACCNUM = CWORKACCNUM;
        this.CWORKACCNAME = CWORKACCNAME;
        this.CWORKBANKNAME = CWORKBANKNAME;
    }

    public String getCWORKID() {
        return CWORKID;
    }

    public void setCWORKID(String CWORKID) {
        this.CWORKID = CWORKID;
    }

    public String getCWORKSTALLNAME() {
        return CWORKSTALLNAME;
    }

    public void setCWORKSTALLNAME(String CWORKSTALLNAME) {
        this.CWORKSTALLNAME = CWORKSTALLNAME;
    }

    public String getCWORKPHONENO() {
        return CWORKPHONENO;
    }

    public void setCWORKPHONENO(String CWORKPHONENO) {
        this.CWORKPHONENO = CWORKPHONENO;
    }

    public String getCWORKEMAIL() {
        return CWORKEMAIL;
    }

    public void setCWORKEMAIL(String CWORKEMAIL) {
        this.CWORKEMAIL = CWORKEMAIL;
    }

    public String getCWORKPASSWORD() {
        return CWORKPASSWORD;
    }

    public void setCWORKPASSWORD(String CWORKPASSWORD) {
        this.CWORKPASSWORD = CWORKPASSWORD;
    }

    public String getCWORKACCNUM() {
        return CWORKACCNUM;
    }

    public void setCWORKACCNUM(String CWORKACCNUM) {
        this.CWORKACCNUM = CWORKACCNUM;
    }

    public String getCWORKACCNAME() {
        return CWORKACCNAME;
    }

    public void setCWORKACCNAME(String CWORKACCNAME) {
        this.CWORKACCNAME = CWORKACCNAME;
    }

    public String getCWORKBANKNAME() {
        return CWORKBANKNAME;
    }

    public void setCWORKBANKNAME(String CWORKBANKNAME) {
        this.CWORKBANKNAME = CWORKBANKNAME;
    }

//    public boolean isValid(){
//        return valid;
//    }
//
//    public void setValid(boolean newValid){
//        valid = newValid;
//    }
}
