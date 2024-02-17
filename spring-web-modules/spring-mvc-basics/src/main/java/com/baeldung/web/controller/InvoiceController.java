package com.baeldung.web.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.baeldung.model.Invoice;

import javax.validation.Valid;

@Controller
public class InvoiceController {
    Map<Long, Invoice> invoiceMap = new HashMap<>();

    @ModelAttribute("invoice")
    public void initInvoice() {
        invoiceMap.put(1L, new Invoice(125, "Patatas", 25, 5, new Date(124, 1, 25), 0));
        invoiceMap.put(2L, new Invoice(126, "Tomates", 50, 10, new Date(124, 1, 26), 0));
        invoiceMap.put(3L, new Invoice(127, "Peras", 10, 20, new Date(124, 1, 27), 0));
    }

    @RequestMapping(value = "/invoice", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("invoiceHome", "invoice", new Invoice());
    }

    @RequestMapping(value = "/invoice/{Code}", produces = { "application/json", "application/xml" }, method = RequestMethod.GET)
    public @ResponseBody Invoice getInvoiceByCode(@PathVariable final Long Code) {
        return invoiceMap.get(Code);
    }

    @RequestMapping(value = "/addInvoice", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("invoice") final Invoice invoice, final BindingResult result, final ModelMap model) {
        if (result.hasErrors()) {
            return "/invoiceHome";
        }
        model.addAttribute("code", invoice.getCode());
        model.addAttribute("concept", invoice.getConcept());
        model.addAttribute("amount", invoice.getAmount());
        model.addAttribute("retention", invoice.getRetention());
        model.addAttribute("date", invoice.getDate());
        model.addAttribute("amountTotal", invoice.getAmountTotal());

        //invoiceMap.put(invoice.getCode(), invoice);

        return "invoiceView";
    }

    @ModelAttribute
    public void addAttributes(final Model model) {
        model.addAttribute("msg", "Invoice issued!");
    }
}
