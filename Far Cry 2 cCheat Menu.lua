-- Far Cry 2 Cheat Table

-- Infinite Ammo
[ENABLE]
alloc(newmem,2048)
label(returnhere)
label(infammo)
newmem:
  mov [ecx+00000140],#1
  jmp returnhere

"FarCry2.exe"+004C9F6C:
  jmp infammo
  nop
returnhere:
  jmp "FarCry2.exe"+004C9F72

[DISABLE]
dealloc(newmem)
"FarCry2.exe"+004C9F6C:
  mov [ecx+00000140],#0
  jmp "FarCry2.exe"+004C9F72

-- No Recoil
[ENABLE]
alloc(newmem,2048)
label(returnhere)
label(norecoil)
newmem:
  mov [ecx+00000144],#0
  jmp returnhere

"FarCry2.exe"+004C9F7C:
  jmp norecoil
  nop
returnhere:
  jmp "FarCry2.exe"+004C9F82

[DISABLE]
dealloc(newmem)
"FarCry2.exe"+004C9F7C:
  mov [ecx+00000144],#1
  jmp "FarCry2.exe"+004C9F82

-- Teleport
[ENABLE]
alloc(newmem,2048)
label(returnhere)
label(teleport)
newmem:
  mov [ecx+00000148],#1
  jmp returnhere

"FarCry2.exe"+004C9F8C:
  jmp teleport
  nop
returnhere:
  jmp "FarCry2.exe"+004C9F92

[DISABLE]
dealloc(newmem)
"FarCry2.exe"+004C9F8C:
  mov [ecx+00000148],#0
  jmp "FarCry2.exe"+004C9F92