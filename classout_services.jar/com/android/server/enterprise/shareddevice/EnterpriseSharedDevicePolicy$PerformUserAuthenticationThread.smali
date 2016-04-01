.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;
.super Ljava/lang/Thread;
.source "EnterpriseSharedDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformUserAuthenticationThread"
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field authStatus:I

.field context:Landroid/content/Context;

.field latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

.field userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .prologue
    .line 1231
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1225
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$PerformUserAuthenticationThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, CLASS_NAME:Ljava/lang/String;

    .line 1226
    const/4 v0, -0x1

    iput v0, p0, authStatus:I

    .line 1232
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, context:Landroid/content/Context;

    .line 1233
    iput-object p3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    .line 1234
    iput-object p4, p0, userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .line 1235
    return-void
.end method


# virtual methods
.method public getAuthStatus()I
    .registers 2

    .prologue
    .line 1259
    iget v0, p0, authStatus:I

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1240
    :try_start_1
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    const-string v2, "Thread running!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    move-result-object v1

    iget-object v2, p0, userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I

    move-result v1

    iput v1, p0, authStatus:I

    .line 1242
    iget v1, p0, authStatus:I

    if-nez v1, :cond_2d

    .line 1243
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    const-string v2, "Authentication successful!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/android/server/enterprise/shareddevice/SharedDeviceException; {:try_start_1 .. :try_end_21} :catch_35
    .catchall {:try_start_1 .. :try_end_21} :catchall_4b

    .line 1250
    :goto_21
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2c

    .line 1251
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1252
    iput-object v3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    .line 1255
    :cond_2c
    :goto_2c
    return-void

    .line 1245
    :cond_2d
    :try_start_2d
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    const-string v2, "Something went wrong!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Lcom/android/server/enterprise/shareddevice/SharedDeviceException; {:try_start_2d .. :try_end_34} :catch_35
    .catchall {:try_start_2d .. :try_end_34} :catchall_4b

    goto :goto_21

    .line 1247
    :catch_35
    move-exception v0

    .line 1248
    .local v0, "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    :try_start_36
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_4b

    .line 1250
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2c

    .line 1251
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1252
    iput-object v3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_2c

    .line 1250
    .end local v0    # "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    :catchall_4b
    move-exception v1

    iget-object v2, p0, latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_57

    .line 1251
    iget-object v2, p0, latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1252
    iput-object v3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    :cond_57
    throw v1
.end method
