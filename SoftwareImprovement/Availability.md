# Availability

Service Availability is something that comes up for discussion (or should) in
every SLA. As a dependent, you are looking to get 100% availability from any
dependency you might have. As the dependency however, you should at best shoot
for 99.99%. You should always enforce a failure at some point. This is because
100% Availability is a pipe dream, and you should never have your dependents
rely on it.

## 100% is a Fallacy

At some point your service will fail. I don't care how good you are, or how much
time you've spent to make sure it doesn't happen, it will fail. The reason for
this is because even if you are literally perfect, you have dependencies. The
network, another service, an api, a server, there is always something that you
depend on that will also have to have 100% availability for you to have 100%.

## Failover

If you first ensure your SLAs only go up to 99.99% availability, you should use
that .01% to make sure your dependents have a failover in place. At the point
you go down, you want to make sure they continue to work. You can't (probably
can't) write their code for them, but you can tell them you are going to have
downtime, and force them to make sure they can work properly without you. This
has side benefits besides just piece of mind. If dependents can work without
you, that also means you can push api breaking changes with less fear and more
of an iron fist. I'm not suggesting you should break api compatibility without
any thought, but sometimes it is required. Software ages, and sometimes it
doesn't age well. In those cases a new API might be necessary, and if you can't
get clients to move off of it, then you might be stuck in a legacy codebase that
will become more and more unmanageable over time.