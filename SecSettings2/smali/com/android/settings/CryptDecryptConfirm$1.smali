.class Lcom/android/settings/CryptDecryptConfirm$1;
.super Ljava/lang/Object;
.source "CryptDecryptConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptDecryptConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptDecryptConfirm;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/CryptDecryptConfirm$1;->this$0:Lcom/android/settings/CryptDecryptConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "a8ltezc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/settings/CryptDecryptConfirm$1;->this$0:Lcom/android/settings/CryptDecryptConfirm;

    invoke-virtual {v3}, Lcom/android/settings/CryptDecryptConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 112
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isWfdEngineRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    const-string v3, "CryptDecrypt"

    const-string v4, "WiFi Display disconnect"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/android/settings/CryptDecryptConfirm$1;->this$0:Lcom/android/settings/CryptDecryptConfirm;

    invoke-virtual {v3}, Lcom/android/settings/CryptDecryptConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_1
    :goto_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/CryptDecryptConfirm$1;->this$0:Lcom/android/settings/CryptDecryptConfirm;

    invoke-virtual {v3}, Lcom/android/settings/CryptDecryptConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/CryptDecryptConfirm$Blank;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/CryptDecryptConfirm$1;->this$0:Lcom/android/settings/CryptDecryptConfirm;

    invoke-virtual {v3}, Lcom/android/settings/CryptDecryptConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    iget-object v3, p0, Lcom/android/settings/CryptDecryptConfirm$1;->this$0:Lcom/android/settings/CryptDecryptConfirm;

    invoke-virtual {v3, v2}, Lcom/android/settings/CryptDecryptConfirm;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
