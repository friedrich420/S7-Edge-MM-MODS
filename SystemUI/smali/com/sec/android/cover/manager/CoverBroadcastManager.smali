.class public Lcom/sec/android/cover/manager/CoverBroadcastManager;
.super Ljava/lang/Object;
.source "CoverBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/cover/manager/CoverBroadcastManager;


# instance fields
.field private mBroadcastInfoTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->mBroadcastInfoTable:Ljava/util/HashMap;

    .line 20
    new-instance v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverBroadcastManager$1;-><init>(Lcom/sec/android/cover/manager/CoverBroadcastManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 61
    const-string v0, "CoverUI"

    const-string v1, "create CoverBroadcastManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/manager/CoverBroadcastManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/manager/CoverBroadcastManager;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->mBroadcastInfoTable:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->instance:Lcom/sec/android/cover/manager/CoverBroadcastManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/sec/android/cover/manager/CoverBroadcastManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->instance:Lcom/sec/android/cover/manager/CoverBroadcastManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->instance:Lcom/sec/android/cover/manager/CoverBroadcastManager;

    return-object v0
.end method


# virtual methods
.method public getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager;->mBroadcastInfoTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    .line 70
    .local v0, "item":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    return-object v0
.end method
