global with sharing class angular_vfremote_URLaccess implements Site.UrlRewriter {

    global PageReference mapRequestUrl(PageReference myFriendlyUrl){
    	String url = myFriendlyUrl.getUrl();
    	String pageName = url.substringAfterLast('/');

    	PageReference page = new PageReference('/angvfr/'+pageName);
system.debug('page='+page);
    	return page;

    }

    global PageReference[] generateUrlFor(PageReference[] yourSalesforceUrls) {
    	return null;
    }


}
