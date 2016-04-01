.class Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
.super Ljava/lang/Object;
.source "SharedDeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDeviceManagementServiceConnection"
.end annotation


# instance fields
.field private mIsConnected:Z

.field private mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)V
    .registers 3

    .prologue
    .line 168
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    .param p2, "x1"    # Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;

    .prologue
    .line 168
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)V

    return-void
.end method


# virtual methods
.method public getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, mIsConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 175
    invoke-static {p2}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v0

    iput-object v0, p0, mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsConnected:Z

    .line 177
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    # getter for: Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->access$100(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 178
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    # getter for: Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->access$100(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 179
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->access$102(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 181
    :cond_20
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsConnected:Z

    .line 187
    return-void
.end method
