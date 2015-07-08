---
layout: page
title: meals/create
section-title: Meals
section-description: Manage CRUD actions for carbohydrate intake.
method-title: meals/create
---

#### DESCRIPTION
<p class="message">Create a new meal entry.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/meals
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
>On success, response code 201. A json-encoded object with new meal record.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
{
    "id": 51,
    "name": "breakfast",
    "carbohydrates": 120,
    "description": "Turkey sandwich and baked lays.",
    "user_id": 1,
    "created_at": "2015-07-07T19:05:21.130Z",
    "updated_at": "2015-07-07T19:05:21.130Z"
}
{% endhighlight %}
