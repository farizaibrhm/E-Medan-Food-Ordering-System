package emfos.Model;

public class feedback {

    private int FEEDBACKID;
    private String FEEDBACKMESSAGE;
    private String FEEDBACKDATE;
    private String FEEDBACKTIME;
    private int ORDERID;

    public feedback() {
        super();
    }

    public feedback(int FEEDBACKID, String FEEDBACKMESSAGE, String FEEDBACKDATE, String FEEDBACKTIME, int ORDERID) {
        super();
        this.FEEDBACKID = FEEDBACKID;
        this.FEEDBACKMESSAGE = FEEDBACKMESSAGE;
        this.FEEDBACKDATE = FEEDBACKDATE;
        this.FEEDBACKTIME = FEEDBACKTIME;
        this.ORDERID = ORDERID;
    }

    public int getFEEDBACKID() {
        return FEEDBACKID;
    }

    public void setFEEDBACKID(int FEEDBACKID) {
        this.FEEDBACKID = FEEDBACKID;
    }

    public String getFEEDBACKMESSAGE() {
        return FEEDBACKMESSAGE;
    }

    public void setFEEDBACKMESSAGE(String FEEDBACKMESSAGE) {
        this.FEEDBACKMESSAGE = FEEDBACKMESSAGE;
    }

    public String getFEEDBACKDATE() {
        return FEEDBACKDATE;
    }

    public void setFEEDBACKDATE(String FEEDBACKDATE) {
        this.FEEDBACKDATE = FEEDBACKDATE;
    }

    public String getFEEDBACKTIME() {
        return FEEDBACKTIME;
    }

    public void setFEEDBACKTIME(String FEEDBACKTIME) {
        this.FEEDBACKTIME = FEEDBACKTIME;
    }

    public int getORDERID() {
        return ORDERID;
    }

    public void setORDERID(int ORDERID) {
        this.ORDERID = ORDERID;
    }
}
