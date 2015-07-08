---
layout: page
title: injections/all
section-title: Injections
section-description: Manage CRUD actions for insulin injections.
method-title: injections/all
---

#### DESCRIPTION
<p class="message">Return all of the User's injection records, ordered by 'created_at'. Currently, returns all of the records as a json-encoded object. <em>Next version will implement paginated and scoped results.</em></p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/injections
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
>On success, response code 200. A json-encoded 'injections' object with associated records.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
"injections": [
        {
            "id": 41,
            "num_of_units_taken": 8,
            "category": "basal",
            "user_id": 1,
            "created_at": "2015-06-21T18:58:55.963Z",
            "updated_at": "2015-06-21T18:58:55.963Z"
        },
        {
            "id": 44,
            "num_of_units_taken": 8,
            "category": "basal",
            "user_id": 1,
            "created_at": "2015-06-21T18:58:55.974Z",
            "updated_at": "2015-06-21T18:58:55.974Z"
        }
    ]
{% endhighlight %}
