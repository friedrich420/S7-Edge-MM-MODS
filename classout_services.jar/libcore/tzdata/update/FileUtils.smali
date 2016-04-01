.class public final Llibcore/tzdata/update/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static calculateChecksum(Ljava/io/File;)J
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/16 v0, 0x2004

    .line 110
    .local v0, "BUFFER_SIZE":I
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 111
    .local v3, "crc32":Ljava/util/zip/CRC32;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 112
    const/16 v6, 0x2004

    :try_start_f
    new-array v1, v6, [B

    .line 114
    .local v1, "buffer":[B
    :goto_11
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2b

    .line 115
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_1d
    .catchall {:try_start_f .. :try_end_1c} :catchall_49

    goto :goto_11

    .line 111
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_1d
    move-exception v6

    :try_start_1e
    throw v6
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    .line 117
    :catchall_1f
    move-exception v7

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    :goto_23
    if-eqz v4, :cond_2a

    if-eqz v7, :cond_45

    :try_start_27
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_40

    :cond_2a
    :goto_2a
    throw v6

    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    :cond_2b
    if-eqz v4, :cond_32

    if-eqz v7, :cond_3c

    :try_start_2f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_37

    .line 118
    :cond_32
    :goto_32
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    return-wide v6

    .line 117
    :catch_37
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_32

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_3c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_32

    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    :catch_40
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2a

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_45
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_2a

    :catchall_49
    move-exception v6

    goto :goto_23
.end method

.method public static createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "parentDir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 49
    .local v0, "subFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 50
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must exist beneath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Canonicalized subpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_3e
    return-object v0
.end method

.method public static deleteRecursive(Ljava/io/File;)V
    .registers 9
    .param p0, "toDelete"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_c
    if-ge v2, v3, :cond_26

    aget-object v1, v0, v2

    .line 153
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {v1}, isSymlink(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 156
    invoke-static {v1}, deleteRecursive(Ljava/io/File;)V

    .line 152
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 159
    :cond_22
    invoke-static {v1}, doDelete(Ljava/io/File;)V

    goto :goto_1f

    .line 162
    .end local v1    # "file":Ljava/io/File;
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "remainingFiles":[Ljava/lang/String;
    array-length v5, v4

    if-eqz v5, :cond_4a

    .line 164
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to delete files: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "remainingFiles":[Ljava/lang/String;
    :cond_4a
    invoke-static {p0}, doDelete(Ljava/io/File;)V

    .line 169
    return-void
.end method

.method public static doDelete(Ljava/io/File;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 139
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1f
    return-void
.end method

.method public static ensureDirectoriesExist(Ljava/io/File;Z)V
    .registers 9
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 69
    .local v2, "dirs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    move-object v0, p0

    .line 71
    .local v0, "currentDir":Ljava/io/File;
    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 73
    if-nez v0, :cond_6

    .line 75
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 76
    .local v1, "dirToCheck":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_44

    .line 78
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_44
    if-eqz p1, :cond_13

    .line 81
    invoke-static {v1}, makeDirectoryWorldAccessible(Ljava/io/File;)V

    goto :goto_13

    .line 83
    :cond_4a
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_13

    .line 84
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists but is not a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    .end local v1    # "dirToCheck":Ljava/io/File;
    :cond_69
    return-void
.end method

.method public static ensureFileDoesNotExist(Ljava/io/File;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_25

    .line 131
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_25
    invoke-static {p0}, doDelete(Ljava/io/File;)V

    .line 135
    :cond_28
    return-void
.end method

.method public static varargs filesExist(Ljava/io/File;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "rootDir"    # Ljava/io/File;
    .param p1, "fileNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_17

    aget-object v2, v0, v3

    .line 173
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14

    .line 175
    const/4 v5, 0x0

    .line 178
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :goto_13
    return v5

    .line 172
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 178
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_17
    const/4 v5, 0x1

    goto :goto_13
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "baseName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "canonicalPathExceptBaseName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v2, 0x1

    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static makeDirectoryWorldAccessible(Ljava/io/File;)V
    .registers 4
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 91
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1f
    invoke-static {p0}, makeWorldReadable(Ljava/io/File;)V

    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_49

    .line 95
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to make "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " world-executable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_49
    return-void
.end method

.method public static makeWorldReadable(Ljava/io/File;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-nez v0, :cond_27

    .line 101
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to make "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " world-readable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_27
    return-void
.end method

.method public static readLines(Ljava/io/File;)Ljava/util/List;
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 186
    .local v1, "in":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "fileReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 189
    :try_start_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v3, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 192
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_20} :catch_21
    .catchall {:try_start_12 .. :try_end_20} :catchall_49

    goto :goto_17

    .line 186
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_21
    move-exception v5

    :try_start_22
    throw v5
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    .line 195
    :catchall_23
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    :goto_27
    if-eqz v0, :cond_2e

    if-eqz v6, :cond_45

    :try_start_2b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_40

    :cond_2e
    :goto_2e
    throw v5

    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    if-eqz v0, :cond_36

    if-eqz v6, :cond_3c

    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-object v3

    :catch_37
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_36

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_36

    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_40
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2e

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_2e

    :catchall_49
    move-exception v5

    goto :goto_27
.end method

.method public static rename(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {p1}, ensureFileDoesNotExist(Ljava/io/File;)V

    .line 123
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 124
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to rename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2c
    return-void
.end method
