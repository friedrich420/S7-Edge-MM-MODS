.class Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field public dialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 732
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 733
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 734
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 735
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 736
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 745
    # getter for: Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 750
    :goto_6
    return-void

    .line 748
    :cond_7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_6
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 754
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 755
    # getter for: Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 756
    const/4 v0, 0x0

    :try_start_b
    # setter for: Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$902(Z)Z

    .line 757
    monitor-exit v1

    .line 758
    return-void

    .line 757
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 740
    iget-object v0, p0, dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 741
    return-void
.end method
