.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;
.super Ljava/lang/Thread;
.source "EnterpriseSharedDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyThread"
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

.field userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userCredentials"    # Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .prologue
    .line 1268
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1264
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, CLASS_NAME:Ljava/lang/String;

    .line 1269
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, context:Landroid/content/Context;

    .line 1270
    iput-object p3, p0, userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    .line 1271
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1276
    :try_start_0
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    const-string v2, "Thread running!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v1, p0, context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    move-result-object v1

    iget-object v2, p0, userCredentials:Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    :try_end_12
    .catch Lcom/android/server/enterprise/shareddevice/SharedDeviceException; {:try_start_0 .. :try_end_12} :catch_13

    .line 1281
    :goto_12
    return-void

    .line 1278
    :catch_13
    move-exception v0

    .line 1279
    .local v0, "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    iget-object v1, p0, CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method
