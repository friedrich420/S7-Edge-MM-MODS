.class public final Llibcore/tzdata/update/ConfigBundle;
.super Ljava/lang/Object;
.source "ConfigBundle.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final CHECKSUMS_FILE_NAME:Ljava/lang/String; = "checksums"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field public static final TZ_DATA_VERSION_FILE_NAME:Ljava/lang/String; = "tzdata_version"

.field public static final ZONEINFO_FILE_NAME:Ljava/lang/String; = "tzdata"


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, bytes:[B

    .line 51
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 15
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 66
    invoke-static {p1, p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 68
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v7, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v8, 0x2000

    :try_start_b
    new-array v0, v8, [B

    .line 71
    .local v0, "buffer":[B
    :cond_d
    :goto_d
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_8b

    .line 74
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "name":Ljava/lang/String;
    invoke-static {p1, v5}, Llibcore/tzdata/update/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 79
    .local v3, "entryFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 80
    invoke-static {v3, p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_24} :catch_25
    .catchall {:try_start_b .. :try_end_24} :catchall_63

    goto :goto_d

    .line 68
    .end local v0    # "buffer":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryFile":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    :catch_25
    move-exception v8

    :try_start_26
    throw v8
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 102
    :catchall_27
    move-exception v9

    move-object v10, v8

    move-object v8, v9

    :goto_2a
    if-eqz v7, :cond_31

    if-eqz v10, :cond_a1

    :try_start_2e
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_9c

    :cond_31
    :goto_31
    throw v8

    .line 83
    .restart local v0    # "buffer":[B
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryFile":Ljava/io/File;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_43

    .line 84
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8, p2}, Llibcore/tzdata/update/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 88
    :cond_43
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_48} :catch_25
    .catchall {:try_start_32 .. :try_end_48} :catchall_63

    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 90
    :goto_49
    :try_start_49
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_65

    .line 91
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_54} :catch_55
    .catchall {:try_start_49 .. :try_end_54} :catchall_a5

    goto :goto_49

    .line 88
    .end local v1    # "count":I
    :catch_55
    move-exception v8

    :try_start_56
    throw v8
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 95
    :catchall_57
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_5b
    if-eqz v4, :cond_62

    if-eqz v9, :cond_87

    :try_start_5f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_82
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    :cond_62
    :goto_62
    :try_start_62
    throw v8
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_63} :catch_25
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    .line 102
    .end local v0    # "buffer":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    :catchall_63
    move-exception v8

    goto :goto_2a

    .line 94
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_65
    :try_start_65
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6c} :catch_55
    .catchall {:try_start_65 .. :try_end_6c} :catchall_a5

    .line 95
    if-eqz v4, :cond_73

    if-eqz v10, :cond_7e

    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_79
    .catchall {:try_start_70 .. :try_end_73} :catchall_63

    .line 97
    :cond_73
    :goto_73
    if-eqz p2, :cond_d

    .line 98
    :try_start_75
    invoke-static {v3}, Llibcore/tzdata/update/FileUtils;->makeWorldReadable(Ljava/io/File;)V

    goto :goto_d

    .line 95
    :catch_79
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_73

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_7e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_73

    .end local v1    # "count":I
    :catch_82
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_62

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_87
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_8a} :catch_25
    .catchall {:try_start_75 .. :try_end_8a} :catchall_63

    goto :goto_62

    .line 102
    .end local v3    # "entryFile":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "name":Ljava/lang/String;
    :cond_8b
    if-eqz v7, :cond_92

    if-eqz v10, :cond_98

    :try_start_8f
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_93

    .line 103
    :cond_92
    :goto_92
    return-void

    .line 102
    :catch_93
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_92

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_98
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_92

    .end local v0    # "buffer":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :catch_9c
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_31

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_a1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    goto :goto_31

    .line 95
    .restart local v0    # "buffer":[B
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entryFile":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "name":Ljava/lang/String;
    :catchall_a5
    move-exception v8

    move-object v9, v10

    goto :goto_5b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_5

    .line 120
    :cond_4
    :goto_4
    return v1

    .line 110
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 111
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 114
    check-cast v0, Llibcore/tzdata/update/ConfigBundle;

    .line 116
    .local v0, "that":Llibcore/tzdata/update/ConfigBundle;
    iget-object v3, p0, bytes:[B

    iget-object v4, v0, bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 117
    goto :goto_4
.end method

.method public extractTo(Ljava/io/File;)V
    .registers 4
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    .line 59
    return-void
.end method

.method public getBundleBytes()[B
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, bytes:[B

    return-object v0
.end method
