.class Lcom/android/settings/wifi/WifiPickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPickerDialog;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerDialog$1;->this$0:Lcom/android/settings/wifi/WifiPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string v2, "WifiPickerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "enable"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 56
    .local v1, "mTaskLocked":Z
    if-eqz v1, :cond_1

    .line 57
    const-string v2, "WifiPickerDialog"

    const-string v3, "Requesting system key event for Pinned Dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog$1;->this$0:Lcom/android/settings/wifi/WifiPickerDialog;

    const/4 v3, 0x1

    # invokes: Lcom/android/settings/wifi/WifiPickerDialog;->requestSystemKeyEvents(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiPickerDialog;->access$000(Lcom/android/settings/wifi/WifiPickerDialog;Z)V

    .line 65
    .end local v1    # "mTaskLocked":Z
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local v1    # "mTaskLocked":Z
    :cond_1
    const-string v2, "WifiPickerDialog"

    const-string v3, "Removing system key request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog$1;->this$0:Lcom/android/settings/wifi/WifiPickerDialog;

    # invokes: Lcom/android/settings/wifi/WifiPickerDialog;->requestSystemKeyEvents(Z)V
    invoke-static {v2, v5}, Lcom/android/settings/wifi/WifiPickerDialog;->access$000(Lcom/android/settings/wifi/WifiPickerDialog;Z)V

    goto :goto_0
.end method
