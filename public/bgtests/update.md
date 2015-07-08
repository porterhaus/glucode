---
layout: page
title: bgtests/update
section-title: BgTest
section-description: Manage CRUD actions for blood glucose tests.
method-title: bgtests/update
---

#### DESCRIPTION
<p class="message">Update a specific bgtest.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/bgtests/:id
{% endhighlight %}

#### HTTP METHOD
{% highlight php %}
PUT
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
      <td><strong>id</strong></td>
      <td><em>required</em></td>
      <td>[integer] The id of the test</td>
    </tr>
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
>On success, response code 200. A json-encoded object with updated test.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
{
    "id": 55,
    "value": 189,
    "category": "Pre-meal",
    "time_of_day": "Before lunch",
    "comments": "Ate granola bar.",
    "user_id": 1,
    "created_at": "2015-07-07T17:05:37.404Z",
    "updated_at": "2015-07-07T17:27:38.929Z"
}
{% endhighlight %}
