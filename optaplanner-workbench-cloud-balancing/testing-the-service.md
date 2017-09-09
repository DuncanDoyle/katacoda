With our *Decision Server* deployed, we can now start planning our Cloud Balancing problems. As our *Decision Server* exposes a REST API, we can simply test our service using `cURL` (any other REST client can of course be used, but `cURL` is easy to use in this Katacoda environment).

We first need to determine the endpoint exposed by our application's *Route*.

`oc get route`{{copy}}


Once the DecisionServer with our project has been deployed, we can send it a Cloud Balancing problem in the form of an unsolved `CloudBalancingSolution` instance. We can use the following cURL command to send a *Cloud Balancing Solution* request to the server:

`curl -u brpAdmin:jbossbrp@01 -X POST -H "Accept: application/xml" -H "Content-Type: application/xml" -H "X-KIE-ContentType: XSTREAM" -H "X-KIE-ClassType: optaplanner.cloud_balancing.CloudBalancingSolution" -d '<optaplanner.cloud__balancing.CloudBalancingSolution><processes>
    <optaplanner.cloud__balancing.Process><id>1</id><requiredCpu>2</requiredCpu></optaplanner.cloud__balancing.Process><optaplanner.cloud__balancing.Process><id>2</id><requiredCpu>1</requiredCpu></optaplanner.cloud__balancing.Process><optaplanner.cloud__balancing.Process><id>3</id><requiredCpu>3</requiredCpu></optaplanner.cloud__balancing.Process><optaplanner.cloud__balancing.Process><id>4</id><requiredCpu>1</requiredCpu><optaplanner.cloud__balancing.Process></processes><computers><optaplanner.cloud__balancing.Computer><id>1</id><cpu>4</cpu><cost>300</cost></optaplanner.cloud__balancing.Computer><optaplanner.cloud__balancing.Computer><id>2</id><cpu>5</cpu><cost>500</cost></optaplanner.cloud__balancing.Computer><optaplanner.cloud__balancing.Computer><id>3</id><cpu>6</cpu><cost>700</cost></optaplanner.cloud__balancing.Computer></computers></optaplanner.cloud__balancing.CloudBalancingSolution>' http://cloud-balancing-cloud-balancing.[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/kie-server/services/rest/server/containers/instances/container-cloudbalancing-100`{{copy}}

Because the inline JSON in the cUrl command is a bit hard to read, we have printed the formatted JSON request below:

```
<optaplanner.cloud__balancing.CloudBalancingSolution>
  <processes>
    <optaplanner.cloud__balancing.Process>
      <id>1</id>
      <requiredCpu>2</requiredCpu>
    </optaplanner.cloud__balancing.Process>
    <optaplanner.cloud__balancing.Process>
      <id>2</id>
      <requiredCpu>1</requiredCpu>
    </optaplanner.cloud__balancing.Process>
    <optaplanner.cloud__balancing.Process>
      <id>3</id>
      <requiredCpu>3</requiredCpu>
    </optaplanner.cloud__balancing.Process>
    <optaplanner.cloud__balancing.Process>
      <id>4</id>
      <requiredCpu>1</requiredCpu>
    </optaplanner.cloud__balancing.Process>
  </processes>
  <computers>
    <optaplanner.cloud__balancing.Computer>
      <id>1</id>
      <cpu>4</cpu>
      <cost>300</cost>
    </optaplanner.cloud__balancing.Computer>
    <optaplanner.cloud__balancing.Computer>
      <id>2</id>
      <cpu>5</cpu>
      <cost>500</cost>
    </optaplanner.cloud__balancing.Computer>
    <optaplanner.cloud__balancing.Computer>
      <id>3</id>
      <cpu>6</cpu>
      <cost>700</cost>
    </optaplanner.cloud__balancing.Computer>
  </computers>
</optaplanner.cloud__balancing.CloudBalancingSolution>
```

This XML request is the *XStream* representation of our BRP/OptaPlanner `CloudBalancingSolution` in which we have defined 4 *Processes* to be assigned to 3 *Computers* in the most optimal way possible. The response will look like this:

```

```

We can see that Processes 1 and 2 have been assigned to Computer 1 and Processes 3 and 4 have been assigned to Computer 2. We can also see that we have a *hard-score* of 0, which means that our solution is feasible (i.e. the processes have been assigned in such a way that they don't overload the computers' CPU capacity). We also have a *soft-score* of -800. As we know, the *soft-score* is defined by the total costs of the comuters to which ate least 1 process has been assigned. In this example, computer 1 and 3 are being used, which results in a total cost of 300 + 500 = 800.

More examples of Business Resource Planner/OptaPlanner are available on the [OptaPlanner website](https://www.optaplanner.org).
