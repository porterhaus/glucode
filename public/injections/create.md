---
layout: page
title: injections/create
section-title: Injections
section-description: Manage CRUD actions for insulin injections.
method-title: injections/create
---

#### DESCRIPTION
<p class="message">Create a new injection entry.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/injections
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
      <td><strong>num_of_units_taken</strong></td>
      <td><em>required</em></td>
      <td>[integer] The number of units of medication.</td>
    </tr>
    <tr>
      <td><strong>category</strong></td>
      <td><em>required</em></td>
      <td>[string] Ex. Basal, Bolus</td>
    </tr>
  </tbody>
</table>

#### RETURN OBJECT
>On success, response code 201. A json-encoded object with new injection record.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
{
    "id": 51,
    "num_of_units_taken": 12,
    "category": "bolus",
    "user_id": 1,
    "created_at": "2015-07-07T18:33:40.759Z",
    "updated_at": "2015-07-07T18:33:40.759Z"
}
{% endhighlight %}
