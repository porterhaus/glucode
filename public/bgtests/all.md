---
layout: page
title: bgtests/all
section-title: BgTest
section-description: Manage CRUD actions for blood glucose tests.
method-title: bgtests/all
---

#### DESCRIPTION
<p class="message">Return all of the User's bgtestr records, ordered by 'created_at'. Currently, returns all of the records as a json-encoded object. <em>Next version will implement paginated and scoped results.</em></p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/bgtests
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
>On success, response code 200. A json-encoded 'bg_tests' object with associated records.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
"bgtests": [
        {
            "id": 54,
            "value": 180,
            "category": "Pre-meal",
            "time_of_day": "Before dinner",
            "comments": "None.",
            "user_id": 1,
            "created_at": "2015-06-28T18:39:03.833Z",
            "updated_at": "2015-06-28T18:39:03.833Z"
        },
        {
            "id": 53,
            "value": 210,
            "category": "Exercise(light)",
            "time_of_day": "After dinner",
            "comments": "Walked three miles on treadmill.",
            "user_id": 1,
            "created_at": "2015-06-28T18:36:15.478Z",
            "updated_at": "2015-06-28T18:36:15.478Z"
        },
...
{% endhighlight %}
