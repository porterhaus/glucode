---
layout: page
title: auth/signin
section-title: Authentication
section-description: App authentication is handled using token-key requests set via the AUTHORIZATION header in order to maintain stateless transactions. A User is assigned a token-key on account creation.
method-title: auth/signin
---

#### DESCRIPTION
<p class="message">Submit user credentials based-64 encoded via BASIC auth. Obtain the user token-key for authenticating all additional session transactions.</p>

#### URL STRUCTURE
{% highlight php %}
https://glucode.com/api/auth/signin
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
      <td>Basic email:password(base-64 encoded)</td>
    </tr>
  </tbody>
</table>

#### PARAMETERS
<table>
  <tbody>
    <tr>
      <td><strong>Email</strong></td>
      <td><em>required</em></td>
      <td>User's email address.</td>
    </tr>
    <tr>
      <td><strong>Password</strong></td>
      <td><em>required</em></td>
      <td>User's password.</td>
    </tr>
  </tbody>
</table>

#### RETURN OBJECT
>On success, response code 200. A json-encoded 'authenticated_user' object with proper crendentials.

>On fail, response code 422. A json-encoded error object that includes the message: 'Invalid email or password'.

{% highlight js %}
{
    "authenticated_user": {
        "id": 1,
        "email": "johndoe@gmail.com",
        "role": "user",
        "auth_token": "b876d3e60d7645b629c84c76a4aee438",
        "created_at": "2015-06-21T18:58:53.730Z",
        "updated_at": "2015-06-27T14:17:33.143Z",
        "name": "John Doe"
    }
}
{% endhighlight %}
