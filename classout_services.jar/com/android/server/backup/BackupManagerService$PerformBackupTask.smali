.class Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field mAgentBinder:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

.field mFinished:Z

.field mJournal:Ljava/io/File;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .registers 8
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2534
    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2535
    iput-object p2, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 2536
    iput-object p4, p0, mOriginalQueue:Ljava/util/ArrayList;

    .line 2537
    iput-object p5, p0, mJournal:Ljava/io/File;

    .line 2539
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mStateDir:Ljava/io/File;

    .line 2541
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    iput-object v0, p0, mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2542
    const/4 v0, 0x0

    iput-boolean v0, p0, mFinished:Z

    .line 2544
    const-string v0, "STATE => INITIAL"

    invoke-virtual {p1, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2545
    return-void
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .registers 9
    .param p1, "input"    # [B

    .prologue
    .line 3005
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 3006
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_22

    move-result-object v0

    .line 3012
    .local v0, "checksum":[B
    new-instance v4, Ljava/lang/StringBuffer;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3013
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v5, v0

    if-ge v2, v5, :cond_2d

    .line 3014
    aget-byte v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3013
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3007
    .end local v0    # "checksum":[B
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_22
    move-exception v1

    .line 3008
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "PerformBackupTask"

    const-string v6, "Unable to use SHA-1!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const-string v5, "00"

    .line 3016
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2c
    return-object v5

    .restart local v0    # "checksum":[B
    .restart local v2    # "i":I
    .restart local v3    # "md":Ljava/security/MessageDigest;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2c
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3021
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v10

    .line 3024
    .local v10, "widgetState":[B
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, mStateDir:Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_widget"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3025
    .local v9, "widgetFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    .line 3034
    .local v7, "priorStateExists":Z
    if-nez v7, :cond_2e

    if-nez v10, :cond_2e

    .line 3077
    :cond_2d
    :goto_2d
    return-void

    .line 3043
    :cond_2e
    const/4 v4, 0x0

    .line 3044
    .local v4, "newChecksum":Ljava/lang/String;
    if-eqz v10, :cond_5d

    .line 3045
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, SHA1Checksum([B)Ljava/lang/String;

    move-result-object v4

    .line 3046
    if-eqz v7, :cond_5d

    .line 3049
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3048
    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 3050
    :try_start_3f
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_44} :catch_94
    .catchall {:try_start_3f .. :try_end_44} :catchall_a6

    .line 3048
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v13, 0x0

    .line 3052
    :try_start_45
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_a9
    .catchall {:try_start_45 .. :try_end_48} :catchall_ab

    move-result-object v6

    .line 3053
    .local v6, "priorChecksum":Ljava/lang/String;
    if-eqz v3, :cond_50

    if-eqz v13, :cond_a2

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_8f
    .catchall {:try_start_4d .. :try_end_50} :catchall_a6

    :cond_50
    :goto_50
    if-eqz v1, :cond_57

    if-eqz v14, :cond_c2

    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_bd

    .line 3054
    :cond_57
    :goto_57
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d

    .line 3061
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    :cond_5d
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 3062
    .local v5, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v10, :cond_110

    .line 3064
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3063
    .local v2, "fout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 3065
    :try_start_6c
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_71} :catch_d4
    .catchall {:try_start_6c .. :try_end_71} :catchall_e6

    .line 3063
    .local v8, "stateOut":Ljava/io/DataOutputStream;
    const/4 v13, 0x0

    .line 3067
    :try_start_72
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_e9
    .catchall {:try_start_72 .. :try_end_75} :catchall_eb

    .line 3068
    if-eqz v8, :cond_7c

    if-eqz v13, :cond_e2

    :try_start_79
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_cf
    .catchall {:try_start_79 .. :try_end_7c} :catchall_e6

    :cond_7c
    :goto_7c
    if-eqz v2, :cond_83

    if-eqz v14, :cond_102

    :try_start_80
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_fd

    .line 3070
    :cond_83
    :goto_83
    const-string/jumbo v12, "\uffed\uffedwidget"

    array-length v13, v10

    invoke-virtual {v5, v12, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 3071
    array-length v12, v10

    invoke-virtual {v5, v10, v12}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_2d

    .line 3053
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "priorChecksum":Ljava/lang/String;
    :catch_8f
    move-exception v11

    .local v11, "x2":Ljava/lang/Throwable;
    :try_start_90
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_93} :catch_94
    .catchall {:try_start_90 .. :try_end_93} :catchall_a6

    goto :goto_50

    .line 3048
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_94
    move-exception v12

    :try_start_95
    throw v12
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    .line 3053
    :catchall_96
    move-exception v13

    move-object v15, v13

    move-object v13, v12

    move-object v12, v15

    :goto_9a
    if-eqz v1, :cond_a1

    if-eqz v13, :cond_cb

    :try_start_9e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a1} :catch_c6

    :cond_a1
    :goto_a1
    throw v12

    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "priorChecksum":Ljava/lang/String;
    :cond_a2
    :try_start_a2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a5} :catch_94
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_50

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    :catchall_a6
    move-exception v12

    move-object v13, v14

    goto :goto_9a

    .line 3048
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catch_a9
    move-exception v13

    :try_start_aa
    throw v13
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 3053
    :catchall_ab
    move-exception v12

    if-eqz v3, :cond_b3

    if-eqz v13, :cond_b9

    :try_start_b0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b3} :catch_b4
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_a6

    :cond_b3
    :goto_b3
    :try_start_b3
    throw v12

    :catch_b4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_b9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_bc} :catch_94
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_a6

    goto :goto_b3

    .restart local v6    # "priorChecksum":Ljava/lang/String;
    :catch_bd
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_57

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_c2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_57

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "priorChecksum":Ljava/lang/String;
    :catch_c6
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a1

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_cb
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_a1

    .line 3068
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catch_cf
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    :try_start_d0
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d3} :catch_d4
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_e6

    goto :goto_7c

    .line 3063
    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    .end local v11    # "x2":Ljava/lang/Throwable;
    :catch_d4
    move-exception v12

    :try_start_d5
    throw v12
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d6

    .line 3068
    :catchall_d6
    move-exception v13

    move-object v15, v13

    move-object v13, v12

    move-object v12, v15

    :goto_da
    if-eqz v2, :cond_e1

    if-eqz v13, :cond_10c

    :try_start_de
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_e1} :catch_107

    :cond_e1
    :goto_e1
    throw v12

    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    :cond_e2
    :try_start_e2
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_d4
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e6

    goto :goto_7c

    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_e6
    move-exception v12

    move-object v13, v14

    goto :goto_da

    .line 3063
    .restart local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catch_e9
    move-exception v13

    :try_start_ea
    throw v13
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    .line 3068
    :catchall_eb
    move-exception v12

    if-eqz v8, :cond_f3

    if-eqz v13, :cond_f9

    :try_start_f0
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f3} :catch_f4
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_e6

    :cond_f3
    :goto_f3
    :try_start_f3
    throw v12

    :catch_f4
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f3

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_f9
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_fc} :catch_d4
    .catchall {:try_start_f3 .. :try_end_fc} :catchall_e6

    goto :goto_f3

    :catch_fd
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v14, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_83

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_102
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_83

    .end local v8    # "stateOut":Ljava/io/DataOutputStream;
    :catch_107
    move-exception v11

    .restart local v11    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v13, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e1

    .end local v11    # "x2":Ljava/lang/Throwable;
    :cond_10c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_e1

    .line 3074
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    :cond_110
    const-string/jumbo v12, "\uffed\uffedwidget"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 3075
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_2d
.end method


# virtual methods
.method agentErrorCleanup()V
    .registers 2

    .prologue
    .line 3293
    iget-object v0, p0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3294
    iget-object v0, p0, mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3295
    invoke-virtual {p0}, clearAgentState()V

    .line 3297
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    :goto_17
    invoke-virtual {p0, v0}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 3298
    return-void

    .line 3297
    :cond_1b
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_17
.end method

.method beginBackup()V
    .registers 20

    .prologue
    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2575
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2576
    .local v9, "b":Ljava/lang/StringBuilder;
    const-string v2, "beginBackup: ["

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2578
    .local v16, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    const/16 v2, 0x20

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2579
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2581
    .end local v16    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_34
    const-string v2, " ]"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2585
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2586
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2589
    move-object/from16 v0, p0

    iget-object v2, v0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 2590
    const-string v2, "PerformBackupTask"

    const-string v3, "Backup begun with an empty queue - nothing to do."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "queue empty at begin"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2592
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2594
    const-string/jumbo v13, "unknown"

    .line 2595
    .local v13, "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_b0

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_b0

    .line 2596
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2598
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2718
    .end local v13    # "pack":Ljava/lang/String;
    :cond_b0
    :goto_b0
    return-void

    .line 2609
    :cond_b1
    move-object/from16 v0, p0

    iget-object v2, v0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, mQueue:Ljava/util/ArrayList;

    .line 2615
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_c0
    move-object/from16 v0, p0

    iget-object v2, v0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_e5

    .line 2616
    const-string v3, "@pm@"

    move-object/from16 v0, p0

    iget-object v2, v0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27e

    .line 2620
    move-object/from16 v0, p0

    iget-object v2, v0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2625
    :cond_e5
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " targets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, mStateDir:Ljava/io/File;

    const-string v3, "@pm@"

    invoke-direct {v15, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2629
    .local v15, "pmState":Ljava/io/File;
    :try_start_116
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v17

    .line 2630
    .local v17, "transportName":Ljava/lang/String;
    const/16 v2, 0xb05

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2633
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_19d

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_19d

    .line 2634
    const-string v2, "PerformBackupTask"

    const-string v3, "Initializing (wiping) backup state and transport storage"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializing transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2636
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2637
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2639
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transport.initializeDevice() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2640
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_282

    .line 2641
    const/16 v2, 0xb0b

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2663
    :cond_19d
    :goto_19d
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_1f0

    .line 2664
    new-instance v14, Lcom/android/server/backup/PackageManagerBackupAgent;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    .line 2666
    .local v14, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string v2, "@pm@"

    invoke-virtual {v14}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2668
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PMBA invoke: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2673
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2676
    .end local v14    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    :cond_1f0
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    const/16 v3, -0x3e9

    if-ne v2, v3, :cond_205

    .line 2680
    const/16 v2, 0xb0a

    move-object/from16 v0, p0

    iget-object v3, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_205} :catch_2d2
    .catchall {:try_start_116 .. :try_end_205} :catchall_3b3

    .line 2700
    :cond_205
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exiting prelim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_b0

    .line 2703
    const-string/jumbo v13, "unknown"

    .line 2704
    .restart local v13    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_26a

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_26a

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2707
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2714
    :cond_26a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2715
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_b0

    .line 2615
    .end local v13    # "pack":Ljava/lang/String;
    .end local v15    # "pmState":Ljava/io/File;
    .end local v17    # "transportName":Ljava/lang/String;
    :cond_27e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c0

    .line 2644
    .restart local v15    # "pmState":Ljava/io/File;
    .restart local v17    # "transportName":Ljava/lang/String;
    :cond_282
    :try_start_282
    const-string/jumbo v13, "unknown"

    .line 2645
    .restart local v13    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2c2

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2c2

    .line 2646
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2648
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2653
    :cond_2c2
    const/16 v2, 0xb06

    const-string v3, "(initialize)"

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2654
    const-string v2, "PerformBackupTask"

    const-string v3, "Transport error in initializeDevice()"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_2d0} :catch_2d2
    .catchall {:try_start_282 .. :try_end_2d0} :catchall_3b3

    goto/16 :goto_19d

    .line 2682
    .end local v13    # "pack":Ljava/lang/String;
    .end local v17    # "transportName":Ljava/lang/String;
    :catch_2d2
    move-exception v10

    .line 2684
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2d3
    const-string/jumbo v13, "unknown"

    .line 2685
    .restart local v13    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_313

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_313

    .line 2686
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2688
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2693
    :cond_313
    const-string v2, "PerformBackupTask"

    const-string v3, "Error in backup thread"

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2694
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in backup thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2695
    const/16 v2, -0x3e8

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I
    :try_end_33a
    .catchall {:try_start_2d3 .. :try_end_33a} :catchall_3b3

    .line 2700
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exiting prelim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_b0

    .line 2703
    const-string/jumbo v13, "unknown"

    .line 2704
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_39f

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2707
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2714
    :cond_39f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2715
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_b0

    .line 2700
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "pack":Ljava/lang/String;
    :catchall_3b3
    move-exception v2

    move-object/from16 v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exiting prelim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_42d

    .line 2703
    const-string/jumbo v13, "unknown"

    .line 2704
    .restart local v13    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_41b

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_41b

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v13, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2707
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2714
    :cond_41b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2715
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .end local v13    # "pack":Ljava/lang/String;
    :cond_42d
    throw v18
.end method

.method clearAgentState()V
    .registers 4

    .prologue
    .line 3302
    :try_start_0
    iget-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_69

    .line 3303
    :cond_9
    :goto_9
    :try_start_9
    iget-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    iget-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_67

    .line 3304
    :cond_12
    :goto_12
    :try_start_12
    iget-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_65

    .line 3305
    :cond_1b
    :goto_1b
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3309
    :try_start_20
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3310
    const/4 v0, 0x0

    iput-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 3311
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_60

    .line 3314
    iget-object v0, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5f

    .line 3315
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3317
    :try_start_52
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5f} :catch_63

    .line 3320
    :cond_5f
    :goto_5f
    return-void

    .line 3311
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    .line 3318
    :catch_63
    move-exception v0

    goto :goto_5f

    .line 3304
    :catch_65
    move-exception v0

    goto :goto_1b

    .line 3303
    :catch_67
    move-exception v0

    goto :goto_12

    .line 3302
    :catch_69
    move-exception v0

    goto :goto_9
.end method

.method clearMetadata()V
    .registers 4

    .prologue
    .line 2918
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2919
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2920
    :cond_12
    return-void
.end method

.method public execute()V
    .registers 3

    .prologue
    .line 2551
    sget-object v0, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$BackupState:[I

    iget-object v1, p0, mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 2568
    :goto_d
    return-void

    .line 2553
    :pswitch_e
    invoke-virtual {p0}, beginBackup()V

    goto :goto_d

    .line 2557
    :pswitch_12
    invoke-virtual {p0}, invokeNextAgent()V

    goto :goto_d

    .line 2561
    :pswitch_16
    iget-boolean v0, p0, mFinished:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, finalizeBackup()V

    .line 2565
    :goto_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, mFinished:Z

    goto :goto_d

    .line 2563
    :cond_21
    const-string v0, "PerformBackupTask"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2551
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    .registers 6
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$BackupState;

    .prologue
    .line 3325
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "executeNextState => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3326
    iput-object p1, p0, mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3327
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3328
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3329
    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 7
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2995
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 2999
    :goto_3
    return-void

    .line 2996
    :catch_4
    move-exception v0

    .line 2997
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method finalizeBackup()V
    .registers 9

    .prologue
    .line 2863
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "finishing"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2869
    iget-object v0, p0, mJournal:Ljava/io/File;

    if-eqz v0, :cond_2e

    iget-object v0, p0, mJournal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2870
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove backup journal file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mJournal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_2e
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    iget v0, p0, mStatus:I

    if-nez v0, :cond_53

    .line 2877
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "success; recording token"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2879
    :try_start_44
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 2880
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_53} :catch_9f

    .line 2891
    :cond_53
    :goto_53
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2892
    :try_start_58
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 2894
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->warnEdmAdminOperationCompleted()V
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)V

    .line 2896
    iget v0, p0, mStatus:I

    const/16 v2, -0x3e9

    if-ne v0, v2, :cond_78

    .line 2898
    invoke-virtual {p0}, clearMetadata()V

    .line 2900
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "init required; rerunning"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2901
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    .line 2903
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_58 .. :try_end_79} :catchall_a9

    .line 2906
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    const-string v5, "Performing user data backup succeeded "

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2911
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2912
    const-string v0, "BackupManagerService"

    const-string v1, "Backup pass finished."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2914
    return-void

    .line 2881
    :catch_9f
    move-exception v7

    .line 2884
    .local v7, "e":Landroid/os/RemoteException;
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "transport threw returning token"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_53

    .line 2903
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0
.end method

.method public handleTimeout()V
    .registers 5

    .prologue
    .line 3263
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3266
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {p0}, agentErrorCleanup()V

    .line 3268
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 3269
    return-void
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2926
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2929
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mSavedStateName:Ljava/io/File;

    .line 2930
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mBackupDataName:Ljava/io/File;

    .line 2931
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mNewStateName:Ljava/io/File;

    .line 2934
    iput-object v5, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2935
    iput-object v5, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2936
    iput-object v5, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2938
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v4

    .line 2943
    .local v4, "token":I
    :try_start_83
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2946
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2947
    iget-object v0, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2953
    :cond_96
    iget-object v0, p0, mSavedStateName:Ljava/io/File;

    const/high16 v1, 0x18000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2957
    iget-object v0, p0, mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2962
    iget-object v0, p0, mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 2963
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELinux restorecon failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_cc
    iget-object v0, p0, mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2972
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "setting timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2973
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 2974
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "calling agent doBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2975
    iget-object v1, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_fa} :catch_104

    .line 2989
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move v0, v7

    .line 2990
    :goto_103
    return v0

    .line 2976
    :catch_104
    move-exception v6

    .line 2977
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error invoking for backup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2979
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2981
    invoke-virtual {p0}, agentErrorCleanup()V

    .line 2982
    const/16 v0, -0x3eb

    goto :goto_103
.end method

.method invokeNextAgent()V
    .registers 16

    .prologue
    const/16 v14, -0x3eb

    const/4 v6, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2723
    iput v2, p0, mStatus:I

    .line 2724
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invoke q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2728
    iget-object v3, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2730
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v0}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2860
    :cond_34
    :goto_34
    return-void

    .line 2735
    :cond_35
    iget-object v3, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2736
    .local v12, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v3, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2738
    const-string v3, "PerformBackupTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "starting key/value backup of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launch agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2747
    :try_start_76
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2749
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_170

    .line 2753
    const-string v3, "PerformBackupTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no longer supports backup; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "skipping - not eligible, completion is noop"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2756
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_bd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76 .. :try_end_bd} :catch_3e8
    .catchall {:try_start_76 .. :try_end_bd} :catchall_502

    .line 2807
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2811
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_12e

    .line 2812
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2813
    .local v10, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v6, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2816
    const-string/jumbo v11, "unknown"

    .line 2817
    .local v11, "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_103

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_103

    .line 2818
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2828
    :cond_103
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_11f

    .line 2831
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2832
    iput v2, p0, mStatus:I

    .line 2833
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11a

    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2844
    :cond_11a
    :goto_11a
    invoke-virtual {p0, v10}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_34

    .line 2834
    :cond_11f
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_128

    .line 2837
    iput v2, p0, mStatus:I

    goto :goto_11a

    .line 2840
    :cond_128
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2841
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_11a

    .line 2847
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v11    # "pack":Ljava/lang/String;
    :cond_12e
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2849
    const-string/jumbo v11, "unknown"

    .line 2850
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_34

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_34

    .line 2851
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2853
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_34

    .line 2760
    .end local v11    # "pack":Ljava/lang/String;
    :cond_170
    :try_start_170
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_258

    .line 2764
    const-string v3, "PerformBackupTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requests full-data rather than key/value; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "skipping - fullBackupOnly, completion is noop"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2767
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_1a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_170 .. :try_end_1a5} :catch_3e8
    .catchall {:try_start_170 .. :try_end_1a5} :catchall_502

    .line 2807
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2811
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_216

    .line 2812
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2813
    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v6, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2816
    const-string/jumbo v11, "unknown"

    .line 2817
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_1eb

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1eb

    .line 2818
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2828
    :cond_1eb
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_207

    .line 2831
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2832
    iput v2, p0, mStatus:I

    .line 2833
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_202

    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2844
    :cond_202
    :goto_202
    invoke-virtual {p0, v10}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_34

    .line 2834
    :cond_207
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_210

    .line 2837
    iput v2, p0, mStatus:I

    goto :goto_202

    .line 2840
    :cond_210
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2841
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_202

    .line 2847
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v11    # "pack":Ljava/lang/String;
    :cond_216
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2849
    const-string/jumbo v11, "unknown"

    .line 2850
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_34

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_34

    .line 2851
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2853
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_34

    .line 2771
    .end local v11    # "pack":Ljava/lang/String;
    :cond_258
    :try_start_258
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_323

    .line 2775
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "skipping - stopped"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2776
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_270
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_258 .. :try_end_270} :catch_3e8
    .catchall {:try_start_258 .. :try_end_270} :catchall_502

    .line 2807
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2811
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_2e1

    .line 2812
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2813
    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v6, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2816
    const-string/jumbo v11, "unknown"

    .line 2817
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_2b6

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2b6

    .line 2818
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2828
    :cond_2b6
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_2d2

    .line 2831
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2832
    iput v2, p0, mStatus:I

    .line 2833
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2cd

    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2844
    :cond_2cd
    :goto_2cd
    invoke-virtual {p0, v10}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_34

    .line 2834
    :cond_2d2
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_2db

    .line 2837
    iput v2, p0, mStatus:I

    goto :goto_2cd

    .line 2840
    :cond_2db
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2841
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_2cd

    .line 2847
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v11    # "pack":Ljava/lang/String;
    :cond_2e1
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2849
    const-string/jumbo v11, "unknown"

    .line 2850
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_34

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_34

    .line 2851
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2853
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_34

    .line 2780
    .end local v11    # "pack":Ljava/lang/String;
    :cond_323
    const/4 v7, 0x0

    .line 2782
    .local v7, "agent":Landroid/app/IBackupAgent;
    :try_start_324
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Landroid/os/WorkSource;

    iget-object v5, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v5}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2783
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v7

    .line 2785
    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agent bound; a? = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v7, :cond_3cc

    const/4 v3, 0x1

    :goto_351
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2786
    if-eqz v7, :cond_3ce

    .line 2787
    iput-object v7, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2788
    iget-object v3, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    iget-object v4, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v3, v7, v4}, invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v3

    iput v3, p0, mStatus:I
    :try_end_36a
    .catch Ljava/lang/SecurityException; {:try_start_324 .. :try_end_36a} :catch_3d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_324 .. :try_end_36a} :catch_3e8
    .catchall {:try_start_324 .. :try_end_36a} :catchall_502

    .line 2807
    :goto_36a
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2811
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_46f

    .line 2812
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2813
    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v6, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2816
    const-string/jumbo v11, "unknown"

    .line 2817
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_3b0

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3b0

    .line 2818
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2828
    :cond_3b0
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_45e

    .line 2831
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2832
    iput v2, p0, mStatus:I

    .line 2833
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c7

    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2844
    :cond_3c7
    :goto_3c7
    invoke-virtual {p0, v10}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_34

    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v11    # "pack":Ljava/lang/String;
    :cond_3cc
    move v3, v2

    .line 2785
    goto :goto_351

    .line 2794
    :cond_3ce
    const/16 v3, -0x3eb

    :try_start_3d0
    iput v3, p0, mStatus:I
    :try_end_3d2
    .catch Ljava/lang/SecurityException; {:try_start_3d0 .. :try_end_3d2} :catch_3d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d0 .. :try_end_3d2} :catch_3e8
    .catchall {:try_start_3d0 .. :try_end_3d2} :catchall_502

    goto :goto_36a

    .line 2796
    :catch_3d3
    move-exception v9

    .line 2798
    .local v9, "ex":Ljava/lang/SecurityException;
    :try_start_3d4
    const-string v3, "PerformBackupTask"

    const-string/jumbo v4, "error in bind/backup"

    invoke-static {v3, v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2799
    const/16 v3, -0x3eb

    iput v3, p0, mStatus:I

    .line 2800
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v4, "agent SE"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_3e7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d4 .. :try_end_3e7} :catch_3e8
    .catchall {:try_start_3d4 .. :try_end_3e7} :catchall_502

    goto :goto_36a

    .line 2802
    .end local v7    # "agent":Landroid/app/IBackupAgent;
    .end local v9    # "ex":Ljava/lang/SecurityException;
    :catch_3e8
    move-exception v8

    .line 2803
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3e9
    const-string v3, "PerformBackupTask"

    const-string v4, "Package does not exist; skipping"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "no such package"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2805
    const/16 v3, -0x3ec

    iput v3, p0, mStatus:I
    :try_end_3fc
    .catchall {:try_start_3e9 .. :try_end_3fc} :catchall_502

    .line 2807
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2811
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_4c0

    .line 2812
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2813
    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v6, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2816
    const-string/jumbo v11, "unknown"

    .line 2817
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_442

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_442

    .line 2818
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2828
    :cond_442
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_4b1

    .line 2831
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2832
    iput v2, p0, mStatus:I

    .line 2833
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_459

    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2844
    :cond_459
    :goto_459
    invoke-virtual {p0, v10}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_34

    .line 2834
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "agent":Landroid/app/IBackupAgent;
    :cond_45e
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_468

    .line 2837
    iput v2, p0, mStatus:I

    goto/16 :goto_3c7

    .line 2840
    :cond_468
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2841
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto/16 :goto_3c7

    .line 2847
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v11    # "pack":Ljava/lang/String;
    :cond_46f
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2849
    const-string/jumbo v11, "unknown"

    .line 2850
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_34

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_34

    .line 2851
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2853
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_34

    .line 2834
    .end local v7    # "agent":Landroid/app/IBackupAgent;
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_4b1
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_4ba

    .line 2837
    iput v2, p0, mStatus:I

    goto :goto_459

    .line 2840
    :cond_4ba
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2841
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_459

    .line 2847
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v11    # "pack":Ljava/lang/String;
    :cond_4c0
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2849
    const-string/jumbo v11, "unknown"

    .line 2850
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_34

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_34

    .line 2851
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2853
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_34

    .line 2807
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "pack":Ljava/lang/String;
    :catchall_502
    move-exception v3

    move-object v13, v3

    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2811
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_574

    .line 2812
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2813
    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v6, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2816
    const-string/jumbo v11, "unknown"

    .line 2817
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_54a

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_54a

    .line 2818
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2820
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2828
    :cond_54a
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_565

    .line 2831
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2832
    iput v2, p0, mStatus:I

    .line 2833
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_561

    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2844
    :cond_561
    :goto_561
    invoke-virtual {p0, v10}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2857
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_564
    :goto_564
    throw v13

    .line 2834
    .restart local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_565
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_56e

    .line 2837
    iput v2, p0, mStatus:I

    goto :goto_561

    .line 2840
    :cond_56e
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2841
    sget-object v10, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_561

    .line 2847
    .end local v10    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v11    # "pack":Ljava/lang/String;
    :cond_574
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2849
    const-string/jumbo v11, "unknown"

    .line 2850
    .restart local v11    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_564

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_564

    .line 2851
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2853
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing user data backup of package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_564
.end method

.method public operationComplete(I)V
    .registers 25
    .param p1, "unusedResult"    # I

    .prologue
    .line 3083
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_35

    .line 3088
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 3094
    .local v19, "pkg":Ljava/lang/String;
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "late opComplete; curPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3255
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_31
    :goto_31
    return-void

    .line 3088
    :cond_32
    const-string v19, "[none]"

    goto :goto_14

    .line 3098
    :cond_35
    const-string/jumbo v18, "unknown"

    .line 3100
    .local v18, "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_4e

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4e

    .line 3101
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3105
    :cond_4e
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3106
    .local v20, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 3107
    .local v14, "filepos":J
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_91

    .line 3108
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBackupData is null, possibility timeout when dobackup() pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const/16 v2, 0xb07

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "mBackupData is null"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_31

    .line 3112
    :cond_91
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    .line 3116
    .local v12, "fd":Ljava/io/FileDescriptor;
    :try_start_99
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2bc

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2bc

    .line 3118
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v21

    .line 3120
    .local v21, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v13, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_c0} :catch_143

    .line 3122
    .local v13, "in":Landroid/app/backup/BackupDataInput;
    :goto_c0
    :try_start_c0
    invoke-virtual {v13}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 3123
    invoke-virtual {v13}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v16

    .line 3124
    .local v16, "key":Ljava/lang/String;
    if-eqz v16, :cond_2ab

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xff00

    if-lt v2, v3, :cond_2ab

    .line 3126
    move-object/from16 v0, p0

    iget-object v2, v0, mAgentBinder:Landroid/app/IBackupAgent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal backup key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 3127
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "illegal key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3128
    const/16 v2, 0xb07

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v3, v4

    const/4 v4, 0x1

    const-string v5, "bad key"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3130
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 3131
    invoke-virtual/range {p0 .. p0}, agentErrorCleanup()V
    :try_end_13c
    .catchall {:try_start_c0 .. :try_end_13c} :catchall_2b0

    .line 3138
    if-eqz v21, :cond_31

    .line 3139
    :try_start_13e
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_143

    goto/16 :goto_31

    .line 3146
    .end local v13    # "in":Landroid/app/backup/BackupDataInput;
    .end local v16    # "key":Ljava/lang/String;
    .end local v21    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_143
    move-exception v10

    .line 3151
    .local v10, "e":Ljava/io/IOException;
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save widget state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :try_start_15e
    invoke-static {v12, v14, v15}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_161
    .catch Landroid/system/ErrnoException; {:try_start_15e .. :try_end_161} :catch_2c5

    .line 3162
    .end local v10    # "e":Ljava/io/IOException;
    :goto_161
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 3163
    invoke-virtual/range {p0 .. p0}, clearAgentState()V

    .line 3164
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "operation complete"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3166
    const/4 v9, 0x0

    .line 3167
    .local v9, "backupData":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 3169
    :try_start_17e
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v22, v0

    .line 3170
    .local v22, "size":I
    if-lez v22, :cond_315

    .line 3171
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_1b5

    .line 3172
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 3174
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "sending data to transport"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3175
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3, v9}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 3183
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data delivered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3184
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_2cf

    .line 3185
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "finishing op on transport"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3186
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 3187
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finished: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3196
    :cond_20f
    :goto_20f
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_328

    .line 3200
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3201
    move-object/from16 v0, p0

    iget-object v2, v0, mNewStateName:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, mSavedStateName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3202
    const/16 v2, 0xb08

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3203
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_242} :catch_2e3
    .catchall {:try_start_17e .. :try_end_242} :catchall_321

    .line 3219
    :goto_242
    if-eqz v9, :cond_247

    :try_start_244
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_247
    .catch Ljava/io/IOException; {:try_start_244 .. :try_end_247} :catch_39f

    .line 3223
    .end local v22    # "size":I
    :cond_247
    :goto_247
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_255

    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    const/16 v3, -0x3ea

    if-ne v2, v3, :cond_354

    .line 3226
    :cond_255
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_296

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_296

    .line 3227
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3229
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3236
    :cond_296
    move-object/from16 v0, p0

    iget-object v2, v0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_350

    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3254
    .local v17, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_2a2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_31

    .line 3135
    .end local v9    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .restart local v13    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v21    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_2ab
    :try_start_2ab
    invoke-virtual {v13}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_2ae
    .catchall {:try_start_2ab .. :try_end_2ae} :catchall_2b0

    goto/16 :goto_c0

    .line 3138
    .end local v16    # "key":Ljava/lang/String;
    :catchall_2b0
    move-exception v2

    if-eqz v21, :cond_2b6

    .line 3139
    :try_start_2b3
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_2b6
    throw v2

    .line 3138
    :cond_2b7
    if-eqz v21, :cond_2bc

    .line 3139
    invoke-virtual/range {v21 .. v21}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3145
    .end local v13    # "in":Landroid/app/backup/BackupDataInput;
    .end local v21    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_2bc
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_2b3 .. :try_end_2c3} :catch_143

    goto/16 :goto_161

    .line 3154
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_2c5
    move-exception v11

    .line 3155
    .local v11, "ee":Landroid/system/ErrnoException;
    const-string v2, "PerformBackupTask"

    const-string v3, "Unable to roll back!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_161

    .line 3188
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "ee":Landroid/system/ErrnoException;
    .restart local v9    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "size":I
    :cond_2cf
    :try_start_2cf
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    const/16 v3, -0x3ea

    if-ne v2, v3, :cond_20f

    .line 3189
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "transport rejected package"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2e1} :catch_2e3
    .catchall {:try_start_2cf .. :try_end_2e1} :catchall_321

    goto/16 :goto_20f

    .line 3214
    .end local v22    # "size":I
    :catch_2e3
    move-exception v10

    .line 3215
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2e4
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport error backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3216
    const/16 v2, 0xb06

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3217
    const/16 v2, -0x3e8

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I
    :try_end_30b
    .catchall {:try_start_2e4 .. :try_end_30b} :catchall_321

    .line 3219
    if-eqz v9, :cond_247

    :try_start_30d
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_310
    .catch Ljava/io/IOException; {:try_start_30d .. :try_end_310} :catch_312

    goto/16 :goto_247

    :catch_312
    move-exception v2

    goto/16 :goto_247

    .line 3193
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v22    # "size":I
    :cond_315
    :try_start_315
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "no data to send"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_31f
    .catch Ljava/lang/Exception; {:try_start_315 .. :try_end_31f} :catch_2e3
    .catchall {:try_start_315 .. :try_end_31f} :catchall_321

    goto/16 :goto_20f

    .line 3219
    .end local v22    # "size":I
    :catchall_321
    move-exception v2

    if-eqz v9, :cond_327

    :try_start_324
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_327
    .catch Ljava/io/IOException; {:try_start_324 .. :try_end_327} :catch_3a2

    :cond_327
    :goto_327
    throw v2

    .line 3204
    .restart local v22    # "size":I
    :cond_328
    :try_start_328
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    const/16 v3, -0x3ea

    if-ne v2, v3, :cond_347

    .line 3207
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3208
    move-object/from16 v0, p0

    iget-object v2, v0, mNewStateName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3209
    const-string v2, "Transport rejected"

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_242

    .line 3212
    :cond_347
    const/16 v2, 0xb06

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_34e
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_34e} :catch_2e3
    .catchall {:try_start_328 .. :try_end_34e} :catchall_321

    goto/16 :goto_242

    .line 3236
    .end local v22    # "size":I
    :cond_350
    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto/16 :goto_2a2

    .line 3239
    :cond_354
    const-string/jumbo v18, "unknown"

    .line 3240
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_398

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_398

    .line 3241
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3243
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing user data backup of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " succeeded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3250
    :cond_398
    invoke-virtual/range {p0 .. p0}, revertAndEndBackup()V

    .line 3251
    sget-object v17, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    goto/16 :goto_2a2

    .line 3219
    .end local v17    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .restart local v22    # "size":I
    :catch_39f
    move-exception v2

    goto/16 :goto_247

    .end local v22    # "size":I
    :catch_3a2
    move-exception v3

    goto :goto_327
.end method

.method revertAndEndBackup()V
    .registers 8

    .prologue
    .line 3273
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v6, "transport error; reverting"

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3279
    :try_start_8
    iget-object v5, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_2f

    move-result-wide v0

    .line 3284
    .local v0, "delay":J
    :goto_e
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    .line 3286
    iget-object v5, p0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 3287
    .local v4, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v4, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto :goto_1b

    .line 3280
    .end local v0    # "delay":J
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :catch_2f
    move-exception v2

    .line 3281
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "PerformBackupTask"

    const-string v6, "Unable to contact transport for recommended backoff"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    const-wide/16 v0, 0x0

    .restart local v0    # "delay":J
    goto :goto_e

    .line 3290
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3a
    return-void
.end method
