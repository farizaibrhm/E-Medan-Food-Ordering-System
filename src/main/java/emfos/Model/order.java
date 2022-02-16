package emfos.Model;

public class order {
    private int ORDERID;
    private int ORDERNO;
    private String ORDERDATE;
    private String ORDERTIME;
    private String ORDERSTATUS;
    private int MENUID;
    private String MENUNAME;
    private int ORDERQUANTITY;
    private double ORDERPRICE;
    private double ORDERTPRICE;
    private String STUDENTID;
    private String STUDENTNAME;
    private String CWORKID;
    private String CWORKSTALLNAME;

    public order(){
        super();
    }

    public order(int ORDERID, int ORDERNO, String ORDERDATE, String ORDERTIME, String ORDERSTATUS, int MENUID, String MENUNAME, int ORDERQUANTITY, double ORDERPRICE, double ORDERTPRICE, String STUDENTID, String STUDENTNAME, String CWORKID, String CWORKSTALLNAME) {
        super();
        this.ORDERID = ORDERID;
        this.ORDERNO = ORDERNO;
        this.ORDERDATE = ORDERDATE;
        this.ORDERTIME = ORDERTIME;
        this.ORDERSTATUS = ORDERSTATUS;
        this.MENUID = MENUID;
        this.MENUNAME = MENUNAME;
        this.ORDERQUANTITY = ORDERQUANTITY;
        this.ORDERPRICE = ORDERPRICE;
        this.ORDERTPRICE = ORDERTPRICE;
        this.STUDENTID = STUDENTID;
        this.STUDENTNAME = STUDENTNAME;
        this.CWORKID = CWORKID;
        this.CWORKSTALLNAME = CWORKSTALLNAME;
    }

    public int getORDERID() {
        return ORDERID;
    }

    public void setORDERID(int ORDERID) {
        this.ORDERID = ORDERID;
    }

    public int getORDERNO() {
        return ORDERNO;
    }

    public void setORDERNO(int ORDERNO) {
        this.ORDERNO = ORDERNO;
    }

    public String getORDERDATE() {
        return ORDERDATE;
    }

    public void setORDERDATE(String ORDERDATE) {
        this.ORDERDATE = ORDERDATE;
    }

    public String getORDERTIME() {
        return ORDERTIME;
    }

    public void setORDERTIME(String ORDERTIME) {
        this.ORDERTIME = ORDERTIME;
    }

    public String getORDERSTATUS() {
        return ORDERSTATUS;
    }

    public void setORDERSTATUS(String ORDERSTATUS) {
        this.ORDERSTATUS = ORDERSTATUS;
    }

    public int getMENUID() {
        return MENUID;
    }

    public void setMENUID(int MENUID) {
        this.MENUID = MENUID;
    }

    public String getMENUNAME() {
        return MENUNAME;
    }

    public void setMENUNAME(String MENUNAME) {
        this.MENUNAME = MENUNAME;
    }

    public int getORDERQUANTITY() {
        return ORDERQUANTITY;
    }

    public void setORDERQUANTITY(int ORDERQUANTITY) {
        this.ORDERQUANTITY = ORDERQUANTITY;
    }

    public double getORDERPRICE() {
        return ORDERPRICE;
    }

    public void setORDERPRICE(double ORDERPRICE) {
        this.ORDERPRICE = ORDERPRICE;
    }

    public double getORDERTPRICE() {
        return ORDERTPRICE;
    }

    public void setORDERTPRICE(double ORDERTPRICE) {
        this.ORDERTPRICE = ORDERTPRICE;
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
}
