# Definition of words

::content::

### localとremoteの通信

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">local MCP server</dt>
<dd>MCP hostと同じマシンで動作するMCP server。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">stdio</dt>
<dd>standard input/outputの略で、プログラムの標準入出力を指す。入力元の標準入力（<code>stdin</code>）、通常の出力先の標準出力（<code>stdout</code>）、診断メッセージなどの出力先の標準エラー出力（<code>stderr</code>）がある。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">remote MCP server</dt>
<dd>MCP hostからネットワーク越しにアクセスするMCP server。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">Streamable HTTP</dt>
<dd>HTTPを使ったMCPの通信方式の一つ。MCP clientはHTTP POSTでリクエストを送る。MCP serverは単一のJSONレスポンスか、イベントを逐次送るSSEストリームで返す。</dd>
</div>

</dl>
