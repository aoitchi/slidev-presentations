# Definition of words

::content::

### LLM applicationとMCPの構成要素

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">LLM application<br>（MCP host）</dt>
<dd>大規模言語モデル（LLM）を利用するアプリケーション。MCPではhostとしてMCP clientを作成・管理し、サーバーとの連携を統括する。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">AI agent</dt>
<dd>環境から得た情報を基に、目的の達成に向けて必要な行動を自律的に選び、実行するソフトウェア。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">MCP client</dt>
<dd>MCP host内でMCP serverとの通信を担うコンポーネント。hostは接続先のMCP serverごとにclientを作成する。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">MCP server</dt>
<dd>MCP clientに外部システムの機能やデータを提供するプログラム。MCPの仕様に従ってtoolなどを公開し、MCP clientからのリクエストを処理する。</dd>
</div>

</dl>
