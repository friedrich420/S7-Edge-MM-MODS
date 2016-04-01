.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field attribute:Landroid/os/Bundle;

.field isDone:Z

.field isFromFPMS:Z

.field mPrivilegedAttr:I

.field opPackageName:Ljava/lang/String;

.field owner:Ljava/lang/String;

.field receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field restricted:Z

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;

.field token:Landroid/os/IBinder;

.field userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 10
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z
    .param p6, "owner"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1031
    iput-object p1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object v2, p0, attribute:Landroid/os/Bundle;

    .line 1024
    iput-boolean v1, p0, isFromFPMS:Z

    .line 1025
    iput-boolean v1, p0, isDone:Z

    .line 1026
    iput v1, p0, mPrivilegedAttr:I

    .line 1027
    iput-object v2, p0, opPackageName:Ljava/lang/String;

    .line 1032
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 1033
    iput-object p3, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1034
    iput p4, p0, userId:I

    .line 1035
    iput-boolean p5, p0, restricted:Z

    .line 1036
    iput-object p6, p0, owner:Ljava/lang/String;

    .line 1038
    if-eqz p2, :cond_21

    .line 1039
    const/4 v1, 0x0

    :try_start_1e
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_22

    .line 1044
    :cond_21
    :goto_21
    return-void

    .line 1041
    :catch_22
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "restricted"    # Z
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 1048
    invoke-direct/range {p0 .. p6}, <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    .line 1049
    if-eqz p7, :cond_57

    .line 1050
    iput-object p7, p0, attribute:Landroid/os/Bundle;

    .line 1051
    iget-object v0, p0, attribute:Landroid/os/Bundle;

    const-string/jumbo v1, "packageName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, opPackageName:Ljava/lang/String;

    .line 1052
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1053
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, opPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_33
    if-nez p5, :cond_57

    iget-object v0, p0, opPackageName:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 1056
    const-string v0, "com.samsung.android.fingerprint.service"

    iget-object v1, p0, opPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, isFromFPMS:Z

    .line 1059
    :cond_46
    iget-object v0, p0, opPackageName:Ljava/lang/String;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->access$1000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1060
    const v0, -0x7ffffff9

    iput v0, p0, mPrivilegedAttr:I

    .line 1068
    :cond_57
    :goto_57
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1069
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: restricted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor: privilegedAttr=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mPrivilegedAttr:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_ab
    return-void

    .line 1064
    :cond_ac
    const-string/jumbo v0, "privileged_attr"

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mPrivilegedAttr:I

    goto :goto_57
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p1, p2}, sendRemoved(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p1}, sendError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p1, p2}, sendAuthenticated(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p1}, sendAcquired(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p1, p2, p3}, sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method private isQualityFailedInfo(I)Z
    .registers 3
    .param p1, "acquiredInfo"    # I

    .prologue
    .line 1243
    sparse-switch p1, :sswitch_data_8

    .line 1253
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1251
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1243
    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_5
    .end sparse-switch
.end method

.method private sendAcquired(I)Z
    .registers 12
    .param p1, "acquiredInfo"    # I

    .prologue
    const/4 v5, 0x1

    .line 1260
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1261
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : acquiredInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_2b
    iget-object v6, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v6, :cond_50

    .line 1264
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : receiver is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_4f
    :goto_4f
    return v5

    .line 1268
    :cond_50
    :try_start_50
    invoke-direct {p0, p1}, isQualityFailedInfo(I)Z

    move-result v6

    if-eqz v6, :cond_66

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, hasPrivilegedAttr(I)Z

    move-result v6

    if-nez v6, :cond_66

    .line 1269
    iget-object v6, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    .line 1271
    :cond_66
    iget-object v6, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v7, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v7}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v8

    invoke-interface {v6, v8, v9, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JI)V

    .line 1272
    const/16 v6, 0x2714

    if-eq p1, v6, :cond_79

    const/16 v6, 0x2717

    if-ne p1, v6, :cond_f0

    :cond_79
    iget-boolean v6, p0, isFromFPMS:Z

    if-eqz v6, :cond_f0

    .line 1275
    iget-object v6, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1276
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_fd

    .line 1277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1278
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v4

    .line 1279
    .local v4, "result":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : cancelAuthentication FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    if-eqz v4, :cond_e7

    .line 1281
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ClientMonitor["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : sendAcquired : cancelAuthentication failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_e7} :catch_107
    .catchall {:try_start_50 .. :try_end_e7} :catchall_118

    .line 1295
    :cond_e7
    if-nez p1, :cond_4f

    .line 1296
    iget-object v6, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_4f

    .line 1285
    .end local v0    # "begin":J
    .end local v2    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v4    # "result":I
    :cond_f0
    const/16 v6, 0x2719

    if-ne p1, v6, :cond_fd

    .line 1295
    if-nez p1, :cond_4f

    .line 1296
    iget-object v6, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_4f

    .line 1288
    :cond_fd
    const/4 v5, 0x0

    .line 1295
    if-nez p1, :cond_4f

    .line 1296
    iget-object v6, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_4f

    .line 1289
    :catch_107
    move-exception v3

    .line 1290
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_108
    const-string v6, "FingerprintService"

    const-string v7, "Failed to invoke sendAcquired:"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_118

    .line 1295
    if-nez p1, :cond_4f

    .line 1296
    iget-object v6, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;)V

    goto/16 :goto_4f

    .line 1295
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_118
    move-exception v5

    if-nez p1, :cond_120

    .line 1296
    iget-object v6, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->userActivity()V
    invoke-static {v6}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;)V

    :cond_120
    throw v5
.end method

.method private sendAuthenticated(II)Z
    .registers 20
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 1174
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : sendAuthenticated : fpId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_3a
    const/16 v16, 0x0

    .line 1176
    .local v16, "result":Z
    if-eqz p1, :cond_f1

    const/4 v10, 0x1

    .line 1177
    .local v10, "authenticated":Z
    :goto_3f
    if-eqz p1, :cond_8b

    move-object/from16 v0, p0

    iget-object v2, v0, attribute:Landroid/os/Bundle;

    if-eqz v2, :cond_8b

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, attribute:Landroid/os/Bundle;

    const-string/jumbo v3, "request_template_index_list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 1179
    .local v8, "allowIndexes":[I
    if-eqz v8, :cond_8b

    .line 1180
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : sendAuthenticated : allowIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v10, 0x0

    .line 1182
    move-object v9, v8

    .local v9, "arr$":[I
    array-length v15, v9

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_82
    if-ge v14, v15, :cond_8b

    aget v13, v9, v14

    .line 1183
    .local v13, "i":I
    move/from16 v0, p1

    if-ne v13, v0, :cond_f4

    .line 1184
    const/4 v10, 0x1

    .line 1190
    .end local v8    # "allowIndexes":[I
    .end local v9    # "arr$":[I
    .end local v13    # "i":I
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    :cond_8b
    move-object/from16 v0, p0

    iget-object v2, v0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v2, :cond_17c

    .line 1192
    :try_start_91
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xfc

    invoke-static {v2, v3, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 1194
    if-nez v10, :cond_f7

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_af} :catch_16e

    .line 1213
    :goto_af
    if-nez v10, :cond_191

    .line 1214
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, hasPrivilegedAttr(I)Z

    move-result v2

    if-nez v2, :cond_c5

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    .line 1217
    :cond_c5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object/from16 v0, p0

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    invoke-static {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v2

    or-int v16, v16, v2

    .line 1218
    move-object/from16 v0, p0

    iget-boolean v2, v0, isFromFPMS:Z

    if-nez v2, :cond_f0

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, "FPIB"

    move-object/from16 v0, p0

    iget-object v4, v0, opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1239
    :cond_f0
    :goto_f0
    return v16

    .line 1176
    .end local v10    # "authenticated":Z
    :cond_f1
    const/4 v10, 0x0

    goto/16 :goto_3f

    .line 1182
    .restart local v8    # "allowIndexes":[I
    .restart local v9    # "arr$":[I
    .restart local v10    # "authenticated":Z
    .restart local v13    # "i":I
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    :cond_f4
    add-int/lit8 v14, v14, 0x1

    goto :goto_82

    .line 1197
    .end local v8    # "allowIndexes":[I
    .end local v9    # "arr$":[I
    .end local v13    # "i":I
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    :cond_f7
    :try_start_f7
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 1198
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAuthenticated(owner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v4

    iget-object v4, v4, owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_13e
    move-object/from16 v0, p0

    iget-boolean v2, v0, restricted:Z

    if-nez v2, :cond_17a

    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v6

    move/from16 v4, p2

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object v12, v2

    .line 1203
    .local v12, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_158
    move-object/from16 v0, p0

    iget-object v2, v0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v12}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V

    .line 1204
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, isDone:Z
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_16c} :catch_16e

    goto/16 :goto_af

    .line 1206
    .end local v12    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :catch_16e
    move-exception v11

    .line 1207
    .local v11, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1208
    const/16 v16, 0x1

    .line 1209
    goto/16 :goto_af

    .line 1201
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_17a
    const/4 v12, 0x0

    goto :goto_158

    .line 1211
    :cond_17c
    const/16 v16, 0x1

    goto/16 :goto_af

    .line 1222
    :cond_180
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, "FPIF"

    move-object/from16 v0, p0

    iget-object v4, v0, opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_f0

    .line 1233
    :cond_191
    or-int/lit8 v16, v16, 0x1

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 1235
    move-object/from16 v0, p0

    iget-boolean v2, v0, isFromFPMS:Z

    if-nez v2, :cond_f0

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v3, "FPIS"

    move-object/from16 v0, p0

    iget-object v4, v0, opPackageName:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_f0
.end method

.method private sendEnrollResult(III)Z
    .registers 12
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .prologue
    const/4 v7, 0x1

    .line 1154
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor : sendEnrollResult : fpId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_33
    iget-object v1, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_38

    .line 1166
    :goto_37
    return v7

    .line 1156
    :cond_38
    iget-object v1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    .line 1157
    iget-object v1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfb

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1159
    :try_start_4c
    iget-object v1, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5a} :catch_5b

    goto :goto_37

    .line 1164
    :catch_5b
    move-exception v0

    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37
.end method

.method private sendError(I)Z
    .registers 7
    .param p1, "error"    # I

    .prologue
    const/4 v4, 0x1

    .line 1305
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : sendError : error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_2b
    iget-boolean v1, p0, isDone:Z

    if-eqz v1, :cond_54

    .line 1307
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : skip error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_53
    :goto_53
    return v4

    .line 1310
    :cond_54
    iget-object v1, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_53

    .line 1312
    :try_start_58
    iget-object v1, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_63} :catch_64

    goto :goto_53

    .line 1313
    :catch_64
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private sendRemoved(II)Z
    .registers 7
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 1139
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : sendRemoved : fingerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_34
    iget-object v1, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_3a

    const/4 v1, 0x0

    .line 1147
    :goto_39
    return v1

    .line 1142
    :cond_3a
    :try_start_3a
    iget-object v1, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JII)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_47

    .line 1147
    :goto_45
    const/4 v1, 0x1

    goto :goto_39

    .line 1144
    :catch_47
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify Removed:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 1098
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientMonitor["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : binderDied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_26
    iget-object v0, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1121
    return-void
.end method

.method public destroy()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1083
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor : destroy, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_21
    iget-object v1, p0, token:Landroid/os/IBinder;

    if-eqz v1, :cond_2d

    .line 1086
    :try_start_25
    iget-object v1, p0, token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2b
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_2b} :catch_30

    .line 1091
    :goto_2b
    iput-object v5, p0, token:Landroid/os/IBinder;

    .line 1093
    :cond_2d
    iput-object v5, p0, receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1094
    return-void

    .line 1087
    :catch_30
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1126
    :try_start_0
    iget-object v0, p0, token:Landroid/os/IBinder;

    if-eqz v0, :cond_2a

    .line 1127
    # getter for: Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_25
    iget-object v0, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2e

    .line 1131
    :cond_2a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1133
    return-void

    .line 1131
    :catchall_2e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public hasPrivilegedAttr(I)Z
    .registers 3
    .param p1, "attr"    # I

    .prologue
    .line 1076
    iget v0, p0, mPrivilegedAttr:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 1077
    const/4 v0, 0x1

    .line 1079
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
