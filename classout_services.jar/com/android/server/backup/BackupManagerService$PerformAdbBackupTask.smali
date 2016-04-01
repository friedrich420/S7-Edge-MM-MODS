.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field mCompress:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mExtraFlag:I

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrivilegeApp:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;ZI)V
    .registers 20
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "packages"    # [Ljava/lang/String;
    .param p14, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p15, "privilegeApp"    # Z
    .param p16, "extraFlag"    # I

    .prologue
    .line 3903
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    .line 3904
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 3905
    move-object/from16 v0, p14

    iput-object v0, p0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3907
    iput-object p2, p0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 3908
    iput-boolean p4, p0, mIncludeApks:Z

    .line 3909
    iput-boolean p5, p0, mIncludeObbs:Z

    .line 3910
    iput-boolean p6, p0, mIncludeShared:Z

    .line 3911
    iput-boolean p7, p0, mDoWidgets:Z

    .line 3912
    iput-boolean p10, p0, mAllApps:Z

    .line 3913
    iput-boolean p11, p0, mIncludeSystem:Z

    .line 3914
    if-nez p13, :cond_39

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    iput-object v1, p0, mPackages:Ljava/util/ArrayList;

    .line 3917
    iput-object p8, p0, mCurrentPassword:Ljava/lang/String;

    .line 3922
    if-eqz p9, :cond_2c

    const-string v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3923
    :cond_2c
    iput-object p8, p0, mEncryptPassword:Ljava/lang/String;

    .line 3927
    :goto_2e
    iput-boolean p12, p0, mCompress:Z

    .line 3928
    move/from16 v0, p15

    iput-boolean v0, p0, mPrivilegeApp:Z

    .line 3929
    move/from16 v0, p16

    iput v0, p0, mExtraFlag:I

    .line 3930
    return-void

    .line 3914
    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p13 .. p13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1e

    .line 3925
    :cond_43
    iput-object p9, p0, mEncryptPassword:Ljava/lang/String;

    goto :goto_2e
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 26
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3962
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$2100(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v17

    .line 3963
    .local v17, "newUserSalt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$2200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    .line 3967
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 3968
    .local v13, "masterPw":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->access$2300(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3969
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$2100(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v9

    .line 3972
    .local v9, "checksumSalt":[B
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 3973
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3974
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3975
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 3978
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3979
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3981
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2400(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3984
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->access$2400(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3985
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3987
    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3988
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3991
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 3992
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3994
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 3995
    .local v5, "IV":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->access$2400(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3996
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4008
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 4009
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 4010
    .local v14, "mk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->access$2500(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    .line 4013
    .local v8, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4015
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4016
    .local v16, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4017
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 4018
    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4019
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 4020
    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 4021
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 4022
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 4023
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    .line 4024
    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->access$2400(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4025
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4027
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 4033
    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    .line 4034
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 4038
    .end local v1    # "eof":[B
    :goto_7
    return-void

    .line 4035
    :catch_8
    move-exception v0

    .line 4036
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3933
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3934
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3935
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 3938
    :try_start_1e
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/16 v6, 0x40

    iget-object v7, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mEdmUserId:I
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->access$2000(Lcom/android/server/backup/BackupManagerService;)I

    move-result v7

    invoke-interface {v5, v4, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3940
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_4

    .line 3941
    invoke-virtual {p1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_34

    goto :goto_4

    .line 3943
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_34
    move-exception v0

    .line 3944
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Fail to obtain package\'s info for backup - mdm request"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3948
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3d
    :try_start_3d
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3950
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_4c} :catch_4d

    goto :goto_4

    .line 3951
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_4d
    move-exception v0

    .line 3952
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3957
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_6d
    return-void
.end method

.method public run()V
    .registers 31

    .prologue
    .line 4042
    const-string v3, "BackupManagerService"

    const-string v4, "--- Performing full-dataset adb backup ---"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4044
    new-instance v27, Ljava/util/TreeMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/TreeMap;-><init>()V

    .line 4045
    .local v27, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v24, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 4046
    .local v24, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 4048
    invoke-virtual/range {p0 .. p0}, sendStartBackup()V

    .line 4051
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAllApps:Z

    if-eqz v3, :cond_62

    .line 4052
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v12

    .line 4054
    .local v12, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_33
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_62

    .line 4055
    move/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/PackageInfo;

    .line 4057
    .local v28, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, mIncludeSystem:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_54

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5f

    .line 4059
    :cond_54
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4054
    :cond_5f
    add-int/lit8 v21, v21, 0x1

    goto :goto_33

    .line 4066
    .end local v12    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v21    # "i":I
    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_62
    move-object/from16 v0, p0

    iget-boolean v3, v0, mDoWidgets:Z

    if-eqz v3, :cond_78

    .line 4067
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v29

    .line 4069
    .local v29, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v29, :cond_78

    .line 4080
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 4087
    .end local v29    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_78
    move-object/from16 v0, p0

    iget-object v3, v0, mPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_89

    .line 4088
    move-object/from16 v0, p0

    iget-object v3, v0, mPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 4094
    :cond_89
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v3

    if-nez v3, :cond_c9

    .line 4096
    move-object/from16 v0, p0

    iget-boolean v3, v0, mPrivilegeApp:Z

    if-eqz v3, :cond_a1

    move-object/from16 v0, p0

    iget v3, v0, mExtraFlag:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_c9

    .line 4097
    :cond_a1
    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 4098
    .local v23, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_a9
    :goto_a9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 4099
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/PackageInfo;

    .line 4100
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 4101
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    goto :goto_a9

    .line 4108
    .end local v23    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_c9
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4110
    .local v13, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v26, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 4111
    .local v26, "ofstream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 4113
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v28, 0x0

    .line 4115
    .restart local v28    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v3, v0, mEncryptPassword:Ljava/lang/String;

    if-eqz v3, :cond_162

    move-object/from16 v0, p0

    iget-object v3, v0, mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_162

    const/16 v16, 0x1

    .line 4118
    .local v16, "encrypting":Z
    :goto_f6
    move-object/from16 v0, p0

    iget-boolean v3, v0, mPrivilegeApp:Z

    if-nez v3, :cond_16b

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v3

    if-eqz v3, :cond_16b

    if-nez v16, :cond_16b

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v3

    if-nez v3, :cond_16b

    .line 4120
    const-string v3, "BackupManagerService"

    const-string v4, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_119} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_119} :catch_3b0
    .catchall {:try_start_e4 .. :try_end_119} :catchall_46d

    .line 4236
    if-eqz v5, :cond_11e

    :try_start_11b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4237
    :cond_11e
    move-object/from16 v0, p0

    iget-object v3, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_125} :catch_4d3

    .line 4241
    :goto_125
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_12c
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4243
    monitor-exit v4
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_165

    .line 4244
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4245
    :try_start_13b
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4246
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 4247
    monitor-exit v4
    :try_end_14b
    .catchall {:try_start_13b .. :try_end_14b} :catchall_168

    .line 4248
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 4249
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4250
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4253
    .end local v16    # "encrypting":Z
    :goto_161
    return-void

    .line 4115
    :cond_162
    const/16 v16, 0x0

    goto :goto_f6

    .line 4243
    .restart local v16    # "encrypting":Z
    :catchall_165
    move-exception v3

    :try_start_166
    monitor-exit v4
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    throw v3

    .line 4247
    :catchall_168
    move-exception v3

    :try_start_169
    monitor-exit v4
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    throw v3

    .line 4124
    :cond_16b
    move-object/from16 v17, v26

    .line 4128
    .local v17, "finalOutput":Ljava/io/OutputStream;
    :try_start_16d
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v3

    if-nez v3, :cond_1e1

    .line 4130
    move-object/from16 v0, p0

    iget-boolean v3, v0, mPrivilegeApp:Z

    if-nez v3, :cond_1e1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, mCurrentPassword:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$2600(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e1

    .line 4131
    const-string v3, "BackupManagerService"

    const-string v4, "Backup password mismatch; aborting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_192} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_192} :catch_3b0
    .catchall {:try_start_16d .. :try_end_192} :catchall_46d

    .line 4236
    if-eqz v5, :cond_197

    :try_start_194
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4237
    :cond_197
    move-object/from16 v0, p0

    iget-object v3, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_19e} :catch_4d0

    .line 4241
    :goto_19e
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_1a5
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4243
    monitor-exit v4
    :try_end_1af
    .catchall {:try_start_1a5 .. :try_end_1af} :catchall_1db

    .line 4244
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4245
    :try_start_1b4
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4246
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 4247
    monitor-exit v4
    :try_end_1c4
    .catchall {:try_start_1b4 .. :try_end_1c4} :catchall_1de

    .line 4248
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 4249
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4250
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_161

    .line 4243
    :catchall_1db
    move-exception v3

    :try_start_1dc
    monitor-exit v4
    :try_end_1dd
    .catchall {:try_start_1dc .. :try_end_1dd} :catchall_1db

    throw v3

    .line 4247
    :catchall_1de
    move-exception v3

    :try_start_1df
    monitor-exit v4
    :try_end_1e0
    .catchall {:try_start_1df .. :try_end_1e0} :catchall_1de

    throw v3

    .line 4161
    :cond_1e1
    :try_start_1e1
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4163
    .local v20, "headerbuf":Ljava/lang/StringBuilder;
    const-string v3, "ANDROID BACKUP\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4164
    const/4 v3, 0x3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4165
    move-object/from16 v0, p0

    iget-boolean v3, v0, mCompress:Z

    if-eqz v3, :cond_336

    const-string v3, "\n1\n"

    :goto_1ff
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_204
    .catch Landroid/os/RemoteException; {:try_start_1e1 .. :try_end_204} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_204} :catch_3b0
    .catchall {:try_start_1e1 .. :try_end_204} :catchall_46d

    .line 4169
    if-eqz v16, :cond_33a

    :try_start_206
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v3

    if-nez v3, :cond_33a

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v3

    if-nez v3, :cond_33a

    .line 4172
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_223} :catch_346
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_223} :catch_2e4
    .catchall {:try_start_206 .. :try_end_223} :catchall_46d

    move-result-object v17

    move-object/from16 v18, v17

    .line 4177
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .local v18, "finalOutput":Ljava/io/OutputStream;
    :goto_226
    :try_start_226
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 4178
    .local v19, "header":[B
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4181
    move-object/from16 v0, p0

    iget-boolean v3, v0, mCompress:Z

    if-eqz v3, :cond_4d6

    .line 4182
    new-instance v14, Ljava/util/zip/Deflater;

    const/16 v3, 0x9

    invoke-direct {v14, v3}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 4183
    .local v14, "deflater":Ljava/util/zip/Deflater;
    new-instance v17, Ljava/util/zip/DeflaterOutputStream;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_24e} :catch_4cb
    .catch Landroid/os/RemoteException; {:try_start_226 .. :try_end_24e} :catch_2e4
    .catchall {:try_start_226 .. :try_end_24e} :catchall_46d

    .line 4186
    .end local v14    # "deflater":Ljava/util/zip/Deflater;
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    :goto_24e
    move-object/from16 v5, v17

    .line 4197
    :try_start_250
    move-object/from16 v0, p0

    iget-boolean v3, v0, mIncludeShared:Z
    :try_end_254
    .catch Landroid/os/RemoteException; {:try_start_250 .. :try_end_254} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_254} :catch_3b0
    .catchall {:try_start_250 .. :try_end_254} :catchall_46d

    if-eqz v3, :cond_26a

    .line 4199
    :try_start_256
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.sharedstoragebackup"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v28

    .line 4200
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_256 .. :try_end_26a} :catch_3a6
    .catch Landroid/os/RemoteException; {:try_start_256 .. :try_end_26a} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_26a} :catch_3b0
    .catchall {:try_start_256 .. :try_end_26a} :catchall_46d

    .line 4207
    :cond_26a
    :goto_26a
    :try_start_26a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 4208
    .local v11, "N":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_270
    move/from16 v0, v21

    if-ge v0, v11, :cond_40c

    .line 4209
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v28, v0

    .line 4210
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.sharedstoragebackup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 4213
    .local v22, "isSharedStorage":Z
    new-instance v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v28

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, mIncludeApks:Z

    move-object/from16 v0, p0

    iget v9, v0, mExtraFlag:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, mPrivilegeApp:Z

    invoke-direct/range {v3 .. v10}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;ZIZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    .line 4215
    if-eqz v22, :cond_402

    const-string v3, "Shared storage"

    :goto_2ab
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, sendOnBackupPackage(Ljava/lang/String;)V

    .line 4216
    move-object/from16 v0, p0

    iget-object v3, v0, mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I

    .line 4220
    move-object/from16 v0, p0

    iget-boolean v3, v0, mIncludeObbs:Z

    if-eqz v3, :cond_408

    .line 4221
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v25

    .line 4222
    .local v25, "obbOkay":Z
    if-nez v25, :cond_408

    .line 4223
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure writing OBB stack for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2e4
    .catch Landroid/os/RemoteException; {:try_start_26a .. :try_end_2e4} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_2e4} :catch_3b0
    .catchall {:try_start_26a .. :try_end_2e4} :catchall_46d

    .line 4230
    .end local v11    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v19    # "header":[B
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v21    # "i":I
    .end local v22    # "isSharedStorage":Z
    .end local v25    # "obbOkay":Z
    :catch_2e4
    move-exception v15

    .line 4231
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_2e5
    const-string v3, "BackupManagerService"

    const-string v4, "App died during full backup"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ec
    .catchall {:try_start_2e5 .. :try_end_2ec} :catchall_46d

    .line 4236
    if-eqz v5, :cond_2f1

    :try_start_2ee
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4237
    :cond_2f1
    move-object/from16 v0, p0

    iget-object v3, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f8
    .catch Ljava/io/IOException; {:try_start_2ee .. :try_end_2f8} :catch_4c2

    .line 4241
    :goto_2f8
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_2ff
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4243
    monitor-exit v4
    :try_end_309
    .catchall {:try_start_2ff .. :try_end_309} :catchall_461

    .line 4244
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4245
    :try_start_30e
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4246
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 4247
    monitor-exit v4
    :try_end_31e
    .catchall {:try_start_30e .. :try_end_31e} :catchall_464

    .line 4248
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 4249
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4250
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_161

    .line 4165
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_336
    :try_start_336
    const-string v3, "\n0\n"
    :try_end_338
    .catch Landroid/os/RemoteException; {:try_start_336 .. :try_end_338} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_336 .. :try_end_338} :catch_3b0
    .catchall {:try_start_336 .. :try_end_338} :catchall_46d

    goto/16 :goto_1ff

    .line 4174
    :cond_33a
    :try_start_33a
    const-string/jumbo v3, "none\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_342
    .catch Ljava/lang/Exception; {:try_start_33a .. :try_end_342} :catch_346
    .catch Landroid/os/RemoteException; {:try_start_33a .. :try_end_342} :catch_2e4
    .catchall {:try_start_33a .. :try_end_342} :catchall_46d

    move-object/from16 v18, v17

    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_226

    .line 4187
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    :catch_346
    move-exception v15

    .line 4189
    .local v15, "e":Ljava/lang/Exception;
    :goto_347
    :try_start_347
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to emit archive header"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4191
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_356
    .catch Landroid/os/RemoteException; {:try_start_347 .. :try_end_356} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_356} :catch_3b0
    .catchall {:try_start_347 .. :try_end_356} :catchall_46d

    .line 4236
    if-eqz v5, :cond_35b

    :try_start_358
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4237
    :cond_35b
    move-object/from16 v0, p0

    iget-object v3, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_362
    .catch Ljava/io/IOException; {:try_start_358 .. :try_end_362} :catch_4c8

    .line 4241
    :goto_362
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_369
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4243
    monitor-exit v4
    :try_end_373
    .catchall {:try_start_369 .. :try_end_373} :catchall_3a0

    .line 4244
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4245
    :try_start_378
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4246
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 4247
    monitor-exit v4
    :try_end_388
    .catchall {:try_start_378 .. :try_end_388} :catchall_3a3

    .line 4248
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 4249
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4250
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_161

    .line 4243
    :catchall_3a0
    move-exception v3

    :try_start_3a1
    monitor-exit v4
    :try_end_3a2
    .catchall {:try_start_3a1 .. :try_end_3a2} :catchall_3a0

    throw v3

    .line 4247
    :catchall_3a3
    move-exception v3

    :try_start_3a4
    monitor-exit v4
    :try_end_3a5
    .catchall {:try_start_3a4 .. :try_end_3a5} :catchall_3a3

    throw v3

    .line 4201
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "header":[B
    :catch_3a6
    move-exception v15

    .line 4202
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3a7
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to find shared-storage backup handler"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ae
    .catch Landroid/os/RemoteException; {:try_start_3a7 .. :try_end_3ae} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_3a7 .. :try_end_3ae} :catch_3b0
    .catchall {:try_start_3a7 .. :try_end_3ae} :catchall_46d

    goto/16 :goto_26a

    .line 4232
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v19    # "header":[B
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_3b0
    move-exception v15

    .line 4233
    .local v15, "e":Ljava/lang/Exception;
    :try_start_3b1
    const-string v3, "BackupManagerService"

    const-string v4, "Internal exception during full backup"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b8
    .catchall {:try_start_3b1 .. :try_end_3b8} :catchall_46d

    .line 4236
    if-eqz v5, :cond_3bd

    :try_start_3ba
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4237
    :cond_3bd
    move-object/from16 v0, p0

    iget-object v3, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c4
    .catch Ljava/io/IOException; {:try_start_3ba .. :try_end_3c4} :catch_4bf

    .line 4241
    :goto_3c4
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_3cb
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4243
    monitor-exit v4
    :try_end_3d5
    .catchall {:try_start_3cb .. :try_end_3d5} :catchall_467

    .line 4244
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4245
    :try_start_3da
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4246
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 4247
    monitor-exit v4
    :try_end_3ea
    .catchall {:try_start_3da .. :try_end_3ea} :catchall_46a

    .line 4248
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 4249
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4250
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_161

    .line 4215
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v11    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "header":[B
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v21    # "i":I
    .restart local v22    # "isSharedStorage":Z
    :cond_402
    :try_start_402
    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_2ab

    .line 4208
    :cond_408
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_270

    .line 4229
    .end local v22    # "isSharedStorage":Z
    :cond_40c
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_411
    .catch Landroid/os/RemoteException; {:try_start_402 .. :try_end_411} :catch_2e4
    .catch Ljava/lang/Exception; {:try_start_402 .. :try_end_411} :catch_3b0
    .catchall {:try_start_402 .. :try_end_411} :catchall_46d

    .line 4236
    if-eqz v5, :cond_416

    :try_start_413
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4237
    :cond_416
    move-object/from16 v0, p0

    iget-object v3, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41d
    .catch Ljava/io/IOException; {:try_start_413 .. :try_end_41d} :catch_4c5

    .line 4241
    :goto_41d
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_424
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4243
    monitor-exit v4
    :try_end_42e
    .catchall {:try_start_424 .. :try_end_42e} :catchall_45b

    .line 4244
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4245
    :try_start_433
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4246
    move-object/from16 v0, p0

    iget-object v3, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 4247
    monitor-exit v4
    :try_end_443
    .catchall {:try_start_433 .. :try_end_443} :catchall_45e

    .line 4248
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 4249
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4250
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_161

    .line 4243
    :catchall_45b
    move-exception v3

    :try_start_45c
    monitor-exit v4
    :try_end_45d
    .catchall {:try_start_45c .. :try_end_45d} :catchall_45b

    throw v3

    .line 4247
    :catchall_45e
    move-exception v3

    :try_start_45f
    monitor-exit v4
    :try_end_460
    .catchall {:try_start_45f .. :try_end_460} :catchall_45e

    throw v3

    .line 4243
    .end local v11    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v19    # "header":[B
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v21    # "i":I
    .local v15, "e":Landroid/os/RemoteException;
    :catchall_461
    move-exception v3

    :try_start_462
    monitor-exit v4
    :try_end_463
    .catchall {:try_start_462 .. :try_end_463} :catchall_461

    throw v3

    .line 4247
    :catchall_464
    move-exception v3

    :try_start_465
    monitor-exit v4
    :try_end_466
    .catchall {:try_start_465 .. :try_end_466} :catchall_464

    throw v3

    .line 4243
    .local v15, "e":Ljava/lang/Exception;
    :catchall_467
    move-exception v3

    :try_start_468
    monitor-exit v4
    :try_end_469
    .catchall {:try_start_468 .. :try_end_469} :catchall_467

    throw v3

    .line 4247
    :catchall_46a
    move-exception v3

    :try_start_46b
    monitor-exit v4
    :try_end_46c
    .catchall {:try_start_46b .. :try_end_46c} :catchall_46a

    throw v3

    .line 4235
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_46d
    move-exception v3

    .line 4236
    if-eqz v5, :cond_473

    :try_start_470
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 4237
    :cond_473
    move-object/from16 v0, p0

    iget-object v4, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47a
    .catch Ljava/io/IOException; {:try_start_470 .. :try_end_47a} :catch_4bd

    .line 4241
    :goto_47a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4242
    :try_start_481
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 4243
    monitor-exit v4
    :try_end_48b
    .catchall {:try_start_481 .. :try_end_48b} :catchall_4b7

    .line 4244
    move-object/from16 v0, p0

    iget-object v4, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 4245
    :try_start_490
    move-object/from16 v0, p0

    iget-object v6, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4246
    move-object/from16 v0, p0

    iget-object v6, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 4247
    monitor-exit v4
    :try_end_4a0
    .catchall {:try_start_490 .. :try_end_4a0} :catchall_4ba

    .line 4248
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 4249
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 4250
    const-string v4, "BackupManagerService"

    const-string v6, "Full backup pass complete."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 4243
    :catchall_4b7
    move-exception v3

    :try_start_4b8
    monitor-exit v4
    :try_end_4b9
    .catchall {:try_start_4b8 .. :try_end_4b9} :catchall_4b7

    throw v3

    .line 4247
    :catchall_4ba
    move-exception v3

    :try_start_4bb
    monitor-exit v4
    :try_end_4bc
    .catchall {:try_start_4bb .. :try_end_4bc} :catchall_4ba

    throw v3

    .line 4238
    :catch_4bd
    move-exception v4

    goto :goto_47a

    .restart local v15    # "e":Ljava/lang/Exception;
    :catch_4bf
    move-exception v3

    goto/16 :goto_3c4

    .local v15, "e":Landroid/os/RemoteException;
    :catch_4c2
    move-exception v3

    goto/16 :goto_2f8

    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v11    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "header":[B
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v21    # "i":I
    :catch_4c5
    move-exception v3

    goto/16 :goto_41d

    .end local v11    # "N":I
    .end local v19    # "header":[B
    .end local v21    # "i":I
    .local v15, "e":Ljava/lang/Exception;
    :catch_4c8
    move-exception v3

    goto/16 :goto_362

    .line 4187
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :catch_4cb
    move-exception v15

    move-object/from16 v17, v18

    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_347

    .line 4238
    .end local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_4d0
    move-exception v3

    goto/16 :goto_19e

    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    :catch_4d3
    move-exception v3

    goto/16 :goto_125

    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "header":[B
    .restart local v20    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_4d6
    move-object/from16 v17, v18

    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_24e
.end method
