package com.baeldung.model;

import org.springframework.format.annotation.DateTimeFormat;
import javax.validation.constraints.*;

import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

@XmlRootElement
public class Invoice {
    @NotNull(message = "Introduce un codigo")
    @Min(value = 1, message = "{code.notblank}")
    private long code;
    @NotBlank(message = "{concep.notblank}")
    private String concept;
    @DecimalMin(value = "0.1", message = "{amount.notnull}")
    private double amount;
    private double retention;
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @NotNull(message = "{date.notempty}")
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
