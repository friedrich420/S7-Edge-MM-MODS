.class public Lcom/sec/android/cover/manager/CoverRemoteViewManager;
.super Ljava/lang/Object;
.source "CoverRemoteViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteViewInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mRemoteViewInfoTable:Ljava/util/HashMap;

    .line 20
    new-instance v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager$1;-><init>(Lcom/sec/android/cover/manager/CoverRemoteViewManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 37
    const-string v0, "CoverUI"

    const-string v1, "create CoverRemoteViewManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/manager/CoverRemoteViewManager;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .param p1, "x1"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->instance:Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    return-object v0
.end method

.method private updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)Z
    .locals 2
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mRemoteViewInfoTable:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->mRemoteViewInfoTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    return-object v0
.end method

.method public isRemoteViewAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 59
    .local v0, "info":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    if-eqz v0, :cond_1

    .line 60
    iget-boolean v3, v0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-ne v3, v1, :cond_0

    .line 62
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_0
.end method
