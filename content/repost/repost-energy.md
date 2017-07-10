/*
Title: How the Repost Emission works - Repost Energy
*/

Not every Repost needs to be reposted. Some articles are too old, some articles are not interesting enough, some reposts are too fresh.

Under the hood, Repost defines an **energy** for every single article of your library. This energy is also different for one social profile to other.

When the Repost Energy is higher than a certain threshold, the associated content is *mature* and it is ready to be reposted. It will wait in the Repost queue until

## The Repost queue
All the articles above a certain threshold are put in a waiting line. The first guy in the row is the one with more energy. 

Every minute, we check if you have an available [repost slot](/repost/repost-slot). If it is the case, we take the first item in the waiting line (the one with the higher Repost Energy) and we publish it on your social profile.

When a repost is emitted, its energy drops to zero. It goes out of the waiting queue and waits until his energy grows again.

## How grows the Repost Energy
The Repost Energy is computed on a range of various parameters. Basically, a post that 

