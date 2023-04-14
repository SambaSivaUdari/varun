%dw 2.0
output application/json
---
//(payload groupBy ((item, index) -> item.name
//)) 
payload map ((item, index) ->
(item.name) : (item.options) map ((it, in) -> (it.value) : (it.label)) reduce ($$ ++ $ )
 ) 