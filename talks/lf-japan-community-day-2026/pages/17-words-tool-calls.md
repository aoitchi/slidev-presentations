# Definition of words

::content::

### toolの呼び出し

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">tool</dt>
<dd>MCP serverが名前や入力形式を定義して公開する、呼び出し可能な機能。<br>外部サービスの操作やデータの取得などを実行する。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>tools/call</code></dt>
<dd>toolの名前と引数を指定して、サーバーに実行を依頼するMCPのメソッド。HTTPでは、MCPの接続先に送るリクエストの<code>method</code>に指定する名前。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>params</code></dt>
<dd>MCPのリクエストで、メソッドに渡す引数をまとめるオブジェクト。<code>tools/call</code>では、tool名・<code>arguments</code>・<code>_meta</code>などを入れる。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">tool argument</dt>
<dd>toolの呼び出し時に渡す入力値。<code>tools/call</code>では<code>params.arguments</code>フィールドで渡し、内容はそれぞれのtoolが定義する。explicit state handleも、この入力として渡す。</dd>
</div>

</dl>
