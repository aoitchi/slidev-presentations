# protocol-level sessionは<br>リクエストの振り分けを制約する

<div class="flex-1 min-h-0 flex flex-col justify-center">

<div class="mb-3 text-center text-lg">セッションをインスタンス内に保持する場合</div>

<div class="w-11/12 mx-auto">

```mermaid
flowchart LR
  C["MCP client"]

  subgraph P["MCP server provider"]
    direction LR
    R["request router"]

  subgraph S["MCP server instances"]
      direction TB
    A["instance A<br/>session: abc"]
    B["instance B<br/>session: abc ✕"]
    end
  end

    C -->|"① <code>initialize</code>"| R
  R -->|"①"| A
    A -.->|"① <code>MCP-Session-Id: abc</code>"| R

    C -->|"② <code>tools/call</code><br/><code>MCP-Session-Id: abc</code>"| R
  R -->|"②"| B
  B -.->|"② session not found"| R
```

</div>

<div class="mt-3 text-center text-xl font-semibold">

セッションを保持するインスタンスへリクエストを届ける必要がある

</div>


<div class="mt-3 text-center text-xl">
→ 負荷分散やインスタンスの入れ替えに制約が生まれる
</div>

</div>
