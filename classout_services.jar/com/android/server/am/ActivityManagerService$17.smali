.class Lcom/android/server/am/ActivityManagerService$17;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 16472
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16475
    const-string v0, "ActivityManager"

    const-string v1, "Shutting down activity manager..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16476
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->shutdown(I)Z

    .line 16477
    const-string v0, "ActivityManager"

    const-string v1, "Shutdown complete, restarting!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16478
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 16479
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 16480
    return-void
.end method
