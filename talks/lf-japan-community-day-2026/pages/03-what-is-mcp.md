# What is MCP?

<div class="flex-1 min-h-0 flex flex-col justify-center">

<div class="mb-6 text-center text-xl font-semibold">

LLM applicationから外部システムの機能やデータを利用するための共通プロトコル

</div>

```mermaid
flowchart LR
  subgraph H["LLM application (MCP host)"]
    direction TB
    A["LLM / agent logic"]
    C1["MCP client"]
    C2["MCP client"]

    A --> C1
    A --> C2
  end

  S1["GitHub<br/>MCP server"]
  S2["Notion<br/>MCP server"]

  G@{ img: "/brands/github.svg", label: "GitHub", pos: "b", h: 48, constraint: "on" }
  N@{ img: "/brands/notion.svg", label: "Notion", pos: "b", h: 48, constraint: "on" }

  C1 <-->|"MCP"| S1
  C2 <-->|"MCP"| S2

  S1 <-->|"GitHub API"| G
  S2 <-->|"Notion API"| N

  classDef brand fill:transparent,stroke:transparent,stroke-width:0px;
  class G,N brand;
```

<div class="mt-6 text-center text-xl">

サービス固有のAPI連携はMCP serverが担い<br>
LLM application側は共通のプロトコルで各サービスの機能を利用できる

</div>

</div>
