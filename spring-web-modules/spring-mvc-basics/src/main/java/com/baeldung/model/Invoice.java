package com.baeldung.model;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

@XmlRootElement
public class Invoice {

    private long code;
    private String concept;
    private double amount;
    private double retention;
    private Date date;

    public Invoice() {
        super();
    }

    public Invoice(final long code, final String concept, final double amount, final double retention, final Date date,
                   final double amountTotal) {
        this.code = code;
        this.concept = concept;
        this.amount = amount;
        this.retention = retention;
        this.date = date;
    }

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getConcept() {
        return concept;
    }

    public void setConcept(String concept) {
        this.concept = concept;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public double getRetention() {
        return retention;
    }

    public void setRetention(double retention) {
        this.retention = retention;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }


    public double getAmountRet() {return (amount*retention)/100; }
    public double getAmountTotal() {return amount - getAmountRet(); }


    @Override
    public String toString() {
        return "Invoice [code=" + code + ", concept=" + concept + ", amount=" + amount + ", retention=" + retention + ", " +
                "date=" + date + ", amountTotal=" + getAmountTotal() +"]";
    }

}
