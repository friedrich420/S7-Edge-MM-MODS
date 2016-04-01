.class Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    }
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentPassword:Ljava/lang/String;

.field mDecryptPassword:Ljava/lang/String;

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

.field mInputFile:Landroid/os/ParcelFileDescriptor;

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mPrivilegeApp:Z

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .registers 10
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "privilegeApp"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6129
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6107
    iput-object v1, p0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 6108
    iput-object v1, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 6109
    iput-object v1, p0, mWidgetData:[B

    .line 6110
    const/4 v0, 0x0

    iput-boolean v0, p0, mPrivilegeApp:Z

    .line 6115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPackagePolicies:Ljava/util/HashMap;

    .line 6119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPackageInstallers:Ljava/util/HashMap;

    .line 6122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mManifestSignatures:Ljava/util/HashMap;

    .line 6126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mClearedPackages:Ljava/util/HashSet;

    .line 6803
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    .line 6804
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;)V

    iput-object v0, p0, mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    .line 6130
    iput-object p2, p0, mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 6131
    iput-object p3, p0, mCurrentPassword:Ljava/lang/String;

    .line 6132
    iput-object p4, p0, mDecryptPassword:Ljava/lang/String;

    .line 6133
    iput-object p5, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 6134
    iput-object p6, p0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6135
    iput-object v1, p0, mAgent:Landroid/app/IBackupAgent;

    .line 6136
    iput-object v1, p0, mAgentPackage:Ljava/lang/String;

    .line 6137
    iput-object v1, p0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 6138
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 6139
    iput-boolean p7, p0, mPrivilegeApp:Z

    .line 6143
    iget-object v0, p0, mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6144
    iget-object v0, p0, mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6145
    return-void
.end method

.method private HEXLOG([B)V
    .registers 13
    .param p1, "block"    # [B

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 7271
    const/4 v3, 0x0

    .line 7272
    .local v3, "offset":I
    array-length v4, p1

    .line 7273
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7274
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_d
    if-lez v4, :cond_50

    .line 7275
    const-string v6, "%04x   "

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7276
    if-le v4, v5, :cond_3e

    move v2, v5

    .line 7277
    .local v2, "numThisLine":I
    :goto_23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    if-ge v1, v2, :cond_40

    .line 7278
    const-string v6, "%02x "

    new-array v7, v10, [Ljava/lang/Object;

    add-int v8, v3, v1

    aget-byte v8, p1, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7277
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_3e
    move v2, v4

    .line 7276
    goto :goto_23

    .line 7280
    .restart local v1    # "i":I
    .restart local v2    # "numThisLine":I
    :cond_40
    const-string/jumbo v6, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7281
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7282
    sub-int/2addr v4, v2

    .line 7283
    add-int/2addr v3, v2

    .line 7284
    goto :goto_d

    .line 7285
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_50
    return-void
.end method


# virtual methods
.method attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 33
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    .prologue
    .line 6299
    const/16 v17, 0x0

    .line 6302
    .local v17, "result":Ljava/io/InputStream;
    :try_start_2
    const-string v20, "AES/CBC/PKCS5Padding"

    invoke-static/range {v20 .. v20}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 6303
    .local v6, "c":Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mDecryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move/from16 v4, p4

    # invokes: Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$2200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v19

    .line 6305
    .local v19, "userKey":Ljavax/crypto/SecretKey;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v5

    .line 6306
    .local v5, "IV":[B
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v9, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 6307
    .local v9, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x2

    new-instance v21, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface/range {v19 .. v19}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v22

    const-string v23, "AES"

    invoke-direct/range {v21 .. v23}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6310
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v14

    .line 6311
    .local v14, "mkCipher":[B
    invoke-virtual {v6, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v12

    .line 6314
    .local v12, "mkBlob":[B
    const/4 v15, 0x0

    .line 6315
    .local v15, "offset":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    aget-byte v10, v12, v15

    .line 6316
    .local v10, "len":I
    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 6317
    add-int/lit8 v15, v10, 0x1

    .line 6319
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    aget-byte v10, v12, v15

    .line 6320
    add-int v20, v16, v10

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 6322
    .local v11, "mk":[B
    add-int v15, v16, v10

    .line 6324
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    aget-byte v10, v12, v15

    .line 6325
    add-int v20, v16, v10

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 6329
    .local v13, "mkChecksum":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    # invokes: Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v11, v2, v3}, Lcom/android/server/backup/BackupManagerService;->access$2500(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v7

    .line 6330
    .local v7, "calculatedCk":[B
    invoke-static {v7, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_c7

    .line 6331
    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    .end local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-direct {v9, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 6332
    .restart local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x2

    new-instance v21, Ljavax/crypto/spec/SecretKeySpec;

    const-string v22, "AES"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v11, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6336
    new-instance v18, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .end local v17    # "result":Ljava/io/InputStream;
    .local v18, "result":Ljava/io/InputStream;
    move-object/from16 v17, v18

    .line 6356
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v10    # "len":I
    .end local v11    # "mk":[B
    .end local v12    # "mkBlob":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkCipher":[B
    .end local v16    # "offset":I
    .end local v18    # "result":Ljava/io/InputStream;
    .end local v19    # "userKey":Ljavax/crypto/SecretKey;
    .restart local v17    # "result":Ljava/io/InputStream;
    :cond_c6
    :goto_c6
    return-object v17

    .line 6337
    .restart local v5    # "IV":[B
    .restart local v6    # "c":Ljavax/crypto/Cipher;
    .restart local v7    # "calculatedCk":[B
    .restart local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v10    # "len":I
    .restart local v11    # "mk":[B
    .restart local v12    # "mkBlob":[B
    .restart local v13    # "mkChecksum":[B
    .restart local v14    # "mkCipher":[B
    .restart local v16    # "offset":I
    .restart local v19    # "userKey":Ljavax/crypto/SecretKey;
    :cond_c7
    if-eqz p8, :cond_c6

    const-string v20, "BackupManagerService"

    const-string v21, "Incorrect password"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_d0} :catch_d1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_d0} :catch_e0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_d0} :catch_eb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_d0} :catch_f6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_d0} :catch_101
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_d0} :catch_10c

    goto :goto_c6

    .line 6338
    .end local v5    # "IV":[B
    .end local v6    # "c":Ljavax/crypto/Cipher;
    .end local v7    # "calculatedCk":[B
    .end local v9    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v10    # "len":I
    .end local v11    # "mk":[B
    .end local v12    # "mkBlob":[B
    .end local v13    # "mkChecksum":[B
    .end local v14    # "mkCipher":[B
    .end local v16    # "offset":I
    .end local v19    # "userKey":Ljavax/crypto/SecretKey;
    :catch_d1
    move-exception v8

    .line 6339
    .local v8, "e":Ljava/security/InvalidAlgorithmParameterException;
    if-eqz p8, :cond_c6

    const-string v20, "BackupManagerService"

    const-string v21, "Needed parameter spec unavailable!"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c6

    .line 6340
    .end local v8    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_e0
    move-exception v8

    .line 6345
    .local v8, "e":Ljavax/crypto/BadPaddingException;
    if-eqz p8, :cond_c6

    const-string v20, "BackupManagerService"

    const-string v21, "Incorrect password"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 6346
    .end local v8    # "e":Ljavax/crypto/BadPaddingException;
    :catch_eb
    move-exception v8

    .line 6347
    .local v8, "e":Ljavax/crypto/IllegalBlockSizeException;
    if-eqz p8, :cond_c6

    const-string v20, "BackupManagerService"

    const-string v21, "Invalid block size in master key"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 6348
    .end local v8    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_f6
    move-exception v8

    .line 6349
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz p8, :cond_c6

    const-string v20, "BackupManagerService"

    const-string v21, "Needed decryption algorithm unavailable!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 6350
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_101
    move-exception v8

    .line 6351
    .local v8, "e":Ljavax/crypto/NoSuchPaddingException;
    if-eqz p8, :cond_c6

    const-string v20, "BackupManagerService"

    const-string v21, "Needed padding mechanism unavailable!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 6352
    .end local v8    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_10c
    move-exception v8

    .line 6353
    .local v8, "e":Ljava/security/InvalidKeyException;
    if-eqz p8, :cond_c6

    const-string v20, "BackupManagerService"

    const-string v21, "Illegal password; aborting"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6
.end method

.method decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 18
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    .prologue
    .line 6361
    const/4 v12, 0x0

    .line 6363
    .local v12, "result":Ljava/io/InputStream;
    :try_start_1
    const-string v1, "AES-256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 6365
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 6366
    .local v13, "userSaltHex":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v1, v13}, Lcom/android/server/backup/BackupManagerService;->access$2800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v3

    .line 6368
    .local v3, "userSalt":[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 6369
    .local v10, "ckSaltHex":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B
    invoke-static {v1, v10}, Lcom/android/server/backup/BackupManagerService;->access$2800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B

    move-result-object v4

    .line 6371
    .local v4, "ckSalt":[B
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 6372
    .local v5, "rounds":I
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 6374
    .local v6, "userIvHex":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 6377
    .local v7, "masterKeyBlobHex":Ljava/lang/String;
    const-string v2, "PBKDF2WithHmacSHA1"

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 6379
    if-nez v12, :cond_4f

    if-eqz p2, :cond_4f

    .line 6380
    const-string v2, "PBKDF2WithHmacSHA1And8bit"

    const/4 v9, 0x1

    move-object v1, p0

    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, attemptMasterKeyDecryption(Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v12

    .line 6390
    .end local v3    # "userSalt":[B
    .end local v4    # "ckSalt":[B
    .end local v5    # "rounds":I
    .end local v6    # "userIvHex":Ljava/lang/String;
    .end local v7    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v10    # "ckSaltHex":Ljava/lang/String;
    .end local v13    # "userSaltHex":Ljava/lang/String;
    :cond_4f
    :goto_4f
    return-object v12

    .line 6383
    :cond_50
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported encryption method: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_68} :catch_72

    goto :goto_4f

    .line 6384
    :catch_69
    move-exception v11

    .line 6385
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v1, "BackupManagerService"

    const-string v2, "Can\'t parse restore data header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 6386
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_72
    move-exception v11

    .line 6387
    .local v11, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Can\'t read input header"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method dumpFileMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;)V
    .registers 16
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;

    .prologue
    const/16 v6, 0x78

    const/16 v5, 0x77

    const/16 v4, 0x72

    const-wide/16 v12, 0x0

    const/16 v3, 0x2d

    .line 7142
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7145
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_da

    const/16 v2, 0x64

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7146
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_dd

    move v2, v4

    :goto_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7147
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x80

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_e0

    move v2, v5

    :goto_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7148
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_e3

    move v2, v6

    :goto_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7149
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_e6

    move v2, v4

    :goto_4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7150
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_e9

    move v2, v5

    :goto_59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7151
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_ec

    move v2, v6

    :goto_66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7152
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_ef

    :goto_72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7153
    iget-wide v8, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-eqz v2, :cond_f1

    :goto_7e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7154
    iget-wide v4, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    const-wide/16 v8, 0x1

    and-long/2addr v4, v8

    cmp-long v2, v4, v12

    if-eqz v2, :cond_f3

    :goto_8a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7155
    const-string v2, " %9d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7157
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 7158
    .local v1, "stamp":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7160
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7161
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7162
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7163
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7164
    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7166
    const-string v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7168
    return-void

    .end local v1    # "stamp":Ljava/util/Date;
    :cond_da
    move v2, v3

    .line 7145
    goto/16 :goto_18

    :cond_dd
    move v2, v3

    .line 7146
    goto/16 :goto_25

    :cond_e0
    move v2, v3

    .line 7147
    goto/16 :goto_32

    :cond_e3
    move v2, v3

    .line 7148
    goto/16 :goto_3f

    :cond_e6
    move v2, v3

    .line 7149
    goto/16 :goto_4c

    :cond_e9
    move v2, v3

    .line 7150
    goto/16 :goto_59

    :cond_ec
    move v2, v3

    .line 7151
    goto/16 :goto_66

    :cond_ef
    move v4, v3

    .line 7152
    goto :goto_72

    :cond_f1
    move v5, v3

    .line 7153
    goto :goto_7e

    :cond_f3
    move v6, v3

    .line 7154
    goto :goto_8a
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .registers 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7123
    array-length v1, p1

    .line 7124
    .local v1, "end":I
    if-lt p2, v1, :cond_b

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7127
    :cond_b
    move v2, p2

    .local v2, "pos":I
    :goto_c
    if-ge v2, v1, :cond_14

    .line 7128
    aget-byte v0, p1, v2

    .line 7131
    .local v0, "c":B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_21

    .line 7135
    .end local v0    # "c":B
    :cond_14
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v2, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, p3, v3

    .line 7136
    add-int/lit8 v2, v2, 0x1

    .line 7137
    return v2

    .line 7127
    .restart local v0    # "c":B
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method extractRadix([BIII)J
    .registers 15
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7373
    const-wide/16 v4, 0x0

    .line 7374
    .local v4, "value":J
    add-int v1, p2, p3

    .line 7375
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 7376
    aget-byte v0, p1, v2

    .line 7378
    .local v0, "b":B
    if-eqz v0, :cond_f

    const/16 v3, 0x20

    if-ne v0, v3, :cond_10

    .line 7384
    .end local v0    # "b":B
    :cond_f
    return-wide v4

    .line 7379
    .restart local v0    # "b":B
    :cond_10
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1a

    add-int/lit8 v3, p4, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3e

    .line 7380
    :cond_1a
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7382
    :cond_3e
    int-to-long v6, p4

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 7375
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method extractString([BII)Ljava/lang/String;
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7388
    add-int v0, p2, p3

    .line 7389
    .local v0, "end":I
    move v1, p2

    .line 7391
    .local v1, "eos":I
    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p1, v1

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7392
    :cond_c
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .registers 26
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 6807
    const/4 v9, 0x1

    .line 6809
    .local v9, "okay":Z
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installing from backup: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6813
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6815
    .local v4, "apkFile":Ljava/io/File;
    :try_start_3a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6816
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v18, 0x8000

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 6817
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 6818
    .local v14, "size":J
    :goto_4a
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_98

    .line 6819
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-gez v18, :cond_95

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 6820
    .local v16, "toRead":J
    :goto_64
    const/16 v18, 0x0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 6821
    .local v7, "didRead":I
    if-ltz v7, :cond_88

    move-object/from16 v0, p0

    iget-wide v0, v0, mBytes:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mBytes:J

    .line 6822
    :cond_88
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 6823
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 6824
    goto :goto_4a

    .end local v7    # "didRead":I
    .end local v16    # "toRead":J
    :cond_95
    move-wide/from16 v16, v14

    .line 6819
    goto :goto_64

    .line 6825
    :cond_98
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 6828
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6831
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 6832
    .local v10, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->reset()V

    .line 6833
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    const/16 v20, 0x22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    .line 6836
    move-object/from16 v0, p0

    iget-object v0, v0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->waitForCompletion()V

    .line 6838
    move-object/from16 v0, p0

    iget-object v0, v0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->getResult()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_108

    .line 6842
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_fd} :catch_18e
    .catchall {:try_start_3a .. :try_end_fd} :catchall_29f

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_104

    .line 6843
    const/4 v9, 0x0

    .line 6903
    :cond_104
    :goto_104
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 6906
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_107
    return v9

    .line 6847
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_108
    const/4 v13, 0x0

    .line 6848
    .local v13, "uninstall":Z
    :try_start_109
    move-object/from16 v0, p0

    iget-object v0, v0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_19c

    .line 6849
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream claimed to include apk for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but apk was really "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6853
    const/4 v9, 0x0

    .line 6854
    const/4 v13, 0x1

    .line 6892
    :cond_157
    :goto_157
    if-eqz v13, :cond_104

    .line 6893
    move-object/from16 v0, p0

    iget-object v0, v0, mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->reset()V

    .line 6894
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, mInstallObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 6896
    move-object/from16 v0, p0

    iget-object v0, v0, mDeleteObserver:Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_18c} :catch_18e
    .catchall {:try_start_109 .. :try_end_18c} :catchall_29f

    goto/16 :goto_104

    .line 6899
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catch_18e
    move-exception v8

    .line 6900
    .local v8, "e":Ljava/io/IOException;
    :try_start_18f
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to transcribe restored apk for install"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_18f .. :try_end_196} :catchall_29f

    .line 6901
    const/4 v9, 0x0

    .line 6903
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_107

    .line 6857
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v10    # "packageUri":Landroid/net/Uri;
    .restart local v13    # "uninstall":Z
    .restart local v14    # "size":J
    :cond_19c
    :try_start_19c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 6859
    .local v11, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const v19, 0x8000

    and-int v18, v18, v19

    if-nez v18, :cond_1f2

    move-object/from16 v0, p0

    iget-boolean v0, v0, mPrivilegeApp:Z

    move/from16 v18, v0

    if-nez v18, :cond_1f2

    .line 6861
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restore stream contains apk of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " but it disallows backup/restore"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6863
    const/4 v9, 0x0

    goto/16 :goto_157

    .line 6866
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 6867
    .local v12, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v12, v11}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-eqz v18, :cond_24f

    .line 6870
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    const/16 v19, 0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_157

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_157

    .line 6872
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " has restricted uid and no agent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6874
    const/4 v9, 0x0

    goto/16 :goto_157

    .line 6877
    :cond_24f
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Installed app "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " signatures do not match restore manifest"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_273
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19c .. :try_end_273} :catch_277
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_273} :catch_18e
    .catchall {:try_start_19c .. :try_end_273} :catchall_29f

    .line 6879
    const/4 v9, 0x0

    .line 6880
    const/4 v13, 0x1

    goto/16 :goto_157

    .line 6883
    .end local v11    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "sigs":[Landroid/content/pm/Signature;
    :catch_277
    move-exception v8

    .line 6884
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_278
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Install of package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " succeeded but now not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29c
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_29c} :catch_18e
    .catchall {:try_start_278 .. :try_end_29c} :catchall_29f

    .line 6886
    const/4 v9, 0x0

    goto/16 :goto_157

    .line 6903
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "packageUri":Landroid/net/Uri;
    .end local v13    # "uninstall":Z
    .end local v14    # "size":J
    :catchall_29f
    move-exception v18

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v18
.end method

.method readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .registers 25
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6989
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x10000

    cmp-long v17, v18, v20

    if-lez v17, :cond_30

    .line 6990
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 6993
    :cond_30
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 6994
    .local v4, "buffer":[B
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v4, v2, v3}, readExactly(Ljava/io/InputStream;[BII)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-nez v17, :cond_120

    .line 6995
    move-object/from16 v0, p0

    iget-wide v0, v0, mBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mBytes:J

    .line 6998
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 6999
    .local v13, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 7000
    .local v15, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 7003
    .local v11, "offset":I
    :try_start_84
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7004
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 7005
    .local v16, "version":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_356

    .line 7006
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7007
    const/16 v17, 0x0

    aget-object v9, v15, v17

    .line 7009
    .local v9, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32a

    .line 7010
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7011
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 7012
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7015
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7016
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7017
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_128

    const/16 v17, 0x0

    aget-object v17, v15, v17

    :goto_e1
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 7018
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7019
    const/16 v17, 0x0

    aget-object v17, v15, v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 7020
    .local v7, "hasApk":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7021
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 7022
    .local v10, "numSigs":I
    if-lez v10, :cond_30a

    .line 7023
    new-array v14, v10, [Landroid/content/pm/Signature;

    .line 7024
    .local v14, "sigs":[Landroid/content/pm/Signature;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_10a
    if-ge v8, v10, :cond_12b

    .line 7025
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11, v15}, extractLine([BI[Ljava/lang/String;)I

    move-result v11

    .line 7026
    new-instance v17, Landroid/content/pm/Signature;

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-direct/range {v17 .. v18}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v17, v14, v8
    :try_end_11d
    .catch Ljava/lang/NumberFormatException; {:try_start_84 .. :try_end_11d} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_11d} :catch_2fe

    .line 7024
    add-int/lit8 v8, v8, 0x1

    goto :goto_10a

    .line 6996
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v11    # "offset":I
    .end local v13    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v15    # "str":[Ljava/lang/String;
    .end local v16    # "version":I
    :cond_120
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Unexpected EOF in manifest"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 7017
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v11    # "offset":I
    .restart local v13    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .restart local v15    # "str":[Ljava/lang/String;
    .restart local v16    # "version":I
    :cond_128
    const/16 v17, 0x0

    goto :goto_e1

    .line 7028
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v10    # "numSigs":I
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_12b
    :try_start_12b
    move-object/from16 v0, p0

    iget-object v0, v0, mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13e
    .catch Ljava/lang/NumberFormatException; {:try_start_12b .. :try_end_13e} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12b .. :try_end_13e} :catch_2fe

    .line 7033
    :try_start_13e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v17

    if-eqz v17, :cond_1f3

    .line 7035
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mEdmUserId:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$2000(Lcom/android/server/backup/BackupManagerService;)I

    move-result v20

    invoke-interface/range {v17 .. v20}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 7042
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_16c
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7043
    .local v6, "flags":I
    const v17, 0x8000

    and-int v17, v17, v6

    if-nez v17, :cond_18f

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v17

    if-nez v17, :cond_18f

    move-object/from16 v0, p0

    iget-boolean v0, v0, mPrivilegeApp:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2d8

    .line 7048
    :cond_18f
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    const/16 v18, 0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1ad

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_287

    .line 7057
    :cond_1ad
    invoke-static {v14, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v17

    if-eqz v17, :cond_23e

    .line 7058
    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-lt v0, v1, :cond_20b

    .line 7059
    const-string v17, "BackupManagerService"

    const-string v18, "Sig + version match; taking data"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7060
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_1c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13e .. :try_end_1c6} :catch_25e
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_1c6} :catch_2ad
    .catch Ljava/lang/NumberFormatException; {:try_start_13e .. :try_end_1c6} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13e .. :try_end_1c6} :catch_2fe

    .line 7095
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1c6
    :try_start_1c6
    sget-object v17, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_1f2

    if-nez v7, :cond_1f2

    .line 7096
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot restore package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " without the matching .apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f2
    .catch Ljava/lang/NumberFormatException; {:try_start_1c6 .. :try_end_1f2} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c6 .. :try_end_1f2} :catch_2fe

    .line 7117
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "version":I
    :cond_1f2
    :goto_1f2
    return-object v13

    .line 7038
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    .restart local v16    # "version":I
    :cond_1f3
    :try_start_1f3
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x40

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    goto/16 :goto_16c

    .line 7065
    .restart local v6    # "flags":I
    :cond_20b
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Data version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is newer than installed version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - requiring apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7068
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_1c6

    .line 7071
    :cond_23e
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f3 .. :try_end_25c} :catch_25e
    .catch Landroid/os/RemoteException; {:try_start_1f3 .. :try_end_25c} :catch_2ad
    .catch Ljava/lang/NumberFormatException; {:try_start_1f3 .. :try_end_25c} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f3 .. :try_end_25c} :catch_2fe

    goto/16 :goto_1c6

    .line 7082
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_25e
    move-exception v5

    .line 7086
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_25f
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not installed; requiring apk in dataset"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7088
    sget-object v13, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_285
    .catch Ljava/lang/NumberFormatException; {:try_start_25f .. :try_end_285} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25f .. :try_end_285} :catch_2fe

    .line 7092
    goto/16 :goto_1c6

    .line 7075
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "flags":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_287
    :try_start_287
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is system level with no agent"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_287 .. :try_end_2ab} :catch_25e
    .catch Landroid/os/RemoteException; {:try_start_287 .. :try_end_2ab} :catch_2ad
    .catch Ljava/lang/NumberFormatException; {:try_start_287 .. :try_end_2ab} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_287 .. :try_end_2ab} :catch_2fe

    goto/16 :goto_1c6

    .line 7090
    .end local v6    # "flags":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_2ad
    move-exception v5

    .line 7091
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2ae
    const-string v17, "BackupManagerService"

    const-string v18, "Failed to retrieve package info mdm request"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b5
    .catch Ljava/lang/NumberFormatException; {:try_start_2ae .. :try_end_2b5} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ae .. :try_end_2b5} :catch_2fe

    goto/16 :goto_1c6

    .line 7111
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "version":I
    :catch_2b7
    move-exception v5

    .line 7112
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Corrupt restore manifest for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f2

    .line 7079
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "flags":I
    .restart local v7    # "hasApk":Z
    .restart local v8    # "i":I
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    .restart local v16    # "version":I
    :cond_2d8
    :try_start_2d8
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restore manifest from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but allowBackup=false"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d8 .. :try_end_2fc} :catch_25e
    .catch Landroid/os/RemoteException; {:try_start_2d8 .. :try_end_2fc} :catch_2ad
    .catch Ljava/lang/NumberFormatException; {:try_start_2d8 .. :try_end_2fc} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d8 .. :try_end_2fc} :catch_2fe

    goto/16 :goto_1c6

    .line 7113
    .end local v6    # "flags":I
    .end local v7    # "hasApk":Z
    .end local v8    # "i":I
    .end local v9    # "manifestPackage":Ljava/lang/String;
    .end local v10    # "numSigs":I
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    .end local v16    # "version":I
    :catch_2fe
    move-exception v5

    .line 7114
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v17, "BackupManagerService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f2

    .line 7100
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "hasApk":Z
    .restart local v9    # "manifestPackage":Ljava/lang/String;
    .restart local v10    # "numSigs":I
    .restart local v16    # "version":I
    :cond_30a
    :try_start_30a
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Missing signature on backed-up package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f2

    .line 7104
    .end local v7    # "hasApk":Z
    .end local v10    # "numSigs":I
    :cond_32a
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Expected package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but restore manifest claims "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f2

    .line 7108
    .end local v9    # "manifestPackage":Ljava/lang/String;
    :cond_356
    const-string v17, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown restore manifest version "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_382
    .catch Ljava/lang/NumberFormatException; {:try_start_30a .. :try_end_382} :catch_2b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30a .. :try_end_382} :catch_2fe

    goto/16 :goto_1f2
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .registers 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7292
    if-gtz p4, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7294
    :cond_b
    const/4 v1, 0x0

    .line 7295
    .local v1, "soFar":I
    :goto_c
    if-ge v1, p4, :cond_18

    .line 7296
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 7297
    .local v0, "nRead":I
    if-gtz v0, :cond_19

    .line 7303
    .end local v0    # "nRead":I
    :cond_18
    return v1

    .line 7301
    .restart local v0    # "nRead":I
    :cond_19
    add-int/2addr v1, v0

    .line 7302
    goto :goto_c
.end method

.method readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6288
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6289
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c":I
    if-ltz v1, :cond_11

    .line 6290
    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    .line 6293
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6291
    :cond_16
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V
    .registers 19
    .param p1, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6925
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x10000

    cmp-long v11, v12, v14

    if-lez v11, :cond_28

    .line 6926
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6929
    :cond_28
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v11, v12

    new-array v3, v11, [B

    .line 6930
    .local v3, "buffer":[B
    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v11, v12}, readExactly(Ljava/io/InputStream;[BII)I

    move-result v11

    int-to-long v12, v11

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_c3

    .line 6931
    move-object/from16 v0, p0

    iget-wide v12, v0, mBytes:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, mBytes:J

    .line 6934
    const/4 v11, 0x1

    new-array v8, v11, [Ljava/lang/String;

    .line 6935
    .local v8, "str":[Ljava/lang/String;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v8}, extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 6936
    .local v5, "offset":I
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 6937
    .local v10, "version":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_132

    .line 6938
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v8}, extractLine([BI[Ljava/lang/String;)I

    move-result v5

    .line 6939
    const/4 v11, 0x0

    aget-object v6, v8, v11

    .line 6940
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10b

    .line 6943
    new-instance v2, Ljava/io/ByteArrayInputStream;

    array-length v11, v3

    sub-int/2addr v11, v5

    invoke-direct {v2, v3, v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 6945
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6946
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_86
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    if-lez v11, :cond_131

    .line 6947
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 6948
    .local v9, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 6949
    .local v7, "size":I
    const/high16 v11, 0x10000

    if-le v7, v11, :cond_cb

    .line 6950
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Datum "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " too big; corrupt? size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6932
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "offset":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "str":[Ljava/lang/String;
    .end local v9    # "token":I
    .end local v10    # "version":I
    :cond_c3
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unexpected EOF in widget data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 6954
    .restart local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "offset":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "str":[Ljava/lang/String;
    .restart local v9    # "token":I
    .restart local v10    # "version":I
    :cond_cb
    packed-switch v9, :pswitch_data_14c

    .line 6967
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring metadata blob "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6971
    invoke-virtual {v4, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_86

    .line 6960
    :pswitch_fc
    new-array v11, v7, [B

    move-object/from16 v0, p0

    iput-object v11, v0, mWidgetData:[B

    .line 6961
    move-object/from16 v0, p0

    iget-object v11, v0, mWidgetData:[B

    invoke-virtual {v4, v11}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_86

    .line 6977
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v7    # "size":I
    .end local v9    # "token":I
    :cond_10b
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Metadata mismatch: package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but widget data for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6983
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_131
    :goto_131
    return-void

    .line 6981
    :cond_132
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported metadata version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    .line 6954
    nop

    :pswitch_data_14c
    .packed-switch 0x1ffed01
        :pswitch_fc
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z
    .registers 19
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7318
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/32 v14, 0x8000

    cmp-long v12, v12, v14

    if-lez v12, :cond_4a

    .line 7319
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Suspiciously large pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - aborting"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7321
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sanity failure: pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 7325
    :cond_4a
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const/16 v14, 0x9

    shr-long/2addr v12, v14

    long-to-int v8, v12

    .line 7326
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    new-array v3, v12, [B

    .line 7327
    .local v3, "data":[B
    const/4 v12, 0x0

    array-length v13, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v12, v13}, readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    array-length v13, v3

    if-ge v12, v13, :cond_6e

    .line 7328
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Unable to read full pax header"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 7330
    :cond_6e
    move-object/from16 v0, p0

    iget-wide v12, v0, mBytes:J

    array-length v14, v3

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, mBytes:J

    .line 7332
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    long-to-int v2, v12

    .line 7333
    .local v2, "contentSize":I
    const/4 v9, 0x0

    .line 7336
    .local v9, "offset":I
    :cond_7f
    add-int/lit8 v4, v9, 0x1

    .line 7337
    .local v4, "eol":I
    :goto_81
    if-ge v4, v2, :cond_8c

    aget-byte v12, v3, v4

    const/16 v13, 0x20

    if-eq v12, v13, :cond_8c

    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 7338
    :cond_8c
    if-lt v4, v2, :cond_96

    .line 7340
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 7343
    :cond_96
    sub-int v12, v4, v9

    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v12, v13}, extractRadix([BIII)J

    move-result-wide v12

    long-to-int v7, v12

    .line 7344
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    .line 7345
    .local v5, "key":I
    add-int v12, v9, v7

    add-int/lit8 v4, v12, -0x1

    .line 7347
    add-int/lit8 v11, v5, 0x1

    .local v11, "value":I
    :goto_a9
    aget-byte v12, v3, v11

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_b4

    if-gt v11, v4, :cond_b4

    add-int/lit8 v11, v11, 0x1

    goto :goto_a9

    .line 7348
    :cond_b4
    if-le v11, v4, :cond_be

    .line 7349
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Invalid pax declaration"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 7353
    :cond_be
    new-instance v6, Ljava/lang/String;

    sub-int v12, v11, v5

    const-string v13, "UTF-8"

    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 7355
    .local v6, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    const-string v14, "UTF-8"

    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 7357
    .local v10, "valStr":Ljava/lang/String;
    const-string/jumbo v12, "path"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e6

    .line 7358
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7365
    :goto_e1
    add-int/2addr v9, v7

    .line 7366
    if-lt v9, v2, :cond_7f

    .line 7368
    const/4 v12, 0x1

    return v12

    .line 7359
    :cond_e6
    const-string/jumbo v12, "size"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f8

    .line 7360
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_e1

    .line 7362
    :cond_f8
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .registers 9
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 7307
    invoke-virtual {p0, p1, p2, v1, v2}, readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 7308
    .local v0, "got":I
    if-nez v0, :cond_a

    .line 7311
    :goto_9
    return v1

    .line 7309
    :cond_a
    if-ge v0, v2, :cond_14

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7310
    :cond_14
    iget-wide v2, p0, mBytes:J

    const-wide/16 v4, 0x200

    add-long/2addr v2, v4

    iput-wide v2, p0, mBytes:J

    .line 7311
    const/4 v1, 0x1

    goto :goto_9
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .registers 15
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7171
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 7172
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 7174
    .local v3, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    invoke-virtual {p0, p1, v0}, readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 7175
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_13f

    .line 7178
    :try_start_b
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/BackupManagerService$FileMetadata;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_21a

    .line 7179
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v4, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_16
    invoke-virtual {p0, v0, v8, v9, v10}, extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    .line 7180
    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    .line 7181
    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {p0, v0, v8, v9, v10}, extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    .line 7183
    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-virtual {p0, v0, v8, v9}, extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7184
    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-virtual {p0, v0, v8, v9}, extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 7185
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7f

    .line 7186
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7187
    :cond_6a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7191
    :cond_7f
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 7192
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_c1

    .line 7194
    invoke-virtual {p0, p1, v4}, readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/BackupManagerService$FileMetadata;)Z

    move-result v2

    .line 7195
    if-eqz v2, :cond_91

    .line 7198
    invoke-virtual {p0, p1, v0}, readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 7200
    :cond_91
    if-nez v2, :cond_bd

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9b} :catch_9b

    .line 7259
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_9b
    move-exception v1

    move-object v3, v4

    .line 7261
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :goto_9d
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7262
    invoke-direct {p0, v0}, HEXLOG([B)V

    .line 7264
    throw v1

    .line 7202
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_bd
    const/16 v8, 0x9c

    :try_start_bf
    aget-byte v7, v0, v8

    .line 7205
    :cond_c1
    sparse-switch v7, :sswitch_data_21e

    .line 7221
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7222
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7206
    :sswitch_f5
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 7229
    :cond_f8
    :goto_f8
    const-string/jumbo v8, "shared/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "shared/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_174

    .line 7232
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7233
    const-string v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 7234
    const-string/jumbo v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 7235
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13e
    :goto_13e
    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_13f
    move-object v8, v3

    .line 7267
    :goto_140
    return-object v8

    .line 7208
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_141
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    .line 7209
    iget-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_f8

    .line 7210
    const-string v8, "BackupManagerService"

    const-string v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7211
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    goto :goto_f8

    .line 7217
    :sswitch_158
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saw type=0 in tar header block, info="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7218
    const/4 v3, 0x0

    move-object v8, v3

    move-object v3, v4

    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_140

    .line 7236
    .end local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .restart local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :cond_174
    const-string v8, "apps/"

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "apps/"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_13e

    .line 7241
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7244
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 7245
    .local v6, "slash":I
    if-gez v6, :cond_1b9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7246
    :cond_1b9
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 7247
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    .line 7251
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13e

    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13e

    .line 7253
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 7254
    if-gez v6, :cond_205

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 7255
    :cond_205
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    .line 7256
    iget-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_218} :catch_9b

    goto/16 :goto_13e

    .line 7259
    .end local v4    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_21a
    move-exception v1

    goto/16 :goto_9d

    .line 7205
    nop

    :sswitch_data_21e
    .sparse-switch
        0x0 -> :sswitch_158
        0x30 -> :sswitch_f5
        0x35 -> :sswitch_141
    .end sparse-switch
.end method

.method restoreOneFile(Ljava/io/InputStream;[B)Z
    .registers 49
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    .prologue
    .line 6396
    :try_start_0
    invoke-virtual/range {p0 .. p1}, readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$FileMetadata;

    move-result-object v35

    .line 6397
    .local v35, "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    if-eqz v35, :cond_82

    .line 6402
    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->packageName:Ljava/lang/String;

    .line 6403
    .local v6, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 6406
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 6407
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6412
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_4a

    .line 6413
    const-string v5, "BackupManagerService"

    const-string v7, "Saw new package; finalizing old one"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6415
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6416
    move-object/from16 v0, p0

    iget-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6417
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 6418
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, mAgentPackage:Ljava/lang/String;

    .line 6422
    :cond_4a
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_manifest"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 6423
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, readAppManifest(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6424
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6428
    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, skipTarPadding(JLjava/io/InputStream;)V

    .line 6429
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, sendOnRestorePackage(Ljava/lang/String;)V

    .line 6692
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_82
    :goto_82
    if-eqz v35, :cond_513

    const/4 v5, 0x1

    :goto_85
    return v5

    .line 6430
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_86
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "_meta"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 6432
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, readMetadata(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/io/InputStream;)V

    .line 6433
    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, skipTarPadding(JLjava/io/InputStream;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a6} :catch_a7

    goto :goto_82

    .line 6686
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    :catch_a7
    move-exception v31

    .line 6687
    .local v31, "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string/jumbo v7, "io exception on restore socket read"

    move-object/from16 v0, v31

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6689
    const/16 v35, 0x0

    .restart local v35    # "info":Lcom/android/server/backup/BackupManagerService$FileMetadata;
    goto :goto_82

    .line 6437
    .end local v31    # "e":Ljava/io/IOException;
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_b5
    const/16 v37, 0x1

    .line 6438
    .local v37, "okay":Z
    :try_start_b7
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 6439
    .local v42, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    sget-object v5, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$RestorePolicy:[I

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_516

    .line 6484
    const-string v5, "BackupManagerService"

    const-string v7, "Invalid policy from manifest"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6485
    const/16 v37, 0x0

    .line 6486
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6491
    :cond_de
    :goto_de
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, ".."

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f6

    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    const-string v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 6495
    :cond_f6
    const/16 v37, 0x0

    .line 6500
    :cond_f8
    if-eqz v37, :cond_107

    move-object/from16 v0, p0

    iget-object v5, v0, mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_107

    .line 6501
    const-string v5, "BackupManagerService"

    const-string v7, "Reusing existing agent instance"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6503
    :cond_107
    if-eqz v37, :cond_1dc

    move-object/from16 v0, p0

    iget-object v5, v0, mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_1dc

    .line 6504
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to launch agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_127} :catch_a7

    .line 6507
    :try_start_127
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v5

    if-eqz v5, :cond_3d1

    .line 6509
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mEdmUserId:I
    invoke-static {v8}, Lcom/android/server/backup/BackupManagerService;->access$2000(Lcom/android/server/backup/BackupManagerService;)I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 6517
    :goto_148
    move-object/from16 v0, p0

    iget-object v5, v0, mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_410

    .line 6521
    move-object/from16 v0, p0

    iget-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_3e7

    .line 6522
    const-string v5, "BackupManagerService"

    const-string v7, "Clearing app data preparatory to full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6523
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 6528
    :goto_168
    move-object/from16 v0, p0

    iget-object v5, v0, mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6534
    :goto_16f
    invoke-virtual/range {p0 .. p0}, setUpPipes()V

    .line 6535
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v5

    if-eqz v5, :cond_423

    move-object/from16 v0, p0

    iget-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_423

    .line 6538
    const-string v5, "BackupManagerService"

    const-string v7, "changing backup agent name to null for edm restore request"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6539
    new-instance v30, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 6540
    .local v30, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v30

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 6541
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v5, v0, v7}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, mAgent:Landroid/app/IBackupAgent;

    .line 6547
    .end local v30    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1ac
    move-object/from16 v0, p0

    iput-object v6, v0, mAgentPackage:Ljava/lang/String;
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_1b0} :catch_3e4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_127 .. :try_end_1b0} :catch_40d
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_1b0} :catch_419

    .line 6558
    :goto_1b0
    :try_start_1b0
    move-object/from16 v0, p0

    iget-object v5, v0, mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_1dc

    .line 6559
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6560
    const/16 v37, 0x0

    .line 6561
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6562
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6568
    :cond_1dc
    if-eqz v37, :cond_210

    move-object/from16 v0, p0

    iget-object v5, v0, mAgentPackage:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_210

    .line 6569
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but agent is for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, mAgentPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6571
    const/16 v37, 0x0

    .line 6578
    :cond_210
    if-eqz v37, :cond_316

    .line 6579
    const/4 v4, 0x1

    .line 6580
    .local v4, "agentSuccess":Z
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v44, v0

    .line 6581
    .local v44, "toCopy":J
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->generateToken()I
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_220} :catch_a7

    move-result v16

    .line 6583
    .local v16, "token":I
    :try_start_221
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v8, 0x493e0

    const/4 v7, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 6584
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v7, "obb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_436

    .line 6585
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restoring OBB file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6587
    move-object/from16 v0, p0

    iget-object v5, v0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, v35

    iget v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move-object/from16 v0, v35

    iget-object v11, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-object/from16 v0, v35

    iget-wide v14, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_28f
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_28f} :catch_48a
    .catch Landroid/os/RemoteException; {:try_start_221 .. :try_end_28f} :catch_4d7

    .line 6622
    :goto_28f
    if-eqz v37, :cond_2e8

    .line 6623
    const/16 v41, 0x1

    .line 6624
    .local v41, "pipeOkay":Z
    :try_start_293
    new-instance v40, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6626
    .local v40, "pipe":Ljava/io/FileOutputStream;
    :cond_2a5
    :goto_2a5
    const-wide/16 v8, 0x0

    cmp-long v5, v44, v8

    if-lez v5, :cond_2d3

    .line 6627
    move-object/from16 v0, p2

    array-length v5, v0

    int-to-long v8, v5

    cmp-long v5, v44, v8

    if-lez v5, :cond_4e4

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v43, v0

    .line 6629
    .local v43, "toRead":I
    :goto_2b8
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v43

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v38

    .line 6630
    .local v38, "nRead":I
    if-ltz v38, :cond_2d1

    move-object/from16 v0, p0

    iget-wide v8, v0, mBytes:J

    move/from16 v0, v38

    int-to-long v12, v0

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iput-wide v8, v0, mBytes:J

    .line 6631
    :cond_2d1
    if-gtz v38, :cond_4eb

    .line 6648
    .end local v38    # "nRead":I
    .end local v43    # "toRead":I
    :cond_2d3
    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, skipTarPadding(JLjava/io/InputStream;)V

    .line 6652
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v4

    .line 6657
    .end local v40    # "pipe":Ljava/io/FileOutputStream;
    .end local v41    # "pipeOkay":Z
    :cond_2e8
    if-nez v4, :cond_316

    .line 6658
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 6659
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6660
    move-object/from16 v0, p0

    iget-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6661
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, mAgent:Landroid/app/IBackupAgent;

    .line 6662
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6664
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreFail:Z
    invoke-static {v5, v7}, Lcom/android/server/backup/BackupManagerService;->access$2702(Lcom/android/server/backup/BackupManagerService;Z)Z

    .line 6672
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v44    # "toCopy":J
    :cond_316
    if-nez v37, :cond_82

    .line 6673
    const-string v5, "BackupManagerService"

    const-string v7, "[discarding file content]"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6674
    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v8, v12

    const-wide/16 v12, -0x200

    and-long v32, v8, v12

    .line 6675
    .local v32, "bytesToConsume":J
    :goto_32a
    const-wide/16 v8, 0x0

    cmp-long v5, v32, v8

    if-lez v5, :cond_82

    .line 6676
    move-object/from16 v0, p2

    array-length v5, v0

    int-to-long v8, v5

    cmp-long v5, v32, v8

    if-lez v5, :cond_50c

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v43, v0

    .line 6678
    .restart local v43    # "toRead":I
    :goto_33d
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v43

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v38, v0

    .line 6679
    .local v38, "nRead":J
    const-wide/16 v8, 0x0

    cmp-long v5, v38, v8

    if-ltz v5, :cond_35b

    move-object/from16 v0, p0

    iget-wide v8, v0, mBytes:J

    add-long v8, v8, v38

    move-object/from16 v0, p0

    iput-wide v8, v0, mBytes:J

    .line 6680
    :cond_35b
    const-wide/16 v8, 0x0

    cmp-long v5, v38, v8

    if-lez v5, :cond_82

    .line 6681
    sub-long v32, v32, v38

    .line 6682
    goto :goto_32a

    .line 6441
    .end local v32    # "bytesToConsume":J
    .end local v38    # "nRead":J
    .end local v43    # "toRead":I
    :pswitch_364
    const/16 v37, 0x0

    .line 6442
    goto/16 :goto_de

    .line 6447
    :pswitch_368
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3ad

    .line 6448
    const-string v5, "BackupManagerService"

    const-string v7, "APK file; installing"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 6451
    .local v36, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, installApk(Lcom/android/server/backup/BackupManagerService$FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v37

    .line 6453
    move-object/from16 v0, p0

    iget-object v7, v0, mPackagePolicies:Ljava/util/HashMap;

    if-eqz v37, :cond_3aa

    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    :goto_399
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6459
    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v9, v1}, skipTarPadding(JLjava/io/InputStream;)V

    .line 6460
    const/4 v5, 0x1

    goto/16 :goto_85

    .line 6453
    :cond_3aa
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_399

    .line 6464
    .end local v36    # "installerName":Ljava/lang/String;
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v5, v0, mPackagePolicies:Ljava/util/HashMap;

    sget-object v7, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6465
    const/16 v37, 0x0

    .line 6467
    goto/16 :goto_de

    .line 6470
    :pswitch_3ba
    move-object/from16 v0, v35

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 6471
    const-string v5, "BackupManagerService"

    const-string v7, "apk present but ACCEPT"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3cd
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_3cd} :catch_a7

    .line 6476
    const/16 v37, 0x0

    goto/16 :goto_de

    .line 6512
    :cond_3d1
    :try_start_3d1
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_148

    .line 6548
    :catch_3e4
    move-exception v5

    goto/16 :goto_1b0

    .line 6525
    :cond_3e7
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "backup agent ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") => no clear"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_168

    .line 6550
    :catch_40d
    move-exception v5

    goto/16 :goto_1b0

    .line 6530
    :cond_410
    const-string v5, "BackupManagerService"

    const-string v7, "We\'ve initialized this app already; no clear required"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_417
    .catch Ljava/io/IOException; {:try_start_3d1 .. :try_end_417} :catch_3e4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d1 .. :try_end_417} :catch_40d
    .catch Landroid/os/RemoteException; {:try_start_3d1 .. :try_end_417} :catch_419

    goto/16 :goto_16f

    .line 6553
    :catch_419
    move-exception v34

    .line 6554
    .local v34, "ex":Landroid/os/RemoteException;
    :try_start_41a
    const-string v5, "BackupManagerService"

    const-string v7, "Fail to get application\'s info to perform restore - mdm request"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_421
    .catch Ljava/io/IOException; {:try_start_41a .. :try_end_421} :catch_a7

    goto/16 :goto_1b0

    .line 6544
    .end local v34    # "ex":Landroid/os/RemoteException;
    :cond_423
    :try_start_423
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, mAgent:Landroid/app/IBackupAgent;
    :try_end_434
    .catch Ljava/io/IOException; {:try_start_423 .. :try_end_434} :catch_3e4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_423 .. :try_end_434} :catch_40d
    .catch Landroid/os/RemoteException; {:try_start_423 .. :try_end_434} :catch_419

    goto/16 :goto_1ac

    .line 6591
    .restart local v4    # "agentSuccess":Z
    .restart local v16    # "token":I
    .restart local v44    # "toCopy":J
    :cond_436
    :try_start_436
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invoking agent to restore file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v35

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6597
    move-object/from16 v0, p0

    iget-object v5, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "system"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_497

    .line 6598
    const-string v5, "BackupManagerService"

    const-string/jumbo v7, "system process agent - spinning a thread"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6599
    new-instance v11, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;

    move-object/from16 v0, p0

    iget-object v13, v0, mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v5, v0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v15, v5, v7

    move-object/from16 v12, p0

    move-object/from16 v14, v35

    invoke-direct/range {v11 .. v16}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 6601
    .local v11, "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v7, "restore-sys-runner"

    invoke-direct {v5, v11, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_488
    .catch Ljava/io/IOException; {:try_start_436 .. :try_end_488} :catch_48a
    .catch Landroid/os/RemoteException; {:try_start_436 .. :try_end_488} :catch_4d7

    goto/16 :goto_28f

    .line 6608
    .end local v11    # "runner":Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask$RestoreFileRunnable;
    :catch_48a
    move-exception v31

    .line 6610
    .restart local v31    # "e":Ljava/io/IOException;
    :try_start_48b
    const-string v5, "BackupManagerService"

    const-string v7, "Couldn\'t establish restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_492
    .catch Ljava/io/IOException; {:try_start_48b .. :try_end_492} :catch_a7

    .line 6611
    const/4 v4, 0x0

    .line 6612
    const/16 v37, 0x0

    .line 6619
    goto/16 :goto_28f

    .line 6603
    .end local v31    # "e":Ljava/io/IOException;
    :cond_497
    :try_start_497
    move-object/from16 v0, p0

    iget-object v0, v0, mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v5, v0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v18, v5, v7

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    move/from16 v21, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v5, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v29, v0

    move/from16 v28, v16

    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_4d5
    .catch Ljava/io/IOException; {:try_start_497 .. :try_end_4d5} :catch_48a
    .catch Landroid/os/RemoteException; {:try_start_497 .. :try_end_4d5} :catch_4d7

    goto/16 :goto_28f

    .line 6613
    :catch_4d7
    move-exception v31

    .line 6616
    .local v31, "e":Landroid/os/RemoteException;
    :try_start_4d8
    const-string v5, "BackupManagerService"

    const-string v7, "Agent crashed during full restore"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4df
    .catch Ljava/io/IOException; {:try_start_4d8 .. :try_end_4df} :catch_a7

    .line 6617
    const/4 v4, 0x0

    .line 6618
    const/16 v37, 0x0

    goto/16 :goto_28f

    .line 6627
    .end local v31    # "e":Landroid/os/RemoteException;
    .restart local v40    # "pipe":Ljava/io/FileOutputStream;
    .restart local v41    # "pipeOkay":Z
    :cond_4e4
    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v43, v0

    goto/16 :goto_2b8

    .line 6632
    .local v38, "nRead":I
    .restart local v43    # "toRead":I
    :cond_4eb
    move/from16 v0, v38

    int-to-long v8, v0

    sub-long v44, v44, v8

    .line 6636
    if-eqz v41, :cond_2a5

    .line 6638
    const/4 v5, 0x0

    :try_start_4f3
    move-object/from16 v0, v40

    move-object/from16 v1, p2

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4fc
    .catch Ljava/io/IOException; {:try_start_4f3 .. :try_end_4fc} :catch_4fe

    goto/16 :goto_2a5

    .line 6639
    :catch_4fe
    move-exception v31

    .line 6640
    .local v31, "e":Ljava/io/IOException;
    :try_start_4ff
    const-string v5, "BackupManagerService"

    const-string v7, "Failed to write to restore pipe"

    move-object/from16 v0, v31

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_508
    .catch Ljava/io/IOException; {:try_start_4ff .. :try_end_508} :catch_a7

    .line 6641
    const/16 v41, 0x0

    goto/16 :goto_2a5

    .line 6676
    .end local v4    # "agentSuccess":Z
    .end local v16    # "token":I
    .end local v31    # "e":Ljava/io/IOException;
    .end local v38    # "nRead":I
    .end local v40    # "pipe":Ljava/io/FileOutputStream;
    .end local v41    # "pipeOkay":Z
    .end local v43    # "toRead":I
    .end local v44    # "toCopy":J
    .restart local v32    # "bytesToConsume":J
    :cond_50c
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v43, v0

    goto/16 :goto_33d

    .line 6692
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v32    # "bytesToConsume":J
    .end local v37    # "okay":Z
    .end local v42    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :cond_513
    const/4 v5, 0x0

    goto/16 :goto_85

    .line 6439
    :pswitch_data_516
    .packed-switch 0x1
        :pswitch_364
        :pswitch_368
        :pswitch_3ba
    .end packed-switch
.end method

.method public run()V
    .registers 26

    .prologue
    .line 6181
    const-string v21, "BackupManagerService"

    const-string v22, "--- Performing full-dataset restore ---"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6182
    move-object/from16 v0, p0

    iget-object v0, v0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 6183
    invoke-virtual/range {p0 .. p0}, sendStartRestore()V

    .line 6186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2d

    .line 6187
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "com.android.sharedstoragebackup"

    sget-object v23, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6190
    :cond_2d
    const/16 v17, 0x0

    .line 6191
    .local v17, "rawInStream":Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 6193
    .local v15, "rawDataIn":Ljava/io/DataInputStream;
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;)Z

    move-result v21

    if-nez v21, :cond_f3

    .line 6195
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPrivilegeApp:Z

    move/from16 v21, v0

    if-nez v21, :cond_f3

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/backup/BackupManagerService;->access$2600(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_f3

    .line 6196
    const-string v21, "BackupManagerService"

    const-string v22, "Backup password mismatch; aborting"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_5d} :catch_47b
    .catchall {:try_start_30 .. :try_end_5d} :catchall_473

    .line 6261
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6265
    if-eqz v15, :cond_72

    :try_start_6f
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 6266
    :cond_72
    if-eqz v17, :cond_77

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 6267
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_80} :catch_e0

    .line 6272
    :goto_80
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6273
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 6274
    monitor-exit v22
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_ed

    .line 6275
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6276
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6277
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 6278
    monitor-exit v22
    :try_end_bd
    .catchall {:try_start_a4 .. :try_end_bd} :catchall_f0

    .line 6279
    move-object/from16 v0, p0

    iget-object v0, v0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6280
    invoke-virtual/range {p0 .. p0}, sendEndRestore()V

    .line 6281
    const-string v21, "BackupManagerService"

    const-string v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6284
    :goto_df
    return-void

    .line 6268
    :catch_e0
    move-exception v8

    .line 6269
    .local v8, "e":Ljava/io/IOException;
    const-string v21, "BackupManagerService"

    const-string v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    .line 6274
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_ed
    move-exception v21

    :try_start_ee
    monitor-exit v22
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v21

    .line 6278
    :catchall_f0
    move-exception v21

    :try_start_f1
    monitor-exit v22
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v21

    .line 6201
    :cond_f3
    const-wide/16 v22, 0x0

    :try_start_f5
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mBytes:J

    .line 6202
    const v21, 0x8000

    move/from16 v0, v21

    new-array v5, v0, [B

    .line 6203
    .local v5, "buffer":[B
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_115} :catch_47b
    .catchall {:try_start_f5 .. :try_end_115} :catchall_473

    .line 6204
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .local v18, "rawInStream":Ljava/io/FileInputStream;
    :try_start_115
    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_11e} :catch_47e
    .catchall {:try_start_115 .. :try_end_11e} :catchall_476

    .line 6207
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .local v16, "rawDataIn":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 6208
    .local v6, "compressed":Z
    move-object/from16 v14, v18

    .line 6211
    .local v14, "preCompressStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 6212
    .local v12, "okay":Z
    :try_start_122
    const-string v21, "ANDROID BACKUP\n"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v9

    .line 6213
    .local v9, "headerLen":I
    new-array v0, v9, [B

    move-object/from16 v20, v0

    .line 6214
    .local v20, "streamHeader":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 6215
    const-string v21, "ANDROID BACKUP\n"

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 6216
    .local v11, "magicBytes":[B
    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v21

    if-eqz v21, :cond_381

    .line 6218
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 6219
    .local v19, "s":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 6220
    .local v4, "archiveVersion":I
    const/16 v21, 0x3

    move/from16 v0, v21

    if-gt v4, v0, :cond_2df

    .line 6223
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_21d

    const/4 v13, 0x1

    .line 6225
    .local v13, "pbkdf2Fallback":Z
    :goto_15c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 6226
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    if-eqz v21, :cond_220

    const/4 v6, 0x1

    .line 6227
    :goto_16b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 6228
    const-string/jumbo v21, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_223

    .line 6230
    const/4 v12, 0x1

    .line 6241
    .end local v4    # "archiveVersion":I
    .end local v13    # "pbkdf2Fallback":Z
    .end local v19    # "s":Ljava/lang/String;
    :cond_181
    :goto_181
    if-nez v12, :cond_39e

    .line 6242
    const-string v21, "BackupManagerService"

    const-string v22, "Invalid restore data; aborting."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6244
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    # setter for: Lcom/android/server/backup/BackupManagerService;->isEdmRestoreFail:Z
    invoke-static/range {v21 .. v22}, Lcom/android/server/backup/BackupManagerService;->access$2702(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_195} :catch_24f
    .catchall {:try_start_122 .. :try_end_195} :catchall_2fd

    .line 6261
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6265
    if-eqz v16, :cond_1aa

    :try_start_1a7
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 6266
    :cond_1aa
    if-eqz v18, :cond_1af

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 6267
    :cond_1af
    move-object/from16 v0, p0

    iget-object v0, v0, mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1b8} :catch_38a

    .line 6272
    :goto_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6273
    :try_start_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 6274
    monitor-exit v22
    :try_end_1d5
    .catchall {:try_start_1c5 .. :try_end_1d5} :catchall_398

    .line 6275
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6276
    :try_start_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6277
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 6278
    monitor-exit v22
    :try_end_1f5
    .catchall {:try_start_1dc .. :try_end_1f5} :catchall_39b

    .line 6279
    move-object/from16 v0, p0

    iget-object v0, v0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6280
    invoke-virtual/range {p0 .. p0}, sendEndRestore()V

    .line 6281
    const-string v21, "BackupManagerService"

    const-string v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_df

    .line 6223
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v4    # "archiveVersion":I
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v19    # "s":Ljava/lang/String;
    :cond_21d
    const/4 v13, 0x0

    goto/16 :goto_15c

    .line 6226
    .restart local v13    # "pbkdf2Fallback":Z
    :cond_220
    const/4 v6, 0x0

    goto/16 :goto_16b

    .line 6231
    :cond_223
    :try_start_223
    move-object/from16 v0, p0

    iget-object v0, v0, mDecryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_246

    move-object/from16 v0, p0

    iget-object v0, v0, mDecryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_246

    .line 6232
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v13, v2}, decodeAesHeaderAndInitialize(Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 6234
    if-eqz v14, :cond_181

    .line 6235
    const/4 v12, 0x1

    goto/16 :goto_181

    .line 6237
    :cond_246
    const-string v21, "BackupManagerService"

    const-string v22, "Archive is encrypted but no password given"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24d
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_24d} :catch_24f
    .catchall {:try_start_223 .. :try_end_24d} :catchall_2fd

    goto/16 :goto_181

    .line 6258
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v13    # "pbkdf2Fallback":Z
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "streamHeader":[B
    :catch_24f
    move-exception v8

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .line 6259
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v8    # "e":Ljava/io/IOException;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    :goto_254
    :try_start_254
    const-string v21, "BackupManagerService"

    const-string v22, "Unable to read restore input"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25b
    .catchall {:try_start_254 .. :try_end_25b} :catchall_473

    .line 6261
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6265
    if-eqz v15, :cond_270

    :try_start_26d
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 6266
    :cond_270
    if-eqz v17, :cond_275

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 6267
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27e
    .catch Ljava/io/IOException; {:try_start_26d .. :try_end_27e} :catch_44b

    .line 6272
    :goto_27e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6273
    :try_start_28b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 6274
    monitor-exit v22
    :try_end_29b
    .catchall {:try_start_28b .. :try_end_29b} :catchall_459

    .line 6275
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6276
    :try_start_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6277
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 6278
    monitor-exit v22
    :try_end_2bb
    .catchall {:try_start_2a2 .. :try_end_2bb} :catchall_45c

    .line 6279
    move-object/from16 v0, p0

    iget-object v0, v0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6280
    invoke-virtual/range {p0 .. p0}, sendEndRestore()V

    .line 6281
    const-string v21, "BackupManagerService"

    const-string v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_df

    .line 6238
    .end local v8    # "e":Ljava/io/IOException;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v4    # "archiveVersion":I
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v19    # "s":Ljava/lang/String;
    .restart local v20    # "streamHeader":[B
    :cond_2df
    :try_start_2df
    const-string v21, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Wrong header version: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2fb} :catch_24f
    .catchall {:try_start_2df .. :try_end_2fb} :catchall_2fd

    goto/16 :goto_181

    .line 6261
    .end local v4    # "archiveVersion":I
    .end local v9    # "headerLen":I
    .end local v11    # "magicBytes":[B
    .end local v19    # "s":Ljava/lang/String;
    .end local v20    # "streamHeader":[B
    :catchall_2fd
    move-exception v21

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    :goto_302
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6265
    if-eqz v15, :cond_317

    :try_start_314
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 6266
    :cond_317
    if-eqz v17, :cond_31c

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 6267
    :cond_31c
    move-object/from16 v0, p0

    iget-object v0, v0, mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_325} :catch_45f

    .line 6272
    :goto_325
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6273
    :try_start_332
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->clear()V

    .line 6274
    monitor-exit v22
    :try_end_342
    .catchall {:try_start_332 .. :try_end_342} :catchall_46d

    .line 6275
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6276
    :try_start_349
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6277
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 6278
    monitor-exit v22
    :try_end_35e
    .catchall {:try_start_349 .. :try_end_35e} :catchall_470

    .line 6279
    move-object/from16 v0, p0

    iget-object v0, v0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6280
    invoke-virtual/range {p0 .. p0}, sendEndRestore()V

    .line 6281
    const-string v22, "BackupManagerService"

    const-string v23, "Full restore pass complete."

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v21

    .line 6239
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v6    # "compressed":Z
    .restart local v9    # "headerLen":I
    .restart local v11    # "magicBytes":[B
    .restart local v12    # "okay":Z
    .restart local v14    # "preCompressStream":Ljava/io/InputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v20    # "streamHeader":[B
    :cond_381
    :try_start_381
    const-string v21, "BackupManagerService"

    const-string v22, "Didn\'t read the right header magic"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_388
    .catch Ljava/io/IOException; {:try_start_381 .. :try_end_388} :catch_24f
    .catchall {:try_start_381 .. :try_end_388} :catchall_2fd

    goto/16 :goto_181

    .line 6268
    :catch_38a
    move-exception v8

    .line 6269
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v21, "BackupManagerService"

    const-string v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b8

    .line 6274
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_398
    move-exception v21

    :try_start_399
    monitor-exit v22
    :try_end_39a
    .catchall {:try_start_399 .. :try_end_39a} :catchall_398

    throw v21

    .line 6278
    :catchall_39b
    move-exception v21

    :try_start_39c
    monitor-exit v22
    :try_end_39d
    .catchall {:try_start_39c .. :try_end_39d} :catchall_39b

    throw v21

    .line 6250
    :cond_39e
    if-eqz v6, :cond_435

    :try_start_3a0
    new-instance v10, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v10, v14}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6254
    .local v10, "in":Ljava/io/InputStream;
    :cond_3a5
    :goto_3a5
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, restoreOneFile(Ljava/io/InputStream;[B)Z
    :try_end_3aa
    .catch Ljava/io/IOException; {:try_start_3a0 .. :try_end_3aa} :catch_24f
    .catchall {:try_start_3a0 .. :try_end_3aa} :catchall_2fd

    move-result v7

    .line 6255
    .local v7, "didRestore":Z
    if-nez v7, :cond_3a5

    .line 6261
    invoke-virtual/range {p0 .. p0}, tearDownPipes()V

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6265
    if-eqz v16, :cond_3c2

    :try_start_3bf
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 6266
    :cond_3c2
    if-eqz v18, :cond_3c7

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 6267
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, mInputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3d0
    .catch Ljava/io/IOException; {:try_start_3bf .. :try_end_3d0} :catch_438

    .line 6272
    :goto_3d0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6273
    :try_start_3dd
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->clear()V

    .line 6274
    monitor-exit v22
    :try_end_3ed
    .catchall {:try_start_3dd .. :try_end_3ed} :catchall_445

    .line 6275
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6276
    :try_start_3f4
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6277
    move-object/from16 v0, p0

    iget-object v0, v0, mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 6278
    monitor-exit v22
    :try_end_40d
    .catchall {:try_start_3f4 .. :try_end_40d} :catchall_448

    .line 6279
    move-object/from16 v0, p0

    iget-object v0, v0, mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 6280
    invoke-virtual/range {p0 .. p0}, sendEndRestore()V

    .line 6281
    const-string v21, "BackupManagerService"

    const-string v22, "Full restore pass complete."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v15, v16

    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    move-object/from16 v17, v18

    .line 6283
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_df

    .end local v7    # "didRestore":Z
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :cond_435
    move-object v10, v14

    .line 6250
    goto/16 :goto_3a5

    .line 6268
    .restart local v7    # "didRestore":Z
    .restart local v10    # "in":Ljava/io/InputStream;
    :catch_438
    move-exception v8

    .line 6269
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v21, "BackupManagerService"

    const-string v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d0

    .line 6274
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_445
    move-exception v21

    :try_start_446
    monitor-exit v22
    :try_end_447
    .catchall {:try_start_446 .. :try_end_447} :catchall_445

    throw v21

    .line 6278
    :catchall_448
    move-exception v21

    :try_start_449
    monitor-exit v22
    :try_end_44a
    .catchall {:try_start_449 .. :try_end_44a} :catchall_448

    throw v21

    .line 6268
    .end local v5    # "buffer":[B
    .end local v6    # "compressed":Z
    .end local v7    # "didRestore":Z
    .end local v9    # "headerLen":I
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v11    # "magicBytes":[B
    .end local v12    # "okay":Z
    .end local v14    # "preCompressStream":Ljava/io/InputStream;
    .end local v16    # "rawDataIn":Ljava/io/DataInputStream;
    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .end local v20    # "streamHeader":[B
    .restart local v8    # "e":Ljava/io/IOException;
    .restart local v15    # "rawDataIn":Ljava/io/DataInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    :catch_44b
    move-exception v8

    .line 6269
    const-string v21, "BackupManagerService"

    const-string v22, "Close of restore data pipe threw"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27e

    .line 6274
    :catchall_459
    move-exception v21

    :try_start_45a
    monitor-exit v22
    :try_end_45b
    .catchall {:try_start_45a .. :try_end_45b} :catchall_459

    throw v21

    .line 6278
    :catchall_45c
    move-exception v21

    :try_start_45d
    monitor-exit v22
    :try_end_45e
    .catchall {:try_start_45d .. :try_end_45e} :catchall_45c

    throw v21

    .line 6268
    .end local v8    # "e":Ljava/io/IOException;
    :catch_45f
    move-exception v8

    .line 6269
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v22, "BackupManagerService"

    const-string v23, "Close of restore data pipe threw"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_325

    .line 6274
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_46d
    move-exception v21

    :try_start_46e
    monitor-exit v22
    :try_end_46f
    .catchall {:try_start_46e .. :try_end_46f} :catchall_46d

    throw v21

    .line 6278
    :catchall_470
    move-exception v21

    :try_start_471
    monitor-exit v22
    :try_end_472
    .catchall {:try_start_471 .. :try_end_472} :catchall_470

    throw v21

    .line 6261
    :catchall_473
    move-exception v21

    goto/16 :goto_302

    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catchall_476
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_302

    .line 6258
    .end local v5    # "buffer":[B
    :catch_47b
    move-exception v8

    goto/16 :goto_254

    .end local v17    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v5    # "buffer":[B
    .restart local v18    # "rawInStream":Ljava/io/FileInputStream;
    :catch_47e
    move-exception v8

    move-object/from16 v17, v18

    .end local v18    # "rawInStream":Ljava/io/FileInputStream;
    .restart local v17    # "rawInStream":Ljava/io/FileInputStream;
    goto/16 :goto_254
.end method

.method sendEndRestore()V
    .registers 4

    .prologue
    .line 7419
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 7421
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 7427
    :cond_9
    :goto_9
    return-void

    .line 7422
    :catch_a
    move-exception v0

    .line 7423
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7424
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 7407
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 7410
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 7416
    :cond_9
    :goto_9
    return-void

    .line 7411
    :catch_a
    move-exception v0

    .line 7412
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7413
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendStartRestore()V
    .registers 4

    .prologue
    .line 7396
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 7398
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 7404
    :cond_9
    :goto_9
    return-void

    .line 7399
    :catch_a
    move-exception v0

    .line 7400
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7401
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6696
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 6697
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .registers 13
    .param p1, "size"    # J
    .param p3, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 6912
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 6913
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1e

    .line 6914
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 6915
    .local v1, "needed":I
    new-array v0, v1, [B

    .line 6916
    .local v0, "buffer":[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1f

    .line 6917
    iget-wide v4, p0, mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, mBytes:J

    .line 6920
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_1e
    return-void

    .line 6918
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 6714
    iget-object v1, p0, mAgent:Landroid/app/IBackupAgent;

    if-eqz v1, :cond_34

    .line 6717
    :try_start_4
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6722
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_35

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 6724
    const-string v1, "BackupManagerService"

    const-string v2, "Killing host process"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6725
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_31} :catch_3d

    .line 6732
    :goto_31
    const/4 v1, 0x0

    iput-object v1, p0, mAgent:Landroid/app/IBackupAgent;

    .line 6734
    :cond_34
    return-void

    .line 6727
    :cond_35
    :try_start_35
    const-string v1, "BackupManagerService"

    const-string v2, "Not killing after full restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_31

    .line 6729
    :catch_3d
    move-exception v0

    .line 6730
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method tearDownPipes()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 6700
    iget-object v1, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_23

    .line 6702
    :try_start_5
    iget-object v1, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6703
    iget-object v1, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 6704
    iget-object v1, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6705
    iget-object v1, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    .line 6709
    :goto_21
    iput-object v4, p0, mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 6711
    :cond_23
    return-void

    .line 6706
    :catch_24
    move-exception v0

    .line 6707
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method
