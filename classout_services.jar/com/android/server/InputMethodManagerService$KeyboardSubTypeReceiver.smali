.class Lcom/android/server/InputMethodManagerService$KeyboardSubTypeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardSubTypeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 1193
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.inputmethod.Subtype"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1197
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SamsungIME.Subtype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1199
    .local v1, "inputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/InputMethodManagerService;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z

    .line 1201
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "inputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1d
    return-void
.end method
