package com.example.emedan_food_ordering_system;

import java.sql.Blob;

public class Menu
{
    private String MENUID;
    private String MENUNAME;
    private String MENUIMAGE;
    private String MENUDESC;
    private double MENUPRICE;
    private String MENUTYPE;
//    private int CWORKID;

    public Menu(String MENUID, String MENUNAME, String MENUIMAGE, String MENUDESC, double MENUPRICE, String MENUTYPE) {
        this.MENUID = MENUID;
        this.MENUNAME = MENUNAME;
        this.MENUIMAGE = MENUIMAGE;
        this.MENUDESC = MENUDESC;
        this.MENUPRICE = MENUPRICE;
        this.MENUTYPE = MENUTYPE;
//        this.CWORKID = CWORKID;
    }

    public String getMENUID() {
        return MENUID;
    }

    public void setMENUID(String MENUID) {
        this.MENUID = MENUID;
    }

    public String getMENUNAME() {
        return MENUNAME;
    }

    public void setMENUNAME(String MENUNAME) {
        this.MENUNAME = MENUNAME;
    }

    public String getMENUIMAGE() {
        return MENUIMAGE;
    }

    public void setMENUIMAGE(String MENUIMAGE) {
        this.MENUIMAGE = MENUIMAGE;
    }

    public String getMENUDESC() {
        return MENUDESC;
    }

    public void setMENUDESC(String MENUDESC) {
        this.MENUDESC = MENUDESC;
    }

    public double getMENUPRICE() {
        return MENUPRICE;
    }

    public void setMENUPRICE(double MENUPRICE) {
        this.MENUPRICE = MENUPRICE;
    }

    public String getMENUTYPE() {
        return MENUTYPE;
    }

    public void setMENUTYPE(String MENUTYPE) {
        this.MENUTYPE = MENUTYPE;
    }
}
