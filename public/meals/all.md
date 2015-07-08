---
layout: page
title: meals/all
section-title: Meals
section-description: Manage CRUD actions for carbohydrate intake.
method-title: meals/all
---

#### DESCRIPTION
<p class="message">Return all of the User's meal records, ordered by 'created_at'. Currently, returns all of the records as a json-encoded object. <em>Next version will implement paginated and scoped results.</em></p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/meals
{% endhighlight %}

#### HTTP METHOD
{% highlight php %}
GET
{% endhighlight %}

#### REQUEST HEADERS
<table>
  <tbody>
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
      <td>None.</td>
    </tr>
  </tbody>
</table>

#### RETURN OBJECT
>On success, response code 200. A json-encoded 'meals' object with associated tests.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
"meals": [
        {
            "id": 40,
            "name": "breakfast",
            "carbohydrates": 144,
            "description": "Pancakes and bacon.",
            "user_id": 1,
            "created_at": "2015-06-21T18:58:56.268Z",
            "updated_at": "2015-06-21T18:58:56.268Z"
        },
        {
            "id": 46,
            "name": "snack",
            "carbohydrates": 87,
            "description": " A cup of trail mix.",
            "user_id": 1,
            "created_at": "2015-06-21T18:58:56.292Z",
            "updated_at": "2015-06-21T18:58:56.292Z"
        }
    ]
{% endhighlight %}
