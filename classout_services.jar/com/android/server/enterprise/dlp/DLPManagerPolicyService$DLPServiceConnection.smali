.class Lcom/android/server/enterprise/dlp/DLPManagerPolicyService$DLPServiceConnection;
.super Ljava/lang/Object;
.source "DLPManagerPolicyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DLPServiceConnection"
.end annotation


# instance fields
.field private mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

.field private mUserInfoId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    .line 525
    iput p1, p0, mUserInfoId:I

    .line 526
    return-void
.end method


# virtual methods
.method public getDLPService()Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 530
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 531
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected DLPServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_10
    invoke-static {p2}, Lcom/sec/enterprise/knox/dlp/IFrameworkConnector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    move-result-object v0

    iput-object v0, p0, mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    .line 533
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 534
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_33
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 537
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 539
    :cond_4d
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected DLPServiceConnection: Service connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLP Interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLP ComponentName className: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 546
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 547
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected DLPServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, mDLPInterface:Lcom/sec/enterprise/knox/dlp/IFrameworkConnector;

    .line 549
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 550
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1100()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 552
    :cond_20
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 553
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: DLPServiceConnection Removing the Entry from MAPs for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->mDLPConnectionMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$1000()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserInfoId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :goto_5a
    return-void

    .line 556
    :cond_5b
    # getter for: Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: DLPServiceConnection : Entry is not there for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUserInfoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method
