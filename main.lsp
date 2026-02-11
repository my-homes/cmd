#! /usr/bin/env newlisp

;;(load "get-args.lsp")
(println (get-args))

(setq %%api-id (api-load "PROGRAM.native.dll"))
(setq result (api-call %%api-id "add2" (list 11 22)))
(println result)
(setq result (api-call %%api-id "add2" (list 11 22 33)))
(println result)

(exit)
