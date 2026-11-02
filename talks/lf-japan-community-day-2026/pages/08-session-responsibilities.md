# protocol-level sessionが担っていた代表的な役割

::content::

<div class="grid grid-cols-3 gap-4 text-[18px] leading-snug">

<div class="border rounded-xl p-4">

### protocol context

`initialize`<br>
ハンドシェイクで<br>
利用するMCPの<br>
バージョンを合意し<br>
クライアントとサーバーが<br>
それぞれ対応している<br>
MCPの機能<br>
（`capabilities`）を<br>
伝え合う

その情報をセッション中の<br>
やり取りの前提として使う

</div>

<div class="border rounded-xl p-4">

### intermediate state

処理中の状態を保持し<br>
elicitationやsamplingの<br>
レスポンスを<br>
元のリクエストに<br>
対応づける

<div class="mt-4 text-base">

elicitation：<br>
クライアントを通じた<br>
ユーザーへの追加情報の<br>
問い合わせ

sampling：<br>
クライアントでのLLM呼び出し

</div>

</div>

<div class="border rounded-xl p-4">

### application state

アプリケーションの状態を<br>
セッションにひもづけ<br>
複数の呼び出しで<br>
利用できる

このひもづけを<br>
使うかどうかは<br>
アプリケーション側の<br>
設計による

</div>

</div>

<div class="mt-7 text-center text-xl font-semibold">
protocol-level sessionを廃止するにはこれらの役割を別の仕組みで実現する必要がある
</div>
