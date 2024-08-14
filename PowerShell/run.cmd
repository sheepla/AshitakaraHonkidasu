@echo off

rem このバッチファイルの存在するディレクトリににcdする
cd %~dp0

rem 実行ポリシーをRemoteSignedにセットしてスクリプトを実行する
powershell.exe -ExecutionPolicy RemoteSigned -File AshitakaraHonkidasu.ps1
