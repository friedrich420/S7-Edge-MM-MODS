.class Lcom/sec/android/cover/manager/CoverBroadcastManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverBroadcastManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverBroadcastManager;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$1;->this$0:Lcom/sec/android/cover/manager/CoverBroadcastManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisasterViewUpdated(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;-><init>(Ljava/lang/Object;J)V

    .line 31
    .local v0, "item":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$1;->this$0:Lcom/sec/android/cover/manager/CoverBroadcastManager;

    # getter for: Lcom/sec/android/cover/manager/CoverBroadcastManager;->mBroadcastInfoTable:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->access$000(Lcom/sec/android/cover/manager/CoverBroadcastManager;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "CoverBroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISASTER_VIEW_UPDATE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 23
    new-instance v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;-><init>(Ljava/lang/Object;J)V

    .line 24
    .local v0, "item":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$1;->this$0:Lcom/sec/android/cover/manager/CoverBroadcastManager;

    # getter for: Lcom/sec/android/cover/manager/CoverBroadcastManager;->mBroadcastInfoTable:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->access$000(Lcom/sec/android/cover/manager/CoverBroadcastManager;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "CoverBroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_BATTERY_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
