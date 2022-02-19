package emfos.Model;

public class image {
    private int imageid;
    private String imagename;

    public image(int imageid, String imagename) {
        this.imageid = imageid;
        this.imagename = imagename;
    }

    public int getImageid() {
        return imageid;
    }

    public void setImageid(int imageid) {
        this.imageid = imageid;
    }

    public String getImagename() {
        return imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }
}
