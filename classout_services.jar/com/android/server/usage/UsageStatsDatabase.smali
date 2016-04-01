.class Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;,
        Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;
    }
.end annotation


# static fields
.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x3

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsDatabase"


# instance fields
.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private mFirstUpdate:Z

.field private final mIntervalDirs:[Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mNewUpdate:Z

.field private final mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "daily"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "weekly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "monthly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "yearly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, mIntervalDirs:[Ljava/io/File;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mVersionFile:Ljava/io/File;

    .line 63
    iget-object v0, p0, mIntervalDirs:[Ljava/io/File;

    array-length v0, v0

    new-array v0, v0, [Landroid/app/usage/TimeSparseArray;

    iput-object v0, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .line 64
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    .line 65
    return-void
.end method

.method private checkVersionAndBuildLocked()V
    .registers 14

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x3

    .line 222
    invoke-direct {p0}, getBuildFingerprint()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "currentFingerprint":Ljava/lang/String;
    iput-boolean v7, p0, mFirstUpdate:Z

    .line 224
    iput-boolean v7, p0, mNewUpdate:Z

    .line 225
    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    iget-object v8, p0, mVersionFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_17} :catch_98
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_9f

    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 226
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 227
    .local v4, "version":I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "buildFingerprint":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 229
    const/4 v8, 0x0

    iput-boolean v8, p0, mFirstUpdate:Z

    .line 231
    :cond_29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 232
    const/4 v8, 0x0

    iput-boolean v8, p0, mNewUpdate:Z
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_32} :catch_a1
    .catchall {:try_start_18 .. :try_end_32} :catchall_e7

    .line 234
    :cond_32
    if-eqz v3, :cond_39

    if-eqz v9, :cond_9b

    :try_start_36
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_93
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_39} :catch_98
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_9f

    .line 238
    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :cond_39
    :goto_39
    if-eq v4, v11, :cond_60

    .line 239
    const-string v7, "UsageStatsDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading from version "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, v4}, doUpgradeLocked(I)V

    .line 243
    :cond_60
    if-ne v4, v11, :cond_66

    iget-boolean v7, p0, mNewUpdate:Z

    if-eqz v7, :cond_92

    .line 244
    :cond_66
    :try_start_66
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    iget-object v8, p0, mVersionFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_72} :catch_bd

    .local v5, "writer":Ljava/io/BufferedWriter;
    const/4 v7, 0x0

    .line 245
    const/4 v8, 0x3

    :try_start_74
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 246
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 248
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_8b} :catch_cf
    .catchall {:try_start_74 .. :try_end_8b} :catchall_e5

    .line 250
    if-eqz v5, :cond_92

    if-eqz v9, :cond_cb

    :try_start_8f
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_b8
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_bd

    .line 255
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_92
    :goto_92
    return-void

    .line 234
    .restart local v0    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_93
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_94
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_39

    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "version":I
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_98
    move-exception v2

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    :goto_99
    const/4 v4, 0x0

    .restart local v4    # "version":I
    goto :goto_39

    .line 234
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buildFingerprint":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_9b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_9e} :catch_98
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_9e} :catch_9f

    goto :goto_39

    .end local v0    # "buildFingerprint":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "version":I
    :catch_9f
    move-exception v2

    goto :goto_99

    .line 225
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_a1
    move-exception v7

    :try_start_a2
    throw v7
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    .line 234
    :catchall_a3
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_a7
    if-eqz v3, :cond_ae

    if-eqz v8, :cond_b4

    :try_start_ab
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ae} :catch_af
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_ae} :catch_98
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_9f

    :cond_ae
    :goto_ae
    :try_start_ae
    throw v7

    :catch_af
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_ae

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_b4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b7} :catch_98
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b7} :catch_9f

    goto :goto_ae

    .line 250
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "version":I
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_b8
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    :try_start_b9
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_92

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_bd
    move-exception v2

    .line 251
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "UsageStatsDatabase"

    const-string v8, "Failed to write new version"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 250
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_cb
    :try_start_cb
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_bd

    goto :goto_92

    .line 244
    :catch_cf
    move-exception v7

    :try_start_d0
    throw v7
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d1

    .line 250
    :catchall_d1
    move-exception v8

    move-object v9, v7

    move-object v7, v8

    :goto_d4
    if-eqz v5, :cond_db

    if-eqz v9, :cond_e1

    :try_start_d8
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_db} :catch_dc
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_bd

    :cond_db
    :goto_db
    :try_start_db
    throw v7

    :catch_dc
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_db

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_e1
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e4} :catch_bd

    goto :goto_db

    :catchall_e5
    move-exception v7

    goto :goto_d4

    .line 234
    .end local v4    # "version":I
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_e7
    move-exception v7

    move-object v8, v9

    goto :goto_a7
.end method

.method private doUpgradeLocked(I)V
    .registers 10
    .param p1, "thisVersion"    # I

    .prologue
    .line 264
    const/4 v6, 0x2

    if-ge p1, v6, :cond_2a

    .line 267
    const-string v6, "UsageStatsDatabase"

    const-string v7, "Deleting all usage stats files"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget-object v6, p0, mIntervalDirs:[Ljava/io/File;

    array-length v6, v6

    if-ge v3, v6, :cond_2a

    .line 269
    iget-object v6, p0, mIntervalDirs:[Ljava/io/File;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 270
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_27

    .line 271
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_27

    aget-object v1, v0, v4

    .line 272
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 268
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 277
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_2a
    return-void
.end method

.method private getBuildFingerprint()Ljava/lang/String;
    .registers 3

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private indexFilesLocked()V
    .registers 13

    .prologue
    .line 173
    new-instance v2, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v2, p0}, Lcom/android/server/usage/UsageStatsDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsDatabase;)V

    .line 181
    .local v2, "backupFileFilter":Ljava/io/FilenameFilter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    iget-object v9, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v9, v9

    if-ge v6, v9, :cond_64

    .line 182
    iget-object v9, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v6

    if-nez v9, :cond_3e

    .line 183
    iget-object v9, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    new-instance v10, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v10}, Landroid/app/usage/TimeSparseArray;-><init>()V

    aput-object v10, v9, v6

    .line 187
    :goto_1a
    iget-object v9, p0, mIntervalDirs:[Ljava/io/File;

    aget-object v9, v9, v6

    invoke-virtual {v9, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 188
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_61

    .line 193
    move-object v1, v5

    .local v1, "arr$":[Ljava/io/File;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_27
    if-ge v7, v8, :cond_61

    aget-object v4, v1, v7

    .line 194
    .local v4, "f":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 196
    .local v0, "af":Landroid/util/AtomicFile;
    :try_start_30
    iget-object v9, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v6

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_46

    .line 193
    :goto_3b
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 185
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_3e
    iget-object v9, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/app/usage/TimeSparseArray;->clear()V

    goto :goto_1a

    .line 197
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "files":[Ljava/io/File;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    :catch_46
    move-exception v3

    .line 198
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "UsageStatsDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to index file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b

    .line 181
    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "f":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_61
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 203
    .end local v5    # "files":[Ljava/io/File;
    :cond_64
    return-void
.end method

.method private static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 16
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "expiryTime"    # J

    .prologue
    .line 517
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 518
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_45

    .line 519
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_9
    if-ge v6, v7, :cond_45

    aget-object v4, v0, v6

    .line 520
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 521
    .local v8, "path":Ljava/lang/String;
    const-string v9, ".bak"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 522
    new-instance v4, Ljava/io/File;

    .end local v4    # "f":Ljava/io/File;
    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".bak"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .restart local v4    # "f":Ljava/io/File;
    :cond_2e
    :try_start_2e
    invoke-static {v4}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_41

    move-result-wide v2

    .line 532
    .local v2, "beginTime":J
    :goto_32
    cmp-long v9, v2, p1

    if-gez v9, :cond_3e

    .line 533
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Landroid/util/AtomicFile;->delete()V

    .line 519
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 528
    .end local v2    # "beginTime":J
    :catch_41
    move-exception v1

    .line 529
    .local v1, "e":Ljava/io/IOException;
    const-wide/16 v2, 0x0

    .restart local v2    # "beginTime":J
    goto :goto_32

    .line 537
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "beginTime":J
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "path":Ljava/lang/String;
    :cond_45
    return-void
.end method


# virtual methods
.method public checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z
    .registers 16
    .param p1, "checkinAction"    # Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 118
    iget-object v12, p0, mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 119
    :try_start_5
    iget-object v9, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    const/4 v13, 0x0

    aget-object v4, v9, v13

    .line 121
    .local v4, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v3

    .line 125
    .local v3, "fileCount":I
    const/4 v6, -0x1

    .line 126
    .local v6, "lastCheckin":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_2e

    .line 127
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v13, "-c"

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 128
    move v6, v5

    .line 126
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 132
    :cond_2e
    add-int/lit8 v7, v6, 0x1

    .line 133
    .local v7, "start":I
    add-int/lit8 v9, v3, -0x1

    if-ne v7, v9, :cond_37

    .line 134
    monitor-exit v12
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_cf

    move v9, v10

    .line 169
    :goto_36
    return v9

    .line 138
    :cond_37
    :try_start_37
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 139
    .local v8, "stats":Lcom/android/server/usage/IntervalStats;
    move v5, v7

    :goto_3d
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_61

    .line 140
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/AtomicFile;

    invoke-static {v9, v8}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 141
    invoke-interface {p1, v8}, Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;->checkin(Lcom/android/server/usage/IntervalStats;)Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_4d} :catch_56
    .catchall {:try_start_37 .. :try_end_4d} :catchall_cf

    move-result v9

    if-nez v9, :cond_53

    .line 142
    :try_start_50
    monitor-exit v12

    move v9, v11

    goto :goto_36

    .line 139
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 145
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_56
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "UsageStatsDatabase"

    const-string v10, "Failed to check-in"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    monitor-exit v12

    move v9, v11

    goto :goto_36

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_61
    move v5, v7

    :goto_62
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_cb

    .line 153
    invoke-virtual {v4, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    .line 154
    .local v2, "file":Landroid/util/AtomicFile;
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "-c"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "checkedInFile":Ljava/io/File;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_c0

    .line 159
    const-string v9, "UsageStatsDatabase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to mark file "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " as checked-in"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v12

    move v9, v10

    goto/16 :goto_36

    .line 166
    :cond_c0
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v9}, Landroid/app/usage/TimeSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 168
    .end local v0    # "checkedInFile":Ljava/io/File;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :cond_cb
    monitor-exit v12

    move v9, v10

    .line 169
    goto/16 :goto_36

    .line 168
    .end local v3    # "fileCount":I
    .end local v4    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v5    # "i":I
    .end local v6    # "lastCheckin":I
    .end local v7    # "start":I
    .end local v8    # "stats":Lcom/android/server/usage/IntervalStats;
    :catchall_cf
    move-exception v9

    monitor-exit v12
    :try_end_d1
    .catchall {:try_start_50 .. :try_end_d1} :catchall_cf

    throw v9
.end method

.method public findBestFitBucket(JJ)I
    .registers 18
    .param p1, "beginTimeStamp"    # J
    .param p3, "endTimeStamp"    # J

    .prologue
    .line 466
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 467
    const/4 v0, -0x1

    .line 468
    .local v0, "bestBucket":I
    const-wide v6, 0x7fffffffffffffffL

    .line 469
    .local v6, "smallestDiff":J
    :try_start_9
    iget-object v8, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_3a

    .line 470
    iget-object v8, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v4

    .line 471
    .local v4, "index":I
    iget-object v8, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    .line 472
    .local v5, "size":I
    if-ltz v4, :cond_37

    if-ge v4, v5, :cond_37

    .line 474
    iget-object v8, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v8, v8, v1

    invoke-virtual {v8, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v10

    sub-long/2addr v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 475
    .local v2, "diff":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_37

    .line 476
    move-wide v6, v2

    .line 477
    move v0, v1

    .line 469
    .end local v2    # "diff":J
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 481
    .end local v4    # "index":I
    .end local v5    # "size":I
    :cond_3a
    monitor-exit v9

    return v0

    .line 482
    .end local v1    # "i":I
    :catchall_3c
    move-exception v8

    monitor-exit v9
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v8
.end method

.method public getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 10
    .param p1, "intervalType"    # I

    .prologue
    const/4 v4, 0x0

    .line 330
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 331
    if-ltz p1, :cond_b

    :try_start_6
    iget-object v6, p0, mIntervalDirs:[Ljava/io/File;

    array-length v6, v6

    if-lt p1, v6, :cond_27

    .line 332
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad interval type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 348
    :catchall_24
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v4

    .line 335
    :cond_27
    :try_start_27
    iget-object v6, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 336
    .local v2, "fileCount":I
    if-nez v2, :cond_34

    .line 337
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_24

    move-object v3, v4

    .line 349
    :goto_33
    return-object v3

    .line 341
    :cond_34
    :try_start_34
    iget-object v6, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v6, p1

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    .line 342
    .local v1, "f":Landroid/util/AtomicFile;
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 343
    .local v3, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_48} :catch_4a
    .catchall {:try_start_34 .. :try_end_48} :catchall_24

    .line 344
    :try_start_48
    monitor-exit v5

    goto :goto_33

    .line 345
    .end local v1    # "f":Landroid/util/AtomicFile;
    .end local v3    # "stats":Lcom/android/server/usage/IntervalStats;
    :catch_4a
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "UsageStatsDatabase"

    const-string v7, "Failed to read usage stats file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_24

    move-object v3, v4

    .line 349
    goto :goto_33
.end method

.method public getLatestUsageStatsBeginTime(I)J
    .registers 7
    .param p1, "intervalType"    # I

    .prologue
    .line 356
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 357
    if-ltz p1, :cond_a

    :try_start_5
    iget-object v1, p0, mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-lt p1, v1, :cond_26

    .line 358
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad interval type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :catchall_23
    move-exception v1

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1

    .line 361
    :cond_26
    :try_start_26
    iget-object v1, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v0

    .line 362
    .local v0, "statsFileCount":I
    if-lez v0, :cond_3c

    .line 363
    iget-object v1, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v2

    monitor-exit v4

    .line 365
    :goto_3b
    return-wide v2

    :cond_3c
    const-wide/16 v2, -0x1

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_23

    goto :goto_3b
.end method

.method public init(J)V
    .registers 16
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 71
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 72
    :try_start_3
    iget-object v0, p0, mIntervalDirs:[Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_7
    if-ge v5, v6, :cond_37

    aget-object v1, v0, v5

    .line 73
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_34

    .line 75
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to create directory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_31
    move-exception v8

    monitor-exit v9
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v8

    .line 72
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 80
    .end local v1    # "f":Ljava/io/File;
    :cond_37
    :try_start_37
    invoke-direct {p0}, checkVersionAndBuildLocked()V

    .line 81
    invoke-direct {p0}, indexFilesLocked()V

    .line 84
    iget-object v0, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .local v0, "arr$":[Landroid/app/usage/TimeSparseArray;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v6, :cond_6a

    aget-object v3, v0, v5

    .line 85
    .local v3, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v3, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v7

    .line 86
    .local v7, "startIndex":I
    if-gez v7, :cond_4e

    .line 84
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 90
    :cond_4e
    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 91
    .local v2, "fileCount":I
    move v4, v7

    .local v4, "i":I
    :goto_53
    if-ge v4, v2, :cond_61

    .line 92
    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 97
    :cond_61
    move v4, v7

    :goto_62
    if-ge v4, v2, :cond_4b

    .line 98
    invoke-virtual {v3, v4}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 101
    .end local v2    # "fileCount":I
    .end local v3    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v4    # "i":I
    .end local v7    # "startIndex":I
    :cond_6a
    monitor-exit v9
    :try_end_6b
    .catchall {:try_start_37 .. :try_end_6b} :catchall_31

    .line 102
    return-void
.end method

.method isFirstUpdate()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, mFirstUpdate:Z

    return v0
.end method

.method isNewUpdate()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, mNewUpdate:Z

    return v0
.end method

.method public onTimeChanged(J)V
    .registers 24
    .param p1, "timeDiffMillis"    # J

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 281
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v11, "logBuilder":Ljava/lang/StringBuilder;
    const-string v16, "Time changed by "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 284
    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v6, 0x0

    .line 287
    .local v6, "filesDeleted":I
    const/4 v7, 0x0

    .line 289
    .local v7, "filesMoved":I
    move-object/from16 v0, p0

    iget-object v2, v0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    .local v2, "arr$":[Landroid/app/usage/TimeSparseArray;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_27
    if-ge v9, v10, :cond_a8

    aget-object v5, v2, v9

    .line 290
    .local v5, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    .line 291
    .local v4, "fileCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_30
    if-ge v8, v4, :cond_a2

    .line 292
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    .line 293
    .local v3, "file":Landroid/util/AtomicFile;
    invoke-virtual {v5, v8}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v18

    add-long v14, v18, p1

    .line 294
    .local v14, "newTime":J
    const-wide/16 v18, 0x0

    cmp-long v16, v14, v18

    if-gez v16, :cond_4c

    .line 295
    add-int/lit8 v6, v6, 0x1

    .line 296
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_9f

    .line 291
    :goto_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 299
    :cond_4c
    :try_start_4c
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_d4
    .catchall {:try_start_4c .. :try_end_53} :catchall_9f

    .line 304
    :goto_53
    :try_start_53
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, "newName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v18, "-c"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_84

    .line 306
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "-c"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 309
    :cond_84
    new-instance v12, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 310
    .local v12, "newFile":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    .line 311
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_49

    .line 323
    .end local v2    # "arr$":[Landroid/app/usage/TimeSparseArray;
    .end local v3    # "file":Landroid/util/AtomicFile;
    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v6    # "filesDeleted":I
    .end local v7    # "filesMoved":I
    .end local v8    # "i":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "logBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "newFile":Ljava/io/File;
    .end local v13    # "newName":Ljava/lang/String;
    .end local v14    # "newTime":J
    :catchall_9f
    move-exception v16

    monitor-exit v17
    :try_end_a1
    .catchall {:try_start_53 .. :try_end_a1} :catchall_9f

    throw v16

    .line 314
    .restart local v2    # "arr$":[Landroid/app/usage/TimeSparseArray;
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v6    # "filesDeleted":I
    .restart local v7    # "filesMoved":I
    .restart local v8    # "i":I
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v11    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_a2
    :try_start_a2
    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 289
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    .line 317
    .end local v4    # "fileCount":I
    .end local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .end local v8    # "i":I
    :cond_a8
    const-string v16, " files deleted: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    const-string v16, " files moved: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    const-string v16, "UsageStatsDatabase"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct/range {p0 .. p0}, indexFilesLocked()V

    .line 323
    monitor-exit v17
    :try_end_d3
    .catchall {:try_start_a2 .. :try_end_d3} :catchall_9f

    .line 324
    return-void

    .line 300
    .restart local v3    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "fileCount":I
    .restart local v5    # "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    .restart local v8    # "i":I
    .restart local v14    # "newTime":J
    :catch_d4
    move-exception v16

    goto/16 :goto_53
.end method

.method public prune(J)V
    .registers 8
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 489
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_3
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 491
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addYears(I)V

    .line 492
    iget-object v0, p0, mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    iget-object v2, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, pruneFilesOlderThan(Ljava/io/File;J)V

    .line 495
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 496
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x6

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addMonths(I)V

    .line 497
    iget-object v0, p0, mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-object v2, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, pruneFilesOlderThan(Ljava/io/File;J)V

    .line 500
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 501
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x4

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addWeeks(I)V

    .line 502
    iget-object v0, p0, mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, pruneFilesOlderThan(Ljava/io/File;J)V

    .line 505
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 506
    iget-object v0, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, -0x7

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 507
    iget-object v0, p0, mIntervalDirs:[Ljava/io/File;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v2, p0, mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, pruneFilesOlderThan(Ljava/io/File;J)V

    .line 512
    invoke-direct {p0}, indexFilesLocked()V

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 9
    .param p1, "intervalType"    # I
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 544
    if-ltz p1, :cond_a

    :try_start_5
    iget-object v1, p0, mIntervalDirs:[Ljava/io/File;

    array-length v1, v1

    if-lt p1, v1, :cond_26

    .line 545
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad interval type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1

    .line 548
    :cond_26
    :try_start_26
    iget-object v1, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    .line 549
    .local v0, "f":Landroid/util/AtomicFile;
    if-nez v0, :cond_51

    .line 550
    new-instance v0, Landroid/util/AtomicFile;

    .end local v0    # "f":Landroid/util/AtomicFile;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 552
    .restart local v0    # "f":Landroid/util/AtomicFile;
    iget-object v1, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v1, v1, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 555
    :cond_51
    invoke-static {v0, p2}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 556
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 557
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_23

    .line 558
    return-void
.end method

.method public queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 21
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    iget-object v11, p0, mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 395
    if-ltz p1, :cond_a

    :try_start_5
    iget-object v10, p0, mIntervalDirs:[Ljava/io/File;

    array-length v10, v10

    if-lt p1, v10, :cond_26

    .line 396
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad interval type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 457
    :catchall_23
    move-exception v10

    monitor-exit v11
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v10

    .line 399
    :cond_26
    :try_start_26
    iget-object v10, p0, mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v6, v10, p1

    .line 401
    .local v6, "intervalStats":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    cmp-long v10, p4, p2

    if-gtz v10, :cond_31

    .line 405
    const/4 v7, 0x0

    monitor-exit v11

    .line 456
    :goto_30
    return-object v7

    .line 408
    :cond_31
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v8

    .line 409
    .local v8, "startIndex":I
    if-gez v8, :cond_3a

    .line 412
    const/4 v8, 0x0

    .line 415
    :cond_3a
    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v3

    .line 416
    .local v3, "endIndex":I
    if-gez v3, :cond_45

    .line 421
    const/4 v7, 0x0

    monitor-exit v11

    goto :goto_30

    .line 424
    :cond_45
    invoke-virtual {v6, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v12

    cmp-long v10, v12, p4

    if-nez v10, :cond_54

    .line 426
    add-int/lit8 v3, v3, -0x1

    .line 427
    if-gez v3, :cond_54

    .line 432
    const/4 v7, 0x0

    monitor-exit v11

    goto :goto_30

    .line 436
    :cond_54
    new-instance v9, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v9}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 437
    .local v9, "stats":Lcom/android/server/usage/IntervalStats;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move v5, v8

    .local v5, "i":I
    :goto_5f
    if-gt v5, v3, :cond_82

    .line 439
    invoke-virtual {v6, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;
    :try_end_67
    .catchall {:try_start_26 .. :try_end_67} :catchall_23

    .line 446
    .local v4, "f":Landroid/util/AtomicFile;
    :try_start_67
    invoke-static {v4, v9}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 447
    iget-wide v12, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v10, p2, v12

    if-gez v10, :cond_76

    .line 448
    const/4 v10, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v9, v10, v7}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_76} :catch_79
    .catchall {:try_start_67 .. :try_end_76} :catchall_23

    .line 438
    :cond_76
    :goto_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 450
    :catch_79
    move-exception v2

    .line 451
    .local v2, "e":Ljava/io/IOException;
    :try_start_7a
    const-string v10, "UsageStatsDatabase"

    const-string v12, "Failed to read usage stats file"

    invoke-static {v10, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "f":Landroid/util/AtomicFile;
    :cond_82
    monitor-exit v11
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_23

    goto :goto_30
.end method
