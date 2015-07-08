---
layout: page
title: auth/signout
section-title: Authentication
section-description: App authentication is handled using token-key requests set via the AUTHORIZATION header in order to maintain stateless transactions. A User is assigned a token-key on account creation.
method-title: auth/signout
---

#### DESCRIPTION
<p class="message">Signs the User out of the session and generates a new token-key on success.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/signout
{% endhighlight %}

#### HTTP METHOD
{% highlight php %}
GET
{% endhighlight %}

#### REQUEST HEADERS
<table>
  <tbody>
    <tr>
      <td><strong>Content-Type</strong></td>
      <td><em>required</em></td>
      <td>application/json</td>
    </tr>
    <tr>
      <td><strong>Authorization</strong></td>
      <td><em>required</em></td>
      <td>User token_key</td>
    </tr>
  </tbody>
</table>

#### PARAMETERS
<table>
  <tbody>
    <tr>
      <td>None.</td>
    </tr>
    </tbody>
</table>

#### RETURN OBJECT
>On success, response code 204. A new random token-key will be generated and assigned to the User profile.


