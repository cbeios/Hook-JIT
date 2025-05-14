THIẾT LẬP HOOK ĐỘNG ỨNG DỤNG RUNTIME JB (JIT, Dopamine)

Thêm các thư viện cần thiết vào dự án

Thêm DobbyHookJB.a vào Makefile:
$(TWEAK_NAME)_LDFLAGS = DobbyHookJB.a

Trong file viết tweak (Menu), thêm định nghĩa thư viện:  
#import "DobbyJB.h"  
#import "Callme.h"


Chúng ta có thể sử dụng chúng theo cú pháp sau:  
Nếu dùng il2cpp auto
DobbyHook((void *)getRealOffset(methodOffset), (void *)IsPlayer, (void **)&_IsPlayer);
  
hoặc nếu dùng offset
DobbyHook((void *)getRealOffset(0x1234567), (void *)IsPlayer, (void **)&_IsPlayer);
