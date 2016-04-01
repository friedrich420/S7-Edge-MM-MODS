.class public final Llibcore/tzdata/update/TzDataBundleInstaller;
.super Ljava/lang/Object;
.source "TzDataBundleInstaller.java"


# static fields
.field static final CURRENT_TZ_DATA_DIR_NAME:Ljava/lang/String; = "current"

.field static final OLD_TZ_DATA_DIR_NAME:Ljava/lang/String; = "old"

.field static final WORKING_DIR_NAME:Ljava/lang/String; = "working"


# instance fields
.field private final installDir:Ljava/io/File;

.field private final logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3
    .param p1, "logTag"    # Ljava/lang/String;
    .param p2, "installDir"    # Ljava/io/File;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, logTag:Ljava/lang/String;

    .line 38
    iput-object p2, p0, installDir:Ljava/io/File;

    .line 39
    return-void
.end method

.method private checkBundleFilesExist(Ljava/io/File;)Z
    .registers 5
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, logTag:Ljava/lang/String;

    const-string v1, "Verifying bundle contents"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tzdata_version"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "checksums"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "tzdata"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "icu/icu_tzdata.dat"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Llibcore/tzdata/update/FileUtils;->filesExist(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deleteBestEffort(Ljava/io/File;)V
    .registers 6
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 86
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    :try_start_6
    invoke-static {p1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a

    .line 94
    :cond_9
    :goto_9
    return-void

    .line 89
    :catch_a
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private unpackBundle([BLjava/io/File;)Ljava/io/File;
    .registers 7
    .param p1, "content"    # [B
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unpacking update content to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Llibcore/tzdata/update/ConfigBundle;

    invoke-direct {v0, p1}, Llibcore/tzdata/update/ConfigBundle;-><init>([B)V

    .line 99
    .local v0, "bundle":Llibcore/tzdata/update/ConfigBundle;
    invoke-virtual {v0, p2}, Llibcore/tzdata/update/ConfigBundle;->extractTo(Ljava/io/File;)V

    .line 100
    return-object p2
.end method

.method private verifySystemChecksums(Ljava/io/File;)Z
    .registers 16
    .param p1, "unpackedContentDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v11, p0, logTag:Ljava/lang/String;

    const-string v12, "Verifying system file checksums"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v2, Ljava/io/File;

    const-string v11, "checksums"

    invoke-direct {v2, p1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v2, "checksumsFile":Ljava/io/File;
    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->readLines(Ljava/io/File;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 116
    .local v10, "line":Ljava/lang/String;
    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 117
    .local v3, "delimiterPos":I
    if-lez v3, :cond_32

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v3, v11, :cond_4b

    .line 118
    :cond_32
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad checksum entry: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 122
    :cond_4b
    const/4 v11, 0x0

    :try_start_4c
    invoke-virtual {v10, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_53} :catch_85

    move-result-wide v6

    .line 126
    .local v6, "expectedChecksum":J
    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_9f

    .line 129
    iget-object v11, p0, logTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed checksum test for file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": file not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v11, 0x0

    .line 139
    .end local v3    # "delimiterPos":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "expectedChecksum":J
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    :goto_84
    return v11

    .line 123
    .restart local v3    # "delimiterPos":I
    .restart local v10    # "line":Ljava/lang/String;
    :catch_85
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid checksum value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 132
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "expectedChecksum":J
    .restart local v8    # "filePath":Ljava/lang/String;
    :cond_9f
    invoke-static {v5}, Llibcore/tzdata/update/FileUtils;->calculateChecksum(Ljava/io/File;)J

    move-result-wide v0

    .line 133
    .local v0, "actualChecksum":J
    cmp-long v11, v0, v6

    if-eqz v11, :cond_16

    .line 134
    iget-object v11, p0, logTag:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed checksum test for file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": required="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actual="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v11, 0x0

    goto :goto_84

    .line 139
    .end local v0    # "actualChecksum":J
    .end local v3    # "delimiterPos":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "expectedChecksum":J
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v10    # "line":Ljava/lang/String;
    :cond_d5
    const/4 v11, 0x1

    goto :goto_84
.end method


# virtual methods
.method public install([B)Z
    .registers 9
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, installDir:Ljava/io/File;

    const-string/jumbo v6, "old"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v1, "oldTzDataDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 51
    invoke-static {v1}, Llibcore/tzdata/update/FileUtils;->deleteRecursive(Ljava/io/File;)V

    .line 54
    :cond_14
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, installDir:Ljava/io/File;

    const-string/jumbo v6, "current"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, "currentTzDataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, installDir:Ljava/io/File;

    const-string/jumbo v6, "working"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v3, "workingDir":Ljava/io/File;
    iget-object v5, p0, logTag:Ljava/lang/String;

    const-string v6, "Applying time zone update"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0, p1, v3}, unpackBundle([BLjava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 60
    .local v2, "unpackedContentDir":Ljava/io/File;
    :try_start_33
    invoke-direct {p0, v2}, checkBundleFilesExist(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 61
    iget-object v5, p0, logTag:Ljava/lang/String;

    const-string v6, "Update not applied: Bundle is missing files"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_d5

    .line 80
    invoke-direct {p0, v1}, deleteBestEffort(Ljava/io/File;)V

    .line 81
    invoke-direct {p0, v2}, deleteBestEffort(Ljava/io/File;)V

    :goto_46
    return v4

    .line 65
    :cond_47
    :try_start_47
    invoke-direct {p0, v2}, verifySystemChecksums(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 66
    invoke-static {v2}, Llibcore/tzdata/update/FileUtils;->makeDirectoryWorldAccessible(Ljava/io/File;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 69
    iget-object v4, p0, logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v0, v1}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 72
    :cond_7b
    iget-object v4, p0, logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v2, v0}, Llibcore/tzdata/update/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 74
    iget-object v4, p0, logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update applied: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " successfully created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_47 .. :try_end_be} :catchall_d5

    .line 75
    const/4 v4, 0x1

    .line 80
    invoke-direct {p0, v1}, deleteBestEffort(Ljava/io/File;)V

    .line 81
    invoke-direct {p0, v2}, deleteBestEffort(Ljava/io/File;)V

    goto :goto_46

    .line 77
    :cond_c6
    :try_start_c6
    iget-object v5, p0, logTag:Ljava/lang/String;

    const-string v6, "Update not applied: System checksum did not match"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d5

    .line 80
    invoke-direct {p0, v1}, deleteBestEffort(Ljava/io/File;)V

    .line 81
    invoke-direct {p0, v2}, deleteBestEffort(Ljava/io/File;)V

    goto/16 :goto_46

    .line 80
    :catchall_d5
    move-exception v4

    invoke-direct {p0, v1}, deleteBestEffort(Ljava/io/File;)V

    .line 81
    invoke-direct {p0, v2}, deleteBestEffort(Ljava/io/File;)V

    throw v4
.end method
