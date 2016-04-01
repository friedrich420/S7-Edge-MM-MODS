.class Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
.super Ljava/lang/Object;
.source "GenericSSOService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SSOServiceConnection"
.end annotation


# instance fields
.field private mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

.field private mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 4273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4274
    iput p1, p0, mUserId:I

    .line 4275
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    .prologue
    .line 4269
    iget v0, p0, mUserId:I

    return v0
.end method


# virtual methods
.method public getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .registers 2

    .prologue
    .line 4299
    iget-object v0, p0, mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 4279
    const-string v0, "GenericSSOService"

    const-string/jumbo v1, "onServiceConnected SSOServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    invoke-static {p2}, Landroid/app/enterprise/sso/GenericSSOSupportSolution$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v0

    iput-object v0, p0, mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    .line 4281
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4282
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4283
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 4284
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4286
    :cond_35
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 4290
    const-string v0, "GenericSSOService"

    const-string/jumbo v1, "onServiceDisConnected SSOServiceConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    const/4 v0, 0x0

    iput-object v0, p0, mService:Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    .line 4292
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2100()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4293
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 4294
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$2200()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4296
    :cond_25
    return-void
.end method
