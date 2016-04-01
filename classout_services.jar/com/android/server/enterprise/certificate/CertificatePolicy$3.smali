.class Lcom/android/server/enterprise/certificate/CertificatePolicy$3;
.super Ljava/lang/Thread;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field final synthetic val$adminNotification:Landroid/content/Intent;

.field final synthetic val$userId:I

.field final synthetic val$userMsgModName:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 1290
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iput p2, p0, val$userId:I

    iput-object p3, p0, val$userMsgModName:[Ljava/lang/String;

    iput-object p4, p0, val$adminNotification:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1294
    .local v2, "token":J
    :try_start_4
    iget v1, p0, val$userId:I

    .line 1295
    .local v1, "targetUserId":I
    iget v4, p0, val$userId:I

    invoke-static {v4}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1296
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    iget v5, p0, val$userId:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 1297
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1300
    .end local v0    # "adminUid":I
    :cond_1e
    const-string v4, "CertificatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending certificate failure intent to user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " containing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, val$userMsgModName:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (module), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, val$userMsgModName:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (message), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, val$userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (userId)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, val$adminNotification:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_4 .. :try_end_78} :catchall_7c

    .line 1308
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1310
    return-void

    .line 1308
    .end local v1    # "targetUserId":I
    :catchall_7c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
