---
contentClass: 'gap-6'
---

# What are local and remote<br>MCP servers?

::content::

<div>

### local MCP server

```mermaid {scale: 0.8}
flowchart LR
  subgraph U["user machine"]
    direction LR
    H["LLM application<br/>(MCP host)"]
    C["MCP client"]
    S["MCP server"]

    H --> C
    C <-->|"MCP / stdio"| S
  end

  G@{ img: "/brands/github.svg", label: "GitHub", pos: "b", h: 42, constraint: "on" }
  S <-->|"GitHub API"| G

  classDef brand fill:transparent,stroke:transparent,stroke-width:0px;
  class G brand;
```

</div>

<div>

### remote MCP server

```mermaid {scale: 0.8}
flowchart LR
  subgraph U["user machine"]
    direction LR
    H["LLM application<br/>(MCP host)"]
    C["MCP client"]
    H --> C
  end

  subgraph P["remote machine"]
    S["MCP server"]
  end

  G@{ img: "/brands/github.svg", label: "GitHub", pos: "b", h: 42, constraint: "on" }

  C <-->|"MCP / Streamable HTTP"| S
  S <-->|"GitHub API"| G

  classDef brand fill:transparent,stroke:transparent,stroke-width:0px;
  class G brand;
```

</div>
