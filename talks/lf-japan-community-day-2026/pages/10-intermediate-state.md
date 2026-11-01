# intermediate stateはリクエスト間で引き継ぐ

<div class="flex-1 min-h-0 flex flex-col justify-center">

<div class="mb-2 text-center text-lg">
Multi Round-Trip Requests（MRTR）：追加情報を含めてリクエストを再送する
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
    C->>+S: tools/call
    S->>C: elicitation/create
    C-->>S: action, content
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
    S-->>-C: resultType: "input_required"<br/>inputRequests, requestState
    C->>+S: tools/call<br/>params: inputResponses, requestState
    S-->>-C: resultType: "complete"<br/>content
```

</div>

</div>

<div class="mt-2 grid grid-cols-2 gap-8 text-center text-base">
<div>最初の<code>tools/call</code>へのレスポンスを待たせる</div>
<div>追加情報を含めて新しい<code>tools/call</code>で再送する</div>
</div>

<div class="mt-3 grid grid-cols-2 gap-8 text-base leading-snug">
<div class="col-start-2 space-y-1">
<div><code>inputRequests</code>：追加情報を得るための依頼</div>
<div><code>inputResponses</code>：依頼へのレスポンス</div>
<div><code>requestState</code>（optional）：途中の状態をそのまま返す</div>
</div>
</div>

<div class="mt-4 text-center text-xl font-semibold">
サーバーは追加情報の依頼をレスポンスに含め<br>
クライアントは追加情報を含めてリクエストを再送する
</div>

</div>
