.class public Lcom/android/server/updates/SELinuxPolicyInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SELinuxPolicyInstallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SELinuxPolicyInstallReceiver"

.field private static final fileContextsPath:Ljava/lang/String; = "file_contexts"

.field private static final macPermissionsPath:Ljava/lang/String; = "mac_permissions.xml"

.field private static final propertyContextsPath:Ljava/lang/String; = "property_contexts"

.field private static final seappContextsPath:Ljava/lang/String; = "seapp_contexts"

.field private static final sepolicyPath:Ljava/lang/String; = "sepolicy"

.field private static final serviceContextsPath:Ljava/lang/String; = "service_contexts"

.field private static final versionPath:Ljava/lang/String; = "sepolicy_version"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 49
    const-string v0, "/data/security/bundle"

    const-string/jumbo v1, "sepolicy_bundle"

    const-string/jumbo v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private applyUpdate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v4, "SELinuxPolicyInstallReceiver"

    const-string v5, "Applying SELinux policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string v5, "backup"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v0, "backup":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "current"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v1, "current":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, updateDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "tmp"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v3, "tmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 111
    invoke-direct {p0, v0}, deleteRecursive(Ljava/io/File;)V

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_44
    :try_start_44
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v4, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/system/ErrnoException; {:try_start_44 .. :try_end_57} :catch_58

    .line 123
    :cond_57
    :goto_57
    return-void

    .line 117
    :catch_58
    move-exception v2

    .line 118
    .local v2, "e":Landroid/system/ErrnoException;
    const-string v4, "SELinuxPolicyInstallReceiver"

    const-string v5, "Could not update selinux policy: "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57
.end method

.method private deleteRecursive(Ljava/io/File;)V
    .registers 7
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_c
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    .line 82
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, deleteRecursive(Ljava/io/File;)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 83
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 84
    return-void
.end method

.method private installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    .registers 7
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "stream"    # Ljava/io/BufferedInputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 74
    new-array v0, p3, [B

    .line 75
    .local v0, "chunk":[B
    invoke-virtual {p2, v0, v2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 76
    iget-object v1, p0, updateDir:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 77
    return-void
.end method

.method private readChunkLengths(Ljava/io/BufferedInputStream;)[I
    .registers 5
    .param p1, "bundle"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x7

    new-array v0, v1, [I

    .line 62
    .local v0, "chunks":[I
    const/4 v1, 0x0

    invoke-direct {p0, p1}, readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    .line 63
    const/4 v1, 0x1

    invoke-direct {p0, p1}, readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    .line 64
    const/4 v1, 0x2

    invoke-direct {p0, p1}, readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    .line 65
    const/4 v1, 0x3

    invoke-direct {p0, p1}, readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x4

    invoke-direct {p0, p1}, readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    .line 67
    const/4 v1, 0x5

    invoke-direct {p0, p1}, readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    .line 68
    const/4 v1, 0x6

    invoke-direct {p0, p1}, readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    .line 69
    return-object v0
.end method

.method private readInt(Ljava/io/BufferedInputStream;)I
    .registers 6
    .param p1, "reader"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_10

    .line 55
    shl-int/lit8 v2, v1, 0x8

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    or-int v1, v2, v3

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 57
    :cond_10
    return v1
.end method

.method private unpackBundle()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, updateContent:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    .local v1, "stream":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, updateDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v2, "tmp":Ljava/io/File;
    :try_start_1a
    invoke-direct {p0, v1}, readChunkLengths(Ljava/io/BufferedInputStream;)[I

    move-result-object v0

    .line 91
    .local v0, "chunkLengths":[I
    invoke-direct {p0, v2}, deleteRecursive(Ljava/io/File;)V

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 93
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sepolicy_version"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 94
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "mac_permissions.xml"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 95
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "seapp_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 96
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "property_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 97
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "file_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x4

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 98
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "sepolicy"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    .line 99
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "service_contexts"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-direct {p0, v3, v1, v4}, installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    :try_end_86
    .catchall {:try_start_1a .. :try_end_86} :catchall_8a

    .line 101
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 103
    return-void

    .line 101
    .end local v0    # "chunkLengths":[I
    :catchall_8a
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    :try_start_0
    invoke-direct {p0}, unpackBundle()V

    .line 129
    invoke-direct {p0}, applyUpdate()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_10
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_19

    .line 137
    :goto_6
    return-void

    .line 130
    :catch_7
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SELinuxPolicyInstallReceiver"

    const-string v2, "SELinux policy update malformed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SELinuxPolicyInstallReceiver"

    const-string v2, "Could not update selinux policy: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v0

    .line 135
    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "SELinuxPolicyInstallReceiver"

    const-string v2, "Could not update selinux policy: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method
