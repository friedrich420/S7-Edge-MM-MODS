.class final Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field final mAppThread:Landroid/app/IApplicationThread;

.field final mPid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V
    .registers 7
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "pid"    # I
    .param p4, "thread"    # Landroid/app/IApplicationThread;

    .prologue
    .line 1883
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1887
    iput-object p2, p0, mApp:Lcom/android/server/am/ProcessRecord;

    .line 1889
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1890
    iget-object v0, p0, mApp:Lcom/android/server/am/ProcessRecord;

    sput-object v0, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 1893
    :cond_15
    iput p3, p0, mPid:I

    .line 1895
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1896
    iget v0, p0, mPid:I

    sput v0, Lcom/android/server/am/ActivityManagerService;->mSytemUIPid:I

    .line 1899
    :cond_25
    iput-object p4, p0, mAppThread:Landroid/app/IApplicationThread;

    .line 1901
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1902
    iget-object v0, p0, mAppThread:Landroid/app/IApplicationThread;

    sput-object v0, Lcom/android/server/am/ActivityManagerService;->mSystemUIAppThread:Landroid/app/IApplicationThread;

    .line 1905
    :cond_35
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .prologue
    .line 1912
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1913
    :try_start_3
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, p0, mPid:I

    iget-object v4, p0, mAppThread:Landroid/app/IApplicationThread;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V

    .line 1914
    monitor-exit v1

    .line 1915
    return-void

    .line 1914
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
