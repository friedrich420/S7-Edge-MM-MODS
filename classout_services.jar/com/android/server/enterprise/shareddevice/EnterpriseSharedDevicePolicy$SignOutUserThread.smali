.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;
.super Ljava/lang/Thread;
.source "EnterpriseSharedDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignOutUserThread"
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field context:Landroid/content/Context;

.field latch:Ljava/util/concurrent/CountDownLatch;

.field successful:Z

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

.field userSwitch:Z


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Z)V
    .registers 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "userSwitch"    # Z

    .prologue
    .line 1292
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1286
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SignOutUserThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, CLASS_NAME:Ljava/lang/String;

    .line 1287
    const/4 v0, 0x0

    iput-boolean v0, p0, successful:Z

    .line 1293
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, context:Landroid/content/Context;

    .line 1294
    iput-object p3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    .line 1295
    iput-boolean p4, p0, userSwitch:Z

    .line 1296
    return-void
.end method


# virtual methods
.method public isSuccessful()Z
    .registers 2

    .prologue
    .line 1318
    iget-boolean v0, p0, successful:Z

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1301
    :try_start_1
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    const-string v2, "Thread running!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v1, p0, context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    move-result-object v1

    iget-boolean v2, p0, userSwitch:Z

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->signOutUser(Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1303
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    const-string v2, "Successful!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const/4 v1, 0x1

    iput-boolean v1, p0, successful:Z
    :try_end_20
    .catch Lcom/android/server/enterprise/shareddevice/SharedDeviceException; {:try_start_1 .. :try_end_20} :catch_2c
    .catchall {:try_start_1 .. :try_end_20} :catchall_42

    .line 1309
    :cond_20
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2b

    .line 1310
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1311
    iput-object v3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    .line 1314
    :cond_2b
    :goto_2b
    return-void

    .line 1306
    :catch_2c
    move-exception v0

    .line 1307
    .local v0, "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    :try_start_2d
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_42

    .line 1309
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2b

    .line 1310
    iget-object v1, p0, latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1311
    iput-object v3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_2b

    .line 1309
    .end local v0    # "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    :catchall_42
    move-exception v1

    iget-object v2, p0, latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_4e

    .line 1310
    iget-object v2, p0, latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1311
    iput-object v3, p0, latch:Ljava/util/concurrent/CountDownLatch;

    :cond_4e
    throw v1
.end method
