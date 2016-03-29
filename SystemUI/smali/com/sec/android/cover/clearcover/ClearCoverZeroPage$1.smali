.class Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverZeroPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dualclock_menu_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualClockSettingObserver.onChagne : DualClockSetting changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$100(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 4
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 81
    iget-object v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 82
    .local v0, "type":Ljava/lang/String;
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRemoteViewUpdated : Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "new_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "missed_call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateMissedEvent()V
    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$200(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->updateRemoteViewContainerVisibility(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    invoke-static {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$300(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 89
    return-void
.end method

.method public onRoamingStateChanged(Z)V
    .locals 2
    .param p1, "isNetworkRoaming"    # Z

    .prologue
    .line 92
    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRoamingStateChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->setClockVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;->access$100(Lcom/sec/android/cover/clearcover/ClearCoverZeroPage;)V

    .line 94
    return-void
.end method
