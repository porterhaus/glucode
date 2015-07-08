---
layout: page
title: meals/update
section-title: Meals
section-description: Manage CRUD actions for blood glucose tests.
method-title: meals/update
---

#### DESCRIPTION
<p class="message">Update a specific bgtest.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/meals/:id
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
      <td>[integer] The record id.</td>
    </tr>
    <tr>
      <td><strong>name</strong></td>
      <td><em>required</em></td>
      <td>[string] Ex. Breakfast, Lunch, Snack</td>
    </tr>
    <tr>
      <td><strong>carbohydrates</strong></td>
      <td><em>required</em></td>
      <td>[integer] The total number of carbohydrates</td>
    </tr>
    <tr>
      <td><strong>Description</strong></td>
      <td><em>Not required</em></td>
      <td>[text] A description of the meal</td>
    </tr>
  </tbody>
</table>

#### RETURN OBJECT
>On success, response code 200. A json-encoded object with an updated meal record.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
{
    "id": 51,
    "name": "breakfast",
    "carbohydrates": 120,
    "description": "Turkey sandwich and baked lays and a pickle.",
    "user_id": 1,
    "created_at": "2015-07-07T19:05:21.130Z",
    "updated_at": "2015-07-07T19:08:01.858Z"
}
{% endhighlight %}
