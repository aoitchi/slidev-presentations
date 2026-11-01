# Definition of words

<div class="flex-1 min-h-0 flex flex-col justify-center">

### リクエストに添えるメタデータ

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="py-3">
<dt class="font-semibold"><code>params._meta</code></dt>
<dd class="mt-2">リクエストの<code>params</code>内で、処理の前提などを補足するメタデータをまとめるフィールド。利用するバージョンやクライアントの対応機能などを含める。</dd>
</div>

<div class="py-3">
<dt class="font-semibold"><code>io.modelcontextprotocol/protocolVersion</code></dt>
<dd class="mt-2">そのリクエストで利用するMCPのバージョンを示す、<code>_meta</code>内のキー。旧来の<code>initialize</code>で使っていた<code>protocolVersion</code>とは、フィールドの位置とキーが異なる。</dd>
</div>

<div class="py-3">
<dt class="font-semibold"><code>io.modelcontextprotocol/clientCapabilities</code></dt>
<dd class="mt-2">そのリクエストでクライアントが対応しているMCPの機能を示す、<code>_meta</code>内のキー。サーバーは、ここで宣言された対応機能を前提として処理する。</dd>
</div>

</dl>

</div>
