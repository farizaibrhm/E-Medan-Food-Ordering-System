package emfos.Model;

public class cart {
    private int CARTID;
    private int MENUID;
    private String STUDENTID;
    private double CARTPRICE;
    private int CARTQUANTITY;
    private double CARTTOTALPRICE;
    private String CWORKID;

    public cart() {
        super();
    }

    public cart(int CARTID, int MENUID, String STUDENTID, double CARTPRICE, int CARTQUANTITY, double CARTTOTALPRICE, String CWORKID) {
        super();
        this.CARTID = CARTID;
        this.MENUID = MENUID;
        this.STUDENTID = STUDENTID;
        this.CARTPRICE = CARTPRICE;
        this.CARTQUANTITY = CARTQUANTITY;
        this.CARTTOTALPRICE = CARTTOTALPRICE;
        this.CWORKID = CWORKID;
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

    public String getSTUDENTID() {
        return STUDENTID;
    }

    public void setSTUDENTID(String STUDENTID) {
        this.STUDENTID = STUDENTID;
    }

    public double getCARTPRICE() {
        return CARTPRICE;
    }

    public void setCARTPRICE(double CARTPRICE) {
        this.CARTPRICE = CARTPRICE;
    }

    public int getCARTQUANTITY() {
        return CARTQUANTITY;
    }

    public void setCARTQUANTITY(int CARTQUANTITY) {
        this.CARTQUANTITY = CARTQUANTITY;
    }

    public double getCARTTOTALPRICE() {
        return CARTTOTALPRICE;
    }

    public void setCARTTOTALPRICE(double CARTTOTALPRICE) {
        this.CARTTOTALPRICE = CARTTOTALPRICE;
    }

    public String getCWORKID() {
        return CWORKID;
    }

    public void setCWORKID(String CWORKID) {
        this.CWORKID = CWORKID;
    }
}
