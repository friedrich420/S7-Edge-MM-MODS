.class public Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
.super Ljava/lang/Object;
.source "SharedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;,
        Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    }
.end annotation


# static fields
.field private static final ERR_API_CALL:Ljava/lang/String; = "API Call Failed."

.field private static final ERR_APP_BIND:Ljava/lang/String; = "Unable to bind to shared device agent."

.field private static final ERR_SERVICE_CONNECTION:Ljava/lang/String; = "Service Connection Not Available."

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final SHARED_DEVICE_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

.field private static final SHARED_DEVICE_SERVICE_INTENT_ACTION:Ljava/lang/String; = "com.srib.shareddevice.service"

.field private static final SHARED_DEVICE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final TAG:Ljava/lang/String;

.field private static sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    .prologue
    .line 19
    iget-object v0, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 19
    iput-object p1, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method private bindToService()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 138
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Executing bindToService()..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 159
    :cond_10
    :goto_10
    return-void

    .line 143
    :cond_11
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Binding to the service..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.srib.shareddevice.service"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.enterprise.knox.shareddevice"

    const-string v5, "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 146
    :try_start_3a
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 147
    iget-object v2, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_10

    .line 148
    iget-object v2, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x4e20

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 149
    .local v0, "countDownTimeout":Z
    if-nez v0, :cond_10

    .line 150
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "In bindToService: CoutnDownLatch returns false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_59} :catch_5a

    goto :goto_10

    .line 153
    .end local v0    # "countDownTimeout":Z
    :catch_5a
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 157
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_7e
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Unable to bind to shared device agent."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-class v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    if-nez v0, :cond_e

    .line 39
    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    .line 41
    :cond_e
    sget-object v0, sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    .registers 3

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-nez v0, :cond_d

    .line 132
    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;)V

    iput-object v0, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    .line 134
    :cond_d
    iget-object v0, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseService()V
    .registers 3

    .prologue
    .line 162
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Unbinding from the service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 164
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    .line 166
    return-void
.end method


# virtual methods
.method public declared-synchronized notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .registers 7
    .param p1, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Executing notifyUserSignedIn()..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_59

    .line 80
    :try_start_8
    invoke-direct {p0}, getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v2

    iput-object v2, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    .line 81
    invoke-direct {p0}, bindToService()V

    .line 82
    iget-object v2, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 83
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_4c

    .line 92
    :catch_21
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "API Call Failed."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_4c

    .line 96
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_4c
    move-exception v2

    :try_start_4d
    iget-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 97
    invoke-direct {p0}, releaseService()V

    :cond_58
    throw v2
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_59

    .line 77
    :catchall_59
    move-exception v2

    monitor-exit p0

    throw v2

    .line 86
    :cond_5c
    :try_start_5c
    iget-object v2, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v1

    .line 87
    .local v1, "sharedDeviceMgmtService":Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
    if-nez v1, :cond_6c

    .line 88
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_6c
    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;->notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6f} :catch_21
    .catchall {:try_start_5c .. :try_end_6f} :catchall_4c

    .line 96
    :try_start_6f
    iget-object v2, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 97
    invoke-direct {p0}, releaseService()V
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_59

    .line 100
    :cond_7a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
    .registers 8
    .param p1, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    const/4 v0, -0x1

    .line 50
    .local v0, "authStatus":I
    :try_start_2
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Executing performUserAuthentication()..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_5a

    .line 53
    :try_start_9
    invoke-direct {p0}, getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v3

    iput-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    .line 54
    invoke-direct {p0}, bindToService()V

    .line 55
    iget-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 56
    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_4d

    .line 65
    :catch_22
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_23
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "API Call Failed."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4d
    .catchall {:try_start_23 .. :try_end_4d} :catchall_4d

    .line 69
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_4d
    move-exception v3

    :try_start_4e
    iget-object v4, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 70
    invoke-direct {p0}, releaseService()V

    :cond_59
    throw v3
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_5a

    .line 49
    :catchall_5a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 59
    :cond_5d
    :try_start_5d
    iget-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v2

    .line 60
    .local v2, "sharedDeviceMgmtService":Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
    if-nez v2, :cond_6d

    .line 61
    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_6d
    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;->performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_70} :catch_22
    .catchall {:try_start_5d .. :try_end_70} :catchall_4d

    move-result v0

    .line 69
    :try_start_71
    iget-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 70
    invoke-direct {p0}, releaseService()V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_5a

    .line 73
    :cond_7c
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized signOutUser(Z)Z
    .registers 8
    .param p1, "userSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    const/4 v2, 0x0

    .line 104
    .local v2, "success":Z
    :try_start_2
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing signOutUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_71

    .line 107
    :try_start_20
    invoke-direct {p0}, getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v3

    iput-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    .line 108
    invoke-direct {p0}, bindToService()V

    .line 109
    iget-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_74

    .line 110
    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_39} :catch_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_64

    .line 119
    :catch_39
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3a
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "API Call Failed."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_64
    .catchall {:try_start_3a .. :try_end_64} :catchall_64

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_64
    move-exception v3

    :try_start_65
    iget-object v4, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 124
    invoke-direct {p0}, releaseService()V

    :cond_70
    throw v3
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_71

    .line 103
    :catchall_71
    move-exception v3

    monitor-exit p0

    throw v3

    .line 113
    :cond_74
    :try_start_74
    iget-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v1

    .line 114
    .local v1, "sharedDeviceMgmtService":Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
    if-nez v1, :cond_84

    .line 115
    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_84
    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;->signOutUser(Z)Z
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_87} :catch_39
    .catchall {:try_start_74 .. :try_end_87} :catchall_64

    move-result v2

    .line 123
    :try_start_88
    iget-object v3, p0, mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 124
    invoke-direct {p0}, releaseService()V
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_71

    .line 127
    :cond_93
    monitor-exit p0

    return v2
.end method
