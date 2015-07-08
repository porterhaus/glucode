---
layout: page
title: bgtests/create
section-title: BgTest
section-description: Manage CRUD actions for blood glucose tests.
method-title: bgtests/create
---

#### DESCRIPTION
<p class="message">Create a new blood glucose test entry.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/bgtests
{% endhighlight %}

#### HTTP METHOD
{% highlight php %}
POST
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
      <td>User token-key</td>
    </tr>
  </tbody>
</table>

#### PARAMETERS
<table>
  <tbody>
    <tr>
      <td><strong>value</strong></td>
      <td><em>required</em></td>
      <td>[integer] The value of the test</td>
    </tr>
    <tr>
      <td><strong>category</strong></td>
      <td><em>required</em></td>
      <td>[string] Ex. Control, Pre-meal, Exercise(light) ...</td>
    </tr>
    <tr>
      <td><strong>time_of_day</strong></td>
      <td><em>required</em></td>
      <td>[string] Ex. Before breakfast, After breakfast ...</td>
    </tr>
    <tr>
      <td><strong>comments</strong></td>
      <td><em>not required</em></td>
      <td>[text] Comments regarding testing conditions.</td>
    </tr>
  </tbody>
</table>

#### RETURN OBJECT
>On success, response code 201. A json-encoded object with new test record.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
{
    "id": 55,
    "value": 189,
    "category": "smbg",
    "time_of_day": "Before lunch",
    "comments": "Did not eat breakfast.",
    "user_id": 1,
    "created_at": "2015-07-07T17:05:37.404Z",
    "updated_at": "2015-07-07T17:05:37.404Z"
}
{% endhighlight %}
