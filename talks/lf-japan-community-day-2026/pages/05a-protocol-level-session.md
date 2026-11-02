# What is a protocol-level session?

::content::

<div class="grid grid-cols-2 gap-8 items-center">

<dl class="space-y-8 text-xl leading-snug">

<div>
<dt class="font-semibold">セッション</dt>
<dd class="mt-3 ml-6">
複数のやり取りを関連づける<br>
範囲や単位
</dd>
</div>

<div>
<dt class="font-semibold">protocol-level session</dt>
<dd class="mt-3 ml-6">
プロトコルの仕様として<br>
定められたセッション
</dd>
</div>

<div>
<dt class="font-semibold">旧来のMCPでは</dt>
<dd class="mt-3 ml-6">
初期化でバージョンや対応機能を共有し<br>
後続のやり取りでも前提として使う
</dd>
</div>

</dl>

<div>

<div class="mb-3 text-center">
<div class="text-lg font-semibold">旧来のMCPにおける例</div>
<div class="mt-1 text-base">Streamable HTTPでセッションIDを使う場合</div>
</div>

```mermaid {scale: 0.55}
---
config:
  themeCSS: '.messageText { font-family: monospace !important; font-size: 20px !important; }'
  sequence:
    mirrorActors: false
    height: 40
    messageMargin: 16
    noteMargin: 6
    messageFontFamily: monospace
    messageFontSize: 20
    actorFontSize: 20
    noteFontSize: 18
---
sequenceDiagram
    participant Client as MCP client
    participant Server as MCP server
    Client->>+Server: initialize
    Server-->>-Client: MCP-Session-Id: abc
    Client->>Server: notifications/initialized<br/>MCP-Session-Id: abc
    Client->>+Server: tools/call<br/>MCP-Session-Id: abc
    Server-->>-Client: content
    Client->>+Server: tools/call<br/>MCP-Session-Id: abc
    Server-->>-Client: content
```

</div>

</div>
