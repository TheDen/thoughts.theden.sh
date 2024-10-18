---
title: "A List of What's Wrong with MS Teams"
date: "2024-10-18"
draft: false
---

## The UI and Navigation

- Keyboard shortcuts aren't clear, or at least not encouraged. In other chat apps, at least on MacOS, hitting `CMD + ?` shows a shortcut window. I still don't know how to switch between chats in MS Teams (in Slack it's `Option+up/down`
- Keyboard navigation in general is poor, I end up using the mouse more than I need to.
- Teams has `Chat` and `Teams` tabs, where "team" chats/posts are in `Teams` but group, DM, and meeting chats aren't in `Teams`. I mostly leave the `Chat` tab open to respond to groups chats. Routinely missing important messages in `Teams` because it's completely hidden under a different tab.
- To search chat (or their titles, AFAIK, it's not clear) you use the filter icon.
- But not the content of the chat. You have to use the search bar at the top.

## Scrollback in Chat Windows

If you scroll up in a chat, there are a few issues

- The content loads too slow. In Slack, Signal, WhatsApp etc., you can smoothly scroll up and the content will load without impeding the user's velocity. In Teams, it pauses, you get a loading icon, and placeholders. From a UX perspective, it feels slow.
- There is no button to go back to the latest message. Users have to hit the `End` key.
- Scrolling back _down_ loads the content again. Switching chats loads everything again. I'm not if they're not being cached or Teams is trying reduce it's already bloated memory usage. It may not be slow, but it _feels_ slow.

## Unintuitive Message Box

- When clicking reply to a message it'll put it below your text if it's the first line. You have to navigate the cursor all the time to organise messages because Teams mis-orders additional content.
- Switching between two chats there's always pop-in when loading. I'm not sure if Teams is not caching enough, or the redraw is slow, but every animation is choppy.

## It's the Little Things

This is nowhere near an exhaustive list, just what I was able to recall while writing this post. The idea is that these small UI annoyance, the ugly UI, the cringe emojis — we all have to deal with these every time we use Teams, sometimes at the worst possible times when any annoyance feels much worse to us.

The sad part is, these issues are solved in many other chat programs, and MSFT has the talent to solve them — but here we are, every day, all cumulatively dealing with these tiny UX paper cuts every second across the world, all because MSFT does not care.

Steve Job said a lot of things, but I think he was right here:

> The only problem with Microsoft is that they just have no taste. They have absolutely no taste. And what that means is - I don't mean that in a small way. I mean that in a big way. They don't think of original ideas and don't bring much culture into their products.
