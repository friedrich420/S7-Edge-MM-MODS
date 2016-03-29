.class Lcom/sec/android/cover/manager/CoverPowerManager$1;
.super Landroid/os/Handler;
.source "CoverPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverPowerManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverPowerManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager$1;->this$0:Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager$1;->this$0:Lcom/sec/android/cover/manager/CoverPowerManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->access$002(Lcom/sec/android/cover/manager/CoverPowerManager;Z)Z

    .line 42
    return-void
.end method
