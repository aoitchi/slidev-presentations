# Definition of words

::content::

### application stateとその参照

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">application state</dt>
<dd>アプリケーションが機能を提供するために保持・管理する情報。何を保持し、どの処理で共有するかは、アプリケーションの要件で決まる。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">explicit state handle</dt>
<dd>サーバーが管理するapplication stateを、明示的に参照するための識別子。サーバーがtoolの結果として返し、クライアントが後続のtool呼び出しの引数として渡す。MCP共通のフィールドではなく、形式や寿命をアプリケーション側で設計するパターン。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">スコープ</dt>
<dd>変数や識別子を参照できる範囲、または情報や状態を共有する範囲。</dd>
</div>

</dl>
