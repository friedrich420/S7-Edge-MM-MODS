.class Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverZeroUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3e8

    .line 89
    const-string v0, "SViewCoverZeroUnlockArea"

    const-string v1, "onOpenThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverZeroUnlockArea;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method
