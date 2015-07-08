---
layout: page
title: injections/update
section-title: Injections
section-description: Manage CRUD actions for insulin injections.
method-title: injections/update
---

#### DESCRIPTION
<p class="message">Update a specific medication injection.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/injections/:id
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
>On success, response code 200. A json-encoded object with updated injection record.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
{
    "id": 51,
    "num_of_units_taken": 10,
    "category": "bolus",
    "user_id": 1,
    "created_at": "2015-07-07T18:33:40.759Z",
    "updated_at": "2015-07-07T18:33:40.759Z"
}
{% endhighlight %}
