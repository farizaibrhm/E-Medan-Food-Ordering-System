package emfos.Model;

public class order {
    private int ORDERID;
    private int ORDERNO;
    private String ORDERDATE;
    private String ORDERTIME;
    private String ORDERSTATUS;
    private double ORDERTPRICE;
    private String STUDENTID;

    public order(){
        super();
    }

    public order(int ORDERID, int ORDERNO, String ORDERDATE, String ORDERTIME, String ORDERSTATUS, double ORDERTPRICE, String STUDENTID) {
        super();
        this.ORDERID = ORDERID;
        this.ORDERNO = ORDERNO;
        this.ORDERDATE = ORDERDATE;
        this.ORDERTIME = ORDERTIME;
        this.ORDERSTATUS = ORDERSTATUS;
        this.ORDERTPRICE = ORDERTPRICE;
        this.STUDENTID = STUDENTID;
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
}
