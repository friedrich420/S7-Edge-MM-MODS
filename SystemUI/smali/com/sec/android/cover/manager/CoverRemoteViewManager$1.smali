.class Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverRemoteViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverRemoteViewManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverRemoteViewManager;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;->this$0:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 3
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 23
    # getter for: Lcom/sec/android/cover/manager/CoverRemoteViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteViewUpdated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;->this$0:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    # invokes: Lcom/sec/android/cover/manager/CoverRemoteViewManager;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z
    invoke-static {v0, p1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->access$100(Lcom/sec/android/cover/manager/CoverRemoteViewManager;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z

    .line 25
    return-void
.end method
