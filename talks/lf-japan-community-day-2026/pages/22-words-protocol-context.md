# Definition of words

<div class="flex-1 min-h-0 flex flex-col justify-center">

### protocol contextと対応機能

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">protocol context</dt>
<dd>利用するMCPのバージョンや対応機能など、やり取りを解釈する前提となる情報。2026-07-28では、リクエストごとに必要な情報を渡す。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>capabilities</code></dt>
<dd>MCP clientやMCP serverが対応しているMCPの機能を表す情報。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>server/discover</code></dt>
<dd>サーバーの対応バージョンや対応機能などを取得するメソッド。対応バージョンの一覧は<code>supportedVersions</code>で返る。サーバーには実装が必要だが、クライアントの事前呼び出しはoptional。</dd>
</div>

</dl>

</div>
