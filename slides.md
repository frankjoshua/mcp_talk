---
marp: true
theme: default
paginate: true
---

# Context Is the New Compute
Big AI models can think fast, but they’re only as smart as the context and tools we give them.

---

## From Static Answers to Active Agents
- Q&A is solved; action is next.
- Models must read, decide, and **act**.
- Acting requires tools: APIs, services, hardware controls.

<!-- presenter: Emphasize the shift from pure inference to action and why this needs tools. -->

---

## Tools = Dynamic Context
- Tool calls generate new state → new context.
- Without a protocol, updates are slow and fragmented.
- Tools aren’t add-ons—they *are* part of the compute layer.

<!-- presenter: Explain that tool calls themselves create new context, which must be updated immediately. -->

---

## Introducing MCP
- A standard for context and tooling.
- Models discover and request context and tools uniformly.
- Works across vendors—no one-off adapters.

<!-- presenter: Provide a quick definition of Model Context Protocol (MCP) and its purpose. -->

---

## Inside MCP
- Bi-directional streaming for instant updates.
- Capability negotiation for tool discovery.
- Secure, sandboxed execution with audit logs.

<!-- presenter: Outline how MCP enables real-time context flow and secure tool invocation. -->

---

## Example Tool Provider
- Context: live project tasks.
- Tools: `createTask`, `assignTask`, `markDone`.
- Every call triggers an immediate context refresh.

<!-- presenter: Show a demo or describe a scenario where MCP powers a simple but clear tool provider. -->

---

## Security & Governance
- Fine-grained permissions for each tool call.
- Replay and auditing of actions.
- Enterprise-ready guardrails.

<!-- presenter: Stress the importance of safety, logging, and governance in production settings. -->

---

## Scaling the Compute Layer
- Multiplex many providers and models.
- Backpressure and streaming diffs reduce token cost.
- Runs on-prem or hybrid cloud.

<!-- presenter: Cover how MCP scales horizontally and keeps token usage efficient. -->

---

## Business & Ecosystem Impact
- Avoids vendor lock-in.
- Enables a rich ecosystem of reusable context/tool providers.
- Positions MCP as the “HTTP of LLM context.”

<!-- presenter: Highlight how MCP supports an open ecosystem and future growth. -->

---

## Call to Action
- Adopt MCP for new tools and context feeds.
- Contribute providers to the open ecosystem.
- Help define the standard for next-gen intelligent systems.

**Context + Tools = Compute**

<!-- presenter: End with a memorable call to action and reinforce the core slogan. -->