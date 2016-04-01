.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$EnterpriseIdServiceConnection;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnterpriseIdServiceConnection"
.end annotation


# instance fields
.field private mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

.field private mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    iput p1, p0, mUserId:I

    .line 1546
    return-void
.end method


# virtual methods
.method public getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .registers 2

    .prologue
    .line 1570
    iget-object v0, p0, mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1550
    const-string v0, "EnterpriseIdentity"

    const-string/jumbo v1, "onServiceConnected EnterpriseIdServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-static {p2}, Landroid/app/enterprise/sso/GenericSSOSupportSolution$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v0

    iput-object v0, p0, mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    .line 1552
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1200()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1200()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$2000()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1555
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$2000()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1557
    :cond_35
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1561
    const-string v0, "EnterpriseIdentity"

    const-string/jumbo v1, "onServiceDisConnected EnterpriseIdServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/4 v0, 0x0

    iput-object v0, p0, mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    .line 1563
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1200()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$2000()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1565
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$2000()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1567
    :cond_25
    return-void
.end method
