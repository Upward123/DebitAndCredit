package com.duoModule.dto;

public class UserInfoSaveDto {

    private String phonenumber;
    private Long currentdiplomas;
    private Long currentincome;
    private Long currentmarry;
    private Long currentchild;
    private Long currenthouse;

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public Long getCurrentdiplomas() {
        return currentdiplomas;
    }

    public void setCurrentdiplomas(Long currentdiplomas) {
        this.currentdiplomas = currentdiplomas;
    }

    public Long getCurrentincome() {
        return currentincome;
    }

    public void setCurrentincome(Long currentincome) {
        this.currentincome = currentincome;
    }

    public Long getCurrentmarry() {
        return currentmarry;
    }

    public void setCurrentmarry(Long currentmarry) {
        this.currentmarry = currentmarry;
    }

    public Long getCurrentchild() {
        return currentchild;
    }

    public void setCurrentchild(Long currentchild) {
        this.currentchild = currentchild;
    }

    public Long getCurrenthouse() {
        return currenthouse;
    }

    public void setCurrenthouse(Long currenthouse) {
        this.currenthouse = currenthouse;
    }

    @Override
    public String toString() {
        return "UserInfoSaveDto{" +
                "phonenumber='" + phonenumber + '\'' +
                ", currentdiplomas=" + currentdiplomas +
                ", currentincome=" + currentincome +
                ", currentmarry=" + currentmarry +
                ", currentchild=" + currentchild +
                ", currenthouse=" + currenthouse +
                '}';
    }
}
