# application stateはexplicit state handleで参照する

::content::

<div class="mb-2 text-center text-lg">
explicit state handle：サーバーが管理するapplication stateを参照するための識別子
</div>

<div class="grid grid-cols-2 gap-8 items-start">

<div>

### Before

```mermaid {scale: 0.5}
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
    noteFontSize: 18
---
sequenceDiagram
    participant C as MCP client
    participant S as MCP server
    C->>+S: tools/call<br/>MCP-Session-Id
    Note over C,S: application state scoped to session
    S-->>-C: content
    C->>+S: tools/call<br/>MCP-Session-Id
    Note over C,S: state selected by session
    S-->>-C: content
```

</div>

<div>

### After

```mermaid {scale: 0.5}
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
    noteFontSize: 18
---
sequenceDiagram
    participant C as MCP client
    participant S as MCP server
    C->>+S: tools/call
    Note over C,S: explicit state handle in tool result
    S-->>-C: content, structuredContent
    C->>+S: tools/call<br/>params: arguments
    Note over C,S: state handle in tool arguments
    S-->>-C: content
```

</div>

</div>

<div class="mt-3 grid grid-cols-2 gap-8 text-center text-base leading-snug">
<div>アプリケーションの設計により<br>セッションに状態をひもづける</div>
<div>handleの形式や有効期間は<br>アプリケーション側で設計する</div>
</div>

<div class="mt-6 text-center text-xl font-semibold">
サーバーは状態を識別するhandleを返し<br>
クライアントは以降の呼び出しでそのhandleをtool argumentとして渡す
</div>
