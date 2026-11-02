# Definition of words

::content::

### セッションと初期化

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">セッション</dt>
<dd>複数回のやり取りを一連のものとして関連づける範囲や単位。関連づける情報や開始・終了の条件は、プロトコルやアプリケーションの設計による。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">protocol-level session</dt>
<dd>プロトコルの仕様として定められたセッション。旧来のMCPでは、初期化で共有したバージョンや対応機能を後続のやり取りでも前提として使っていた。Streamable HTTPでは、サーバーが<code>MCP-Session-Id</code>ヘッダーを発行して識別できた。MCPでは2026-07-28で廃止された。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">ハンドシェイク</dt>
<dd>接続の確立や通信条件の確認・調整のために、通信相手と行うやり取り。</dd>
</div>

</dl>
