issueID="CICD-13"
progress_label="Started"

curl --location --request PUT "https://mstale-test.atlassian.net/rest/api/latest/issue/$issueID" \
--header "Authorization: Basic bXN0YWxlMjBAZ21haWwuY29tOkhKbFRSQ1B3YmRHMnhabVBIbnhPQUEyRA==" \
--header "Content-Type: application/json" \
--header "Cookie: atlassian.xsrf.token=0091613a-2f0c-4110-9e7d-e5a54c0043cc_dbad10d278241a919ef7170a9fbe49cc69862710_lin" \
--data-raw '{
   "fields": {
       "customfield_10035":"www.change.com"
   }
}'