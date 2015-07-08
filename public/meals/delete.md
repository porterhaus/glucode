---
layout: page
title: meals/delete
section-title: Meals
section-description: Manage CRUD actions for carbohydrate intake.
method-title: meals/delete
---

#### DESCRIPTION
<p class="message">Delete a specific meal record.</p>

#### URL STRUCTURE
{% highlight php %}
https://api.glucode.com/bgtests/:id
{% endhighlight %}

#### HTTP METHOD
{% highlight php %}
DELETE
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
      <td><strong>id</strong></td>
      <td><em>required</em></td>
      <td>[integer] The id of the record</td>
    </tr>
  </tbody>
</table>

#### RETURN OBJECT
>On success, response code 204. No content.

>On fail, response code 422. A json-encoded 'errors' object.

{% highlight js %}
{
None.
}
{% endhighlight %}
