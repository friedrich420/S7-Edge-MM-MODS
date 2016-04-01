.class Lcom/android/server/net/NetworkPolicyManagerService$2;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 585
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 589
    iget-object v1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 590
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_d
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 591
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 593
    return-void

    .line 590
    :cond_13
    const/4 v1, 0x0

    goto :goto_d
.end method
