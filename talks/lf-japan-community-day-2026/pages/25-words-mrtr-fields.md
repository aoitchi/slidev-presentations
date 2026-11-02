# Definition of words

::content::

### MRTRと処理の継続

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">MRTR</dt>
<dd>Multi Round-Trip Requestsの略。サーバーが追加情報の依頼をレスポンスに含めて返し、クライアントがその結果を付けて元の処理を再度依頼する通信パターン。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>inputRequests</code></dt>
<dd>サーバーがクライアントに求める処理を、IDをキーにまとめたフィールド。追加情報が必要なレスポンスの<code>result</code>に含まれる。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>inputResponses</code></dt>
<dd>追加情報の依頼に対して得た結果を、元の依頼と同じIDで対応づけたフィールド。クライアントが再送するリクエストの<code>params</code>に含める。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>requestState</code></dt>
<dd>MRTRで処理を継続するための文字列フィールド。レスポンスではoptional。サーバーから返された場合、クライアントは内容を解釈・変更せず、再送時の<code>params.requestState</code>にそのまま含める。</dd>
</div>

</dl>
