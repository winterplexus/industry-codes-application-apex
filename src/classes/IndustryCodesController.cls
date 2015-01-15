/**
 *  Industry codes menu controller class.
 *
 *  Copyright (c) Wiregrass Code Technology 2014-15
 */
public with sharing class IndustryCodesController {

    public String method { get; set; }

    public IndustryCodesController() {
        method = '1';
    }

    public PageReference next() {
        PageReference redirect = null;
        if (method.Equals('1')) {
            redirect = new PageReference('/apex/IndustrySearchCode');
        }
        else if (method.Equals('2')) {
            redirect = new PageReference('/apex/IndustrySearchSelection');
        }
        else {
            redirect = new PageReference('/apex/IndustrySearchKeyword');
        }
        redirect.setRedirect(true);
        return redirect;
    }
}