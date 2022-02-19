package emfos.Model;

public class cart {
    private int CARTID;
    private int MENUID;
    private int CARTQUANTITY;
    private String CWORKID;
    private String STUDENTID;

    public cart() {
        super();
    }

    public cart(int CARTID, int MENUID, int CARTQUANTITY, String CWORKID, String STUDENTID) {
        super();
        this.CARTID = CARTID;
        this.MENUID = MENUID;
        this.CARTQUANTITY = CARTQUANTITY;
        this.CWORKID = CWORKID;
        this.STUDENTID = STUDENTID;
    }

    public int getCARTID() {
        return CARTID;
    }

    public void setCARTID(int CARTID) {
        this.CARTID = CARTID;
    }

    public int getMENUID() {
        return MENUID;
    }

    public void setMENUID(int MENUID) {
        this.MENUID = MENUID;
    }

    public int getCARTQUANTITY() {
        return CARTQUANTITY;
    }

    public void setCARTQUANTITY(int CARTQUANTITY) {
        this.CARTQUANTITY = CARTQUANTITY;
    }

    public String getCWORKID() {
        return CWORKID;
    }

    public void setCWORKID(String CWORKID) {
        this.CWORKID = CWORKID;
    }

    public String getSTUDENTID() {
        return STUDENTID;
    }

    public void setSTUDENTID(String STUDENTID) {
        this.STUDENTID = STUDENTID;
    }
}
