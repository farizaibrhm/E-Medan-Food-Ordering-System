package emfos;

import java.sql.Date;
import java.sql.Timestamp;

public class feedback {
    private String FEEDBACKID;
    private String FEEDBACKMESSAGE;
    private java.sql.Date FEEDBACKDATE;
    private java.sql.Timestamp FEEDBACKTIME;

    public feedback(){
        super();
    }

    public feedback(String FEEDBACKID , String FEEDBACKMESSAGE,  Date FEEDBACKDATE , Timestamp FEEDBACKTIME){
        super();
        this.FEEDBACKID = FEEDBACKID;
        this.FEEDBACKMESSAGE = FEEDBACKMESSAGE;
        this.FEEDBACKDATE = Date.valueOf(String.valueOf(FEEDBACKDATE));
        this.FEEDBACKTIME = Timestamp.valueOf(String.valueOf(FEEDBACKTIME));
    }

    public String getFEEDBACKID(){
        return FEEDBACKID;
    }

    public void setFEEDBACKID(String FEEDBACKID){
        this.FEEDBACKID = FEEDBACKID;
    }

    public String getFEEDBACKMESSAGE(){
        return  FEEDBACKMESSAGE;
    }

    public void setFEEDBACKMESSAGE(String FEEDBACKMESSAGE){
        this.FEEDBACKMESSAGE = FEEDBACKMESSAGE;
    }

    public Date getFEEDBACKDATE(){
        return FEEDBACKDATE;
    }

    public void setFEEDBACKDATE(Date FEEDBACKDATE){
        this.FEEDBACKDATE = FEEDBACKDATE;
    }

    public Timestamp getFEEDBACKTIME(){
        return FEEDBACKTIME;
    }

    public void setFEEDBACKTIME(Timestamp FEEDBACKTIME){
        this.FEEDBACKTIME = FEEDBACKTIME;
    }

}

