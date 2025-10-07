---
marp: true
title: Model Context Protocol (MCP)
paginate: true
theme: default
---

<!-- _class: lead -->
<!-- _backgroundColor: "#312C31" -->

# 👋 About Me

### **Joshua Frank**
**Co-Founder & Lead Developer – Tesseract Mobile**

I’m a self-taught developer, robotics enthusiast, and AI tinkerer  
based in **St. Louis, Missouri**.  

Over the last decade, I’ve built and launched multiple mobile apps,  
managed GPU inference clusters, and developed open-source tools for  
creative AI workflows — including **MonAI: Art Generator**.

[GitHub – frankjoshua](https://github.com/frankjoshua)
josh@joshfrank.com  

---

## What Is MCP (Model Context Protocol)?

- MCP is a way for AI to work with the tools you already use.  

- Right now, most AIs just talk — you ask something, it answers.  

- MCP lets them actually do things — plug into your calendar, notes, files, or gadgets to help directly.

---

## What Is MCP?

![width:600px](images/mcp-simple-diagram.avif)

- A **standard way** for AI models to connect to real-world tools and data  
- Think of it as a **universal adapter** between models and apps  
- Lets AI safely read info (like calendars or docs) and take action (like creating issues or sending reports)

---

## How Do LLMs Use Tools

<iframe
  width="80%"
  height="400"
  src="https://www.youtube.com/embed/l5wvqKcqL7c"
  title="Meeseeks Example"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  allowfullscreen
></iframe>

- LLMs have no true memory — context must be fed back in.  
- Tool calls are just structured text responses interpreted by the host app.

---

## The Protocol: Core Structure

MCP defines a standard format for exchanging structured information between models and tools.

- **Tools** – callable functions the model can invoke  
- **Resources** – data or context available to the model  
- **Prompts** – reusable prompt templates exposed by tools  

Each is described in a consistent JSON schema, so any LLM or app can discover and use them safely

---

## The Protocol: Utilities & Extensions

Beyond the core objects, MCP supports rich capabilities for real-world use:

- **Completion** – enables interactive experiences and autocompletion  
- **Logging** – structured event logs and telemetry  
- **Pagination** – large results streamed in manageable chunks  
- **Streaming** – continuous updates for long-running tools  

These features make MCP practical for both human-facing and automated systems.

---

## MCP = Tools

- At its core, MCP is a universal way for AI to **use tools.**    
![width:600px](images/the_text_MCP_==_c2144.webp)

---

## How It Works

1. **MCP Server** lists available tools and data schemas  
2. **LLM** chooses the right tool and fills in inputs  
3. **App** executes the call via the MCP server → returns results  
4. **Model** uses that output to continue reasoning  

**Example Flow:**  
> User: “Create a GitHub issue”  
> → Model calls `create_issue(title, body)`  
> → MCP executes → returns link  
> → Model replies: “Issue created: [link]”

---

## MCP vs RAG

- MCP enables bidirectional, tool-aware interactions — the model can call, discover, and use tools or context providers during reasoning.

- RAG is unidirectional — the model retrieves text snippets before generation, but doesn’t interact with tools or update context dynamically.

RAG:  User → Retriever → Model → Output  (one way)
MCP:  User ↔ Model ↔ Tools  (bidirectional)

---

## MCP vs API

- Dynamic discovery – Tools are found and described automatically.

- Context-aware – AI understands when and how to use each tool.

- Plug-and-play – Add or remove tools without changing code.


<!-- presenter: 
Use this slide to emphasize how MCP removes hard-coded integrations.  
Remind them that this means less “API plumbing,” more adaptive AI behavior.
-->

---

## Why It Matters

- No more custom integrations — one shared language for all AI tools  

- Already widely supported across AI platforms

---

## The Compounding Power of Tool Use

- Intelligence grows not by bigger brains but by better tools.  
- **Humans:** writing → science → computers → internet  
- **LLMs:** memory → APIs → specialty models → real-world actuators  
- Each tool amplifies capability, creating a feedback loop.  

![width:400px](images/robot_holding_bone.webp)

---

## Example MCP Tools in Action

- **Productivity & Collaboration:** create and assign tasks, update docs, book meetings  
- **Data & Knowledge Access:** query databases, fetch market data, search wikis  
- **Infrastructure & DevOps:** deploy code, restart servers, run pipelines  
- **Business Ops:** manage tickets, process orders, update CRM  
- **Robotics & IoT:** control sensors, move robotic arms  
- **Specialized Models:** legal, financial, or creative expert calls  

---

## From Concept to Reality

MCP isn’t theoretical — it’s already powering tools you use daily.

---

## MCP in the Wild

- OpenAI – MCP powers ChatGPT’s new Agents SDK, enabling dynamic tool discovery.

- Anthropic – Originator of the protocol, used across Claude and open-source reference servers.

- Figma – Uses MCP to connect design files to developer tools and code systems.

- GitHub / VS Code – Extensions use MCP to let AI agents manage repos, run tests, and write code.

- Community Servers – Open ecosystem of connectors for Slack, Notion, Stripe, PostgreSQL, and more.


---

## MCP Directories

- Over **6,000 services** available  
- [https://www.pulsemcp.com/servers](https://www.pulsemcp.com/servers)
![width:400px](images/A_sleek_and_mode_a5f81.webp)

---

## Demo

- Local in-browser MCP robot face  
- Control a simulated robot through LLM chat and MCP  

![width:600px](images/fry_wants_a_robot.webp)