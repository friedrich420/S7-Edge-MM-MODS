.class Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
.super Landroid/os/Handler;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkDatausageHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V
    .registers 2

    .prologue
    .line 1373
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p2, "x1"    # Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    .prologue
    .line 1373
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1377
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1378
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 1379
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler$1;->start()V

    .line 1391
    :goto_10
    return-void

    .line 1385
    :cond_11
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler$2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler$2;->start()V

    goto :goto_10
.end method
