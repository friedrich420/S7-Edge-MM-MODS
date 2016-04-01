.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    }
.end annotation


# static fields
.field private static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFAULT_HOME_KEY:Ljava/lang/String; = "@home@"

.field private static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field private static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field private static final STATE_FILE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PMBA"


# instance fields
.field private mAllPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExisting:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMetadata:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRestoredHome:Landroid/content/ComponentName;

.field private mRestoredHomeInstaller:Ljava/lang/String;

.field private mRestoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mRestoredHomeVersion:J

.field private mRestoredSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStateVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredHomeComponent:Landroid/content/ComponentName;

.field private mStoredHomeSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mStoredHomeVersion:J

.field private mStoredIncrementalVersion:Ljava/lang/String;

.field private mStoredSdkVersion:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mStateVersions:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mExisting:Ljava/util/HashSet;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 118
    invoke-virtual {p0}, evaluateStorablePackages()V

    .line 119
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mStateVersions:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mExisting:Ljava/util/HashSet;

    .line 112
    invoke-direct {p0, p1, p2}, init(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 113
    return-void
.end method

.method private getPreferredHomeComponent()Landroid/content/ComponentName;
    .registers 3

    .prologue
    .line 603
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_c
    if-ltz v1, :cond_22

    .line 142
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 143
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 144
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 147
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_22
    return-object v3
.end method

.method private static hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "sigs"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 436
    if-nez p0, :cond_4

    .line 437
    const/4 v1, 0x0

    .line 444
    :cond_3
    return-object v1

    .line 440
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .local v1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_d
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 442
    .local v4, "s":Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private init(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .registers 4
    .param p1, "packageMgr"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 123
    iput-object p2, p0, mAllPackages:Ljava/util/List;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, mRestoredSignatures:Ljava/util/HashMap;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasMetadata:Z

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, mStoredSdkVersion:I

    .line 128
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, mStoredIncrementalVersion:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "stateFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v10, 0x0

    .line 513
    iget-object v8, p0, mExisting:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 514
    iget-object v8, p0, mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 515
    const/4 v8, 0x0

    iput v8, p0, mStoredSdkVersion:I

    .line 516
    iput-object v10, p0, mStoredIncrementalVersion:Ljava/lang/String;

    .line 517
    iput-object v10, p0, mStoredHomeComponent:Landroid/content/ComponentName;

    .line 518
    const-wide/16 v8, 0x0

    iput-wide v8, p0, mStoredHomeVersion:J

    .line 519
    iput-object v10, p0, mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 525
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 526
    .local v4, "instream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 527
    .local v3, "inbuffer":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 530
    .local v2, "in":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 531
    .local v1, "ignoreExisting":Z
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "pkg":Ljava/lang/String;
    const-string v8, "=state="

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 535
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 536
    .local v6, "stateVersion":I
    const/4 v8, 0x2

    if-le v6, v8, :cond_70

    .line 537
    const-string v8, "PMBA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported state file version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", redoing from start"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_5d} :catch_ce
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_5d} :catch_107
    .catchall {:try_start_2c .. :try_end_5d} :catchall_135

    .line 593
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 594
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 595
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_66} :catch_67

    .line 600
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "stateVersion":I
    :goto_66
    return-void

    .line 596
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "stateVersion":I
    :catch_67
    move-exception v0

    .line 597
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PMBA"

    const-string v9, "Error in buffer close"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 541
    .end local v0    # "e":Ljava/io/IOException;
    :cond_70
    :try_start_70
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 553
    .end local v6    # "stateVersion":I
    :goto_74
    const-string v8, "@home@"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 555
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, p0, mStoredHomeComponent:Landroid/content/ComponentName;

    .line 556
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, mStoredHomeVersion:J

    .line 557
    invoke-static {v2}, readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 559
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 565
    :cond_96
    const-string v8, "@meta@"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_eb

    .line 566
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, mStoredSdkVersion:I

    .line 567
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, mStoredIncrementalVersion:Ljava/lang/String;

    .line 568
    if-nez v1, :cond_b3

    .line 569
    iget-object v8, p0, mExisting:Ljava/util/HashSet;

    const-string v9, "@meta@"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_b3
    :goto_b3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 579
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 581
    .local v7, "versionCode":I
    if-nez v1, :cond_c2

    .line 582
    iget-object v8, p0, mExisting:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_c2
    iget-object v8, p0, mStateVersions:Ljava/util/HashMap;

    new-instance v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v7, v10}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;ILjava/util/ArrayList;)V

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catch Ljava/io/EOFException; {:try_start_70 .. :try_end_cd} :catch_ce
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_cd} :catch_107
    .catchall {:try_start_70 .. :try_end_cd} :catchall_135

    goto :goto_b3

    .line 586
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "versionCode":I
    :catch_ce
    move-exception v8

    .line 593
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 594
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 595
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d8} :catch_d9

    goto :goto_66

    .line 596
    :catch_d9
    move-exception v0

    .line 597
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PMBA"

    const-string v9, "Error in buffer close"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 548
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_e2
    :try_start_e2
    const-string v8, "PMBA"

    const-string v9, "Older version of saved state - rewriting"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v1, 0x1

    goto :goto_74

    .line 572
    :cond_eb
    const-string v8, "PMBA"

    const-string v9, "No global metadata in state file!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/io/EOFException; {:try_start_e2 .. :try_end_f2} :catch_ce
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_f2} :catch_107
    .catchall {:try_start_e2 .. :try_end_f2} :catchall_135

    .line 593
    :try_start_f2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 594
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 595
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fb} :catch_fd

    goto/16 :goto_66

    .line 596
    :catch_fd
    move-exception v0

    .line 597
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PMBA"

    const-string v9, "Error in buffer close"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 588
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "pkg":Ljava/lang/String;
    :catch_107
    move-exception v0

    .line 590
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_108
    const-string v8, "PMBA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read Package Manager state file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catchall {:try_start_108 .. :try_end_120} :catchall_135

    .line 593
    :try_start_120
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 594
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 595
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_129} :catch_12b

    goto/16 :goto_66

    .line 596
    :catch_12b
    move-exception v0

    .line 597
    const-string v8, "PMBA"

    const-string v9, "Error in buffer close"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66

    .line 592
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_135
    move-exception v8

    .line 593
    :try_start_136
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 594
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 595
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_13f} :catch_140

    .line 598
    :goto_13f
    throw v8

    .line 596
    :catch_140
    move-exception v0

    .line 597
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PMBA"

    const-string v10, "Error in buffer close"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f
.end method

.method private static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 463
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_4} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_18

    move-result v5

    .line 473
    .local v5, "num":I
    const/16 v9, 0x14

    if-le v5, v9, :cond_2c

    .line 474
    :try_start_9
    const-string v9, "PMBA"

    const-string v11, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v11, "Bad restore state"

    invoke-direct {v9, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_18

    .line 505
    .end local v5    # "num":I
    :catch_18
    move-exception v0

    .line 506
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "PMBA"

    const-string v11, "Unable to read signatures"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 507
    .end local v0    # "e":Ljava/io/IOException;
    :cond_21
    :goto_21
    return-object v8

    .line 464
    :catch_22
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/EOFException;
    :try_start_23
    const-string v9, "PMBA"

    const-string v11, "Read empty signature block"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 467
    goto :goto_21

    .line 482
    .end local v0    # "e":Ljava/io/EOFException;
    .restart local v5    # "num":I
    :cond_2c
    const/4 v4, 0x0

    .line 483
    .local v4, "nonHashFound":Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    .local v8, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v5, :cond_49

    .line 485
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 486
    .local v3, "len":I
    new-array v6, v3, [B

    .line 487
    .local v6, "readHash":[B
    invoke-virtual {p0, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 488
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const/16 v9, 0x20

    if-eq v3, v9, :cond_46

    .line 490
    const/4 v4, 0x1

    .line 484
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 494
    .end local v3    # "len":I
    .end local v6    # "readHash":[B
    :cond_49
    if-eqz v4, :cond_21

    .line 495
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    :goto_55
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_70

    .line 498
    new-instance v7, Landroid/content/pm/Signature;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-direct {v7, v9}, Landroid/content/pm/Signature;-><init>([B)V

    .line 499
    .local v7, "s":Landroid/content/pm/Signature;
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_6d} :catch_18

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 501
    .end local v7    # "s":Landroid/content/pm/Signature;
    :cond_70
    move-object v8, v1

    goto :goto_21
.end method

.method private static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .registers 4
    .param p0, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 354
    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 355
    return-void
.end method

.method private static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 454
    .local v0, "buffer":[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 455
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_b

    .line 457
    .end local v0    # "buffer":[B
    :cond_1f
    return-void
.end method

.method private writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V
    .registers 16
    .param p2, "preferredHome"    # Landroid/content/ComponentName;
    .param p3, "homeVersion"    # J
    .param p6, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "J",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local p5, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 610
    .local v4, "outstream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 611
    .local v3, "outbuf":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 616
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_13
    const-string v6, "=state="

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 617
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 620
    if-eqz p2, :cond_30

    .line 621
    const-string v6, "@home@"

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v2, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 624
    invoke-static {v2, p5}, writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 628
    :cond_30
    const-string v6, "@meta@"

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 629
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 630
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 633
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 634
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 635
    iget v6, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_59} :catch_5a
    .catchall {:try_start_13 .. :try_end_59} :catchall_8b

    goto :goto_43

    .line 639
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_5a
    move-exception v0

    .line 640
    .local v0, "e":Ljava/io/IOException;
    :try_start_5b
    const-string v6, "PMBA"

    const-string v7, "Unable to write package manager state file!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_8b

    .line 643
    :try_start_62
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 644
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 645
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6b} :catch_82

    .line 650
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6b
    return-void

    .line 638
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6c
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_5a
    .catchall {:try_start_6c .. :try_end_6f} :catchall_8b

    .line 643
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 644
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 645
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_78} :catch_79

    goto :goto_6b

    .line 646
    :catch_79
    move-exception v0

    .line 647
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "PMBA"

    const-string v7, "Error in buffer close"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 646
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_82
    move-exception v0

    .line 647
    const-string v6, "PMBA"

    const-string v7, "Error in buffer close"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 642
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_8b
    move-exception v6

    .line 643
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 644
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 645
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_95} :catch_96

    .line 648
    :goto_95
    throw v6

    .line 646
    :catch_96
    move-exception v0

    .line 647
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "PMBA"

    const-string v8, "Error in buffer close"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95
.end method


# virtual methods
.method public evaluateStorablePackages()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0}, getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mAllPackages:Ljava/util/List;

    .line 135
    return-void
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 156
    const-string v0, "PMBA"

    const-string/jumbo v1, "getRestoredMetadata() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    .line 160
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    goto :goto_d
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, mRestoredSignatures:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 165
    const-string v0, "PMBA"

    const-string/jumbo v1, "getRestoredPackages() before metadata read!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    .line 174
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, mRestoredSignatures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_d
.end method

.method public hasMetadata()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, mHasMetadata:Z

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 26
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 183
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 184
    .local v15, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 185
    .local v16, "outputBufferStream":Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p1}, parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, mStoredIncrementalVersion:Ljava/lang/String;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, mStoredIncrementalVersion:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 192
    :cond_21
    const-string v3, "PMBA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Previous metadata "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " mismatch vs "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " - rewriting"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, mExisting:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 197
    :cond_56
    const-wide/16 v6, 0x0

    .line 198
    .local v6, "homeVersion":J
    const/4 v8, 0x0

    .line 199
    .local v8, "homeSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x0

    .line 200
    .local v10, "homeInfo":Landroid/content/pm/PackageInfo;
    const/4 v11, 0x0

    .line 201
    .local v11, "homeInstaller":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, getPreferredHomeComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 202
    .local v5, "home":Landroid/content/ComponentName;
    if-eqz v5, :cond_84

    .line 204
    :try_start_61
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x40

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 207
    iget v3, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v3

    .line 208
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_83} :catch_181

    move-result-object v8

    .line 222
    :cond_84
    :goto_84
    :try_start_84
    move-object/from16 v0, p0

    iget-wide v0, v0, mStoredHomeVersion:J

    move-wide/from16 v20, v0

    cmp-long v3, v6, v20

    if-nez v3, :cond_a4

    move-object/from16 v0, p0

    iget-object v3, v0, mStoredHomeComponent:Landroid/content/ComponentName;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    if-eqz v5, :cond_18c

    move-object/from16 v0, p0

    iget-object v3, v0, mStoredHomeSigHashes:Ljava/util/ArrayList;

    invoke-static {v3, v10}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_18c

    :cond_a4
    const/4 v14, 0x1

    .line 226
    .local v14, "needHomeBackup":Z
    :goto_a5
    if-eqz v14, :cond_ce

    .line 230
    if-eqz v5, :cond_193

    .line 231
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 233
    if-eqz v11, :cond_18f

    .end local v11    # "homeInstaller":Ljava/lang/String;
    :goto_b9
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, v16

    invoke-static {v0, v8}, writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 235
    const-string v3, "@home@"

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 250
    :cond_ce
    :goto_ce
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, mExisting:Ljava/util/HashSet;

    const-string v4, "@meta@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19d

    .line 253
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 254
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 255
    const-string v3, "@meta@"

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 264
    :goto_f6
    move-object/from16 v0, p0

    iget-object v3, v0, mAllPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_fe
    :goto_fe
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageInfo;

    .line 265
    .local v18, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 266
    .local v17, "packName":Ljava/lang/String;
    const-string v3, "@meta@"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_117} :catch_178

    move-result v3

    if-nez v3, :cond_fe

    .line 270
    const/4 v13, 0x0

    .line 272
    .local v13, "info":Landroid/content/pm/PackageInfo;
    :try_start_11b
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_126
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11b .. :try_end_126} :catch_1a8
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_126} :catch_178

    move-result-object v13

    .line 281
    :try_start_127
    move-object/from16 v0, p0

    iget-object v3, v0, mExisting:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, mExisting:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 288
    iget v4, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v3, v0, mStateVersions:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    iget v3, v3, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    if-eq v4, v3, :cond_fe

    .line 293
    :cond_14e
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_157

    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-nez v3, :cond_1b4

    .line 295
    :cond_157
    const-string v3, "PMBA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not backing up package "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " since it appears to have no signatures."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_177} :catch_178

    goto :goto_fe

    .line 341
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "needHomeBackup":Z
    .end local v17    # "packName":Ljava/lang/String;
    .end local v18    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_178
    move-exception v2

    .line 343
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PMBA"

    const-string v4, "Unable to write package backup data file!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v2    # "e":Ljava/io/IOException;
    :goto_180
    return-void

    .line 209
    .restart local v11    # "homeInstaller":Ljava/lang/String;
    :catch_181
    move-exception v2

    .line 210
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PMBA"

    const-string v4, "Can\'t access preferred home info"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v5, 0x0

    goto/16 :goto_84

    .line 222
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_18c
    const/4 v14, 0x0

    goto/16 :goto_a5

    .line 233
    .restart local v14    # "needHomeBackup":Z
    :cond_18f
    :try_start_18f
    const-string v11, ""

    goto/16 :goto_b9

    .line 237
    :cond_193
    const-string v3, "@home@"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    goto/16 :goto_ce

    .line 259
    .end local v11    # "homeInstaller":Ljava/lang/String;
    :cond_19d
    move-object/from16 v0, p0

    iget-object v3, v0, mExisting:Ljava/util/HashSet;

    const-string v4, "@meta@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_f6

    .line 274
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "info":Landroid/content/pm/PackageInfo;
    .restart local v17    # "packName":Ljava/lang/String;
    .restart local v18    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_1a8
    move-exception v2

    .line 277
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v3, v0, mExisting:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fe

    .line 309
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1b4
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 310
    iget v3, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 311
    iget-object v3, v13, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 321
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_1d4
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1d4} :catch_178

    goto/16 :goto_fe

    .line 348
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "packName":Ljava/lang/String;
    .end local v18    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v4, v0, mAllPackages:Ljava/util/List;

    move-object/from16 v3, p0

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, writeStateFile(Ljava/util/List;Landroid/content/ComponentName;JLjava/util/ArrayList;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_180
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 24
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v11, "restoredApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v12, "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;>;"
    const/4 v15, -0x1

    .line 367
    .local v15, "storedSystemVersion":I
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v17

    if-eqz v17, :cond_e7

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v6

    .line 374
    .local v6, "dataSize":I
    new-array v9, v6, [B

    .line 375
    .local v9, "inputBytes":[B
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1, v6}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 376
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 377
    .local v7, "inputBuffer":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 379
    .local v8, "inputBufferStream":Ljava/io/DataInputStream;
    const-string v17, "@meta@"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_61

    .line 380
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 382
    .local v14, "storedSdkVersion":I
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v0, v17

    if-le v15, v0, :cond_4a

    .line 384
    const-string v17, "PMBA"

    const-string v18, "Restore set was from a later version of Android; not restoring"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v6    # "dataSize":I
    .end local v7    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v8    # "inputBufferStream":Ljava/io/DataInputStream;
    .end local v9    # "inputBytes":[B
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "storedSdkVersion":I
    :goto_49
    return-void

    .line 387
    .restart local v6    # "dataSize":I
    .restart local v7    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "inputBufferStream":Ljava/io/DataInputStream;
    .restart local v9    # "inputBytes":[B
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v14    # "storedSdkVersion":I
    :cond_4a
    move-object/from16 v0, p0

    iput v14, v0, mStoredSdkVersion:I

    .line 388
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mStoredIncrementalVersion:Ljava/lang/String;

    .line 389
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasMetadata:Z

    goto :goto_b

    .line 396
    .end local v14    # "storedSdkVersion":I
    :cond_61
    const-string v17, "@home@"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_99

    .line 397
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, "cn":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mRestoredHome:Landroid/content/ComponentName;

    .line 399
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mRestoredHomeVersion:J

    .line 400
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mRestoredHomeInstaller:Ljava/lang/String;

    .line 401
    invoke-static {v8}, readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mRestoredHomeSigHashes:Ljava/util/ArrayList;

    goto/16 :goto_b

    .line 410
    .end local v5    # "cn":Ljava/lang/String;
    :cond_99
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 411
    .local v16, "versionCode":I
    invoke-static {v8}, readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object v13

    .line 418
    .local v13, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v13, :cond_a9

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_cb

    .line 419
    :cond_a9
    const-string v17, "PMBA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not restoring package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " since it appears to have no signatures."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 424
    :cond_cb
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 425
    .local v4, "app":Landroid/content/pm/ApplicationInfo;
    iput-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 426
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v17, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;ILjava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 432
    .end local v4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "dataSize":I
    .end local v7    # "inputBuffer":Ljava/io/ByteArrayInputStream;
    .end local v8    # "inputBufferStream":Ljava/io/DataInputStream;
    .end local v9    # "inputBytes":[B
    .end local v10    # "key":Ljava/lang/String;
    .end local v13    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v16    # "versionCode":I
    :cond_e7
    move-object/from16 v0, p0

    iput-object v12, v0, mRestoredSignatures:Ljava/util/HashMap;

    goto/16 :goto_49
.end method
