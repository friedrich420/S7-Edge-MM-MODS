.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final apkHandles:[J

.field final extractNativeLibs:Z

.field private volatile mClosed:Z

.field private final mGuard:Ldalvik/system/CloseGuard;

.field final multiArch:Z


# direct methods
.method constructor <init>([JZZ)V
    .registers 6
    .param p1, "apkHandles"    # [J
    .param p2, "multiArch"    # Z
    .param p3, "extractNativeLibs"    # Z

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, mGuard:Ldalvik/system/CloseGuard;

    .line 119
    iput-object p1, p0, apkHandles:[J

    .line 120
    iput-boolean p2, p0, multiArch:Z

    .line 121
    iput-boolean p3, p0, extractNativeLibs:Z

    .line 122
    iget-object v0, p0, mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static create(Landroid/content/pm/PackageParser$Package;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 7
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, -0x80000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_10
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_20

    :goto_19
    invoke-static {v3, v0, v1}, create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0

    :cond_1e
    move v0, v2

    goto :goto_10

    :cond_20
    move v1, v2

    goto :goto_19
.end method

.method public static create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 4
    .param p0, "lite"    # Landroid/content/pm/PackageParser$PackageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iget-boolean v2, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    invoke-static {v0, v1, v2}, create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 6
    .param p0, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 83
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {v1}, create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_end_8
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v2

    return-object v2

    .line 84
    .end local v1    # "lite":Landroid/content/pm/PackageParser$PackageLite;
    :catch_a
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static create(Ljava/util/List;ZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .registers 13
    .param p1, "multiArch"    # Z
    .param p2, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "codePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 102
    .local v4, "size":I
    new-array v0, v4, [J

    .line 103
    .local v0, "apkHandles":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v4, :cond_44

    .line 104
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .local v3, "path":Ljava/lang/String;
    # invokes: Lcom/android/internal/content/NativeLibraryHelper;->nativeOpenApk(Ljava/lang/String;)J
    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper;->access$000(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v0, v1

    .line 106
    aget-wide v6, v0, v1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_41

    .line 108
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1e
    if-ge v2, v1, :cond_28

    .line 109
    aget-wide v6, v0, v2

    # invokes: Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V
    invoke-static {v6, v7}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 111
    :cond_28
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open APK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    .end local v2    # "j":I
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 115
    .end local v3    # "path":Ljava/lang/String;
    :cond_44
    new-instance v5, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    invoke-direct {v5, v0, p1, p2}, <init>([JZZ)V

    return-object v5
.end method


# virtual methods
.method public close()V
    .registers 7

    .prologue
    .line 127
    iget-object v2, p0, apkHandles:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v4, :cond_e

    aget-wide v0, v2, v3

    .line 128
    .local v0, "apkHandle":J
    # invokes: Lcom/android/internal/content/NativeLibraryHelper;->nativeClose(J)V
    invoke-static {v0, v1}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 130
    .end local v0    # "apkHandle":J
    :cond_e
    iget-object v5, p0, mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v5}, Ldalvik/system/CloseGuard;->close()V

    .line 131
    const/4 v5, 0x1

    iput-boolean v5, p0, mClosed:Z

    .line 132
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 137
    iget-object v0, p0, mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 140
    :cond_9
    :try_start_9
    iget-boolean v0, p0, mClosed:Z

    if-nez v0, :cond_10

    .line 141
    invoke-virtual {p0}, close()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 144
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 146
    return-void

    .line 144
    :catchall_14
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
