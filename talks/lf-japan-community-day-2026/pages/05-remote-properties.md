# remote MCP serverをサービスとして運用するために

<div class="flex-1 min-h-0 flex flex-col justify-center">

<div class="w-3/5 mx-auto">

```mermaid
flowchart LR
  C["MCP client"]

  subgraph P["MCP server provider"]
    direction LR
    R["request router"]

    subgraph S["MCP server instances"]
      direction TB
      S1["instance A"]
      S2["instance B"]
      S3["instance C"]

      S1 ~~~ S2
      S2 ~~~ S3
    end

    R --> S
  end

  C -->|"MCP"| P
```

</div>

<div class="mt-4 grid grid-cols-3 gap-6 text-center leading-snug">

<div>

<div class="font-semibold">負荷分散</div>
<div class="mt-3">集中するリクエストを<br>複数のインスタンスで処理したい</div>

</div>

<div>

<div class="font-semibold">水平スケーリング</div>
<div class="mt-3">利用量に合わせて<br>インスタンス数を増減したい</div>

</div>

<div>

<div class="font-semibold">インスタンスの入れ替え</div>
<div class="mt-3">障害復旧や更新のために<br>入れ替えたい</div>

</div>

</div>

<div class="mt-5 text-center text-xl">負荷の変動や障害・更新に対応しながらサービスを提供し続けたい</div>

</div>
