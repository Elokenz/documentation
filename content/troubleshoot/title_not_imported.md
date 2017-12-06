/*
Title: Why my content is not correctly imported
*/

Sometimes Elokenz can have trouble to import your content. Or your content might be imported, but extracted information is incorrect.

## Content not imported

If your content is not imported, the most frequent reason is because your site did not respond in time. In fact, Elokenz fetches pages during a limited time and if your page doesn't answer fast enough, it might just stop querying it.

You need to make sure that your page can respond in less than 10 seconds (we mean here server response, not the entire page load).

## My title is missing or wrong

Elokenz extract a title from your code source. It will look for various tags in your code to get the correct value. Elokenz will look for the following tags to extract your title:

* `<title>`: standard html title tag
* `<meta property="og:title">`: Facebook Open Graph title tag

Once the title is extracted, elokenz will try to remove boilerplate data (like your sitename)

Check that these tags reflect what you are seing on Elokenz.

