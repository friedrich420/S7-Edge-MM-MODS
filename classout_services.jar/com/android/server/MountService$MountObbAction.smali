.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .registers 5
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 3733
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    .line 3734
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3735
    iput-object p3, p0, mKey:Ljava/lang/String;

    .line 3736
    iput p4, p0, mCallingUid:I

    .line 3737
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3815
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, sendNewStatusOrIgnore(I)V

    .line 3816
    return-void
.end method

.method public handleExecute()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3741
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v10}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)V

    .line 3742
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v10}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)V

    .line 3744
    invoke-virtual {p0}, getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v8

    .line 3746
    .local v8, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    iget-object v11, v8, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    iget v12, p0, mCallingUid:I

    # invokes: Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    invoke-static {v10, v11, v12}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_46

    .line 3747
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Denied attempt to mount OBB "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " which is owned by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    const/16 v10, 0x19

    invoke-virtual {p0, v10}, sendNewStatusOrIgnore(I)V

    .line 3811
    :goto_45
    return-void

    .line 3754
    :cond_46
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v11

    monitor-enter v11

    .line 3755
    :try_start_4d
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v10

    iget-object v12, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v12, v12, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 3756
    .local v5, "isMounted":Z
    monitor-exit v11
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_7e

    .line 3757
    if-eqz v5, :cond_81

    .line 3758
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    const/16 v10, 0x18

    invoke-virtual {p0, v10}, sendNewStatusOrIgnore(I)V

    goto :goto_45

    .line 3756
    .end local v5    # "isMounted":Z
    :catchall_7e
    move-exception v10

    :try_start_7f
    monitor-exit v11
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v10

    .line 3764
    .restart local v5    # "isMounted":Z
    :cond_81
    iget-object v10, p0, mKey:Ljava/lang/String;

    if-nez v10, :cond_eb

    .line 3765
    const-string/jumbo v4, "none"

    .line 3786
    .local v4, "hashedKey":Ljava/lang/String;
    :goto_88
    const/4 v9, 0x0

    .line 3788
    .local v9, "rc":I
    :try_start_89
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v10}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v10

    const-string/jumbo v11, "obb"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "mount"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v14, v14, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    new-instance v14, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v14, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget v14, v14, Lcom/android/server/MountService$ObbState;->ownerGid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_b8
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_89 .. :try_end_b8} :catch_135

    .line 3797
    :cond_b8
    :goto_b8
    if-nez v9, :cond_144

    .line 3799
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Successfully mounted OBB "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v12, v12, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v11

    monitor-enter v11

    .line 3802
    :try_start_dd
    iget-object v10, p0, this$0:Lcom/android/server/MountService;

    iget-object v12, p0, mObbState:Lcom/android/server/MountService$ObbState;

    # invokes: Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v10, v12}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3803
    monitor-exit v11
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_141

    .line 3805
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, sendNewStatusOrIgnore(I)V

    goto/16 :goto_45

    .line 3768
    .end local v4    # "hashedKey":Ljava/lang/String;
    .end local v9    # "rc":I
    :cond_eb
    :try_start_eb
    const-string v10, "PBKDF2WithHmacSHA1"

    invoke-static {v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 3770
    .local v3, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v10, p0, mKey:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    iget-object v11, v8, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v12, 0x400

    const/16 v13, 0x80

    invoke-direct {v7, v10, v11, v12, v13}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3772
    .local v7, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v3, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 3773
    .local v6, "key":Ljavax/crypto/SecretKey;
    new-instance v0, Ljava/math/BigInteger;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/math/BigInteger;-><init>([B)V

    .line 3774
    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v10, 0x10

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_114
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_eb .. :try_end_114} :catch_117
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_eb .. :try_end_114} :catch_126

    move-result-object v4

    .restart local v4    # "hashedKey":Ljava/lang/String;
    goto/16 :goto_88

    .line 3775
    .end local v0    # "bi":Ljava/math/BigInteger;
    .end local v3    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "hashedKey":Ljava/lang/String;
    .end local v6    # "key":Ljavax/crypto/SecretKey;
    .end local v7    # "ks":Ljava/security/spec/KeySpec;
    :catch_117
    move-exception v2

    .line 3776
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v10, "MountService"

    const-string v11, "Could not load PBKDF2 algorithm"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3777
    const/16 v10, 0x14

    invoke-virtual {p0, v10}, sendNewStatusOrIgnore(I)V

    goto/16 :goto_45

    .line 3779
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_126
    move-exception v2

    .line 3780
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v10, "MountService"

    const-string v11, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3781
    const/16 v10, 0x14

    invoke-virtual {p0, v10}, sendNewStatusOrIgnore(I)V

    goto/16 :goto_45

    .line 3790
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    .restart local v4    # "hashedKey":Ljava/lang/String;
    .restart local v9    # "rc":I
    :catch_135
    move-exception v2

    .line 3791
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3792
    .local v1, "code":I
    const/16 v10, 0x195

    if-eq v1, v10, :cond_b8

    .line 3793
    const/4 v9, -0x1

    goto/16 :goto_b8

    .line 3803
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_141
    move-exception v10

    :try_start_142
    monitor-exit v11
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    throw v10

    .line 3807
    :cond_144
    const-string v10, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t mount OBB file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    const/16 v10, 0x15

    invoke-virtual {p0, v10}, sendNewStatusOrIgnore(I)V

    goto/16 :goto_45
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3821
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3822
    iget-object v1, p0, mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3823
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
