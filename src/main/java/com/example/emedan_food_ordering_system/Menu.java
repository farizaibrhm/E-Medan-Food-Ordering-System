package com.example.emedan_food_ordering_system;

public class Menu {
    private String MENUID;
    private String MENUNAME;
    private String fileName;
    private String savePath;
    private String MENUDESC;
    private double MENUTPRICE;
    private String MENUTYPE;

    public Menu() {
    }

    public Menu(String MENUNAME, String fileName, String savePath, String MENUDESC, double MENUTPRICE, String MENUTYPE) {
        super();
        this.MENUNAME = MENUNAME;
        this.fileName = fileName;
        this.savePath = savePath;
        this.MENUDESC = MENUDESC;
        this.MENUTPRICE = MENUTPRICE;
        this.MENUTYPE = MENUTYPE;
    }

    public Menu(String MENUID, String MENUNAME, String fileName, String savePath, String MENUDESC, double MENUTPRICE, String MENUTYPE) {
        this.MENUID = MENUID;
        this.MENUNAME = MENUNAME;
        this.fileName = fileName;
        this.savePath = savePath;
        this.MENUDESC = MENUDESC;
        this.MENUTPRICE = MENUTPRICE;
        this.MENUTYPE = MENUTYPE;
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

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public String getMENUDESC() {
        return MENUDESC;
    }

    public void setMENUDESC(String MENUDESC) {
        this.MENUDESC = MENUDESC;
    }

    public double getMENUTPRICE() {
        return MENUTPRICE;
    }

    public void setMENUTPRICE(double MENUTPRICE) {
        this.MENUTPRICE = MENUTPRICE;
    }

    public String getMENUTYPE() {
        return MENUTYPE;
    }

    public void setMENUTYPE(String MENUTYPE) {
        this.MENUTYPE = MENUTYPE;
    }

}
