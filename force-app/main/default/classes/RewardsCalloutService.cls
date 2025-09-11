public class RewardsCalloutService {
    private static final String POST = 'POST';
    private static final String GET = 'GET';
    
    public static Integer submitUsersForRewardCallout(String jsonBody) {
        //Set Endpoint from Named Credential
        HttpRequest request = new HttpRequest();
        request.setMethod(POST);
        request.setEndpoint('callout:IntegrationSB__BalancedLiving/rewards');
        request.setBody(jsonBody);

        //Make HTTP Callout
        HttpResponse response = new Http().send(request);

        //Update to return response status code
        System.debug('mydebug :: response.getBody(): ' + response.getBody());
        System.debug('mydebug :: response.getStatus(): ' + response.getStatus());
        System.debug('mydebug :: response.getStatusCode(): ' + response.getStatusCode());
        return response.getStatusCode();
    }
}
// RewardsCalloutService.submitUsersForRewardCallout('{"some false JSON Body": "not a real request body"}');