.class Lcom/android/server/pm/PackageManagerService$OriginInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OriginInfo"
.end annotation


# instance fields
.field final cid:Ljava/lang/String;

.field final existing:Z

.field final file:Ljava/io/File;

.field final resolvedFile:Ljava/io/File;

.field final resolvedPath:Ljava/lang/String;

.field final staged:Z


# direct methods
.method private constructor <init>(Ljava/io/File;Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "staged"    # Z
    .param p4, "existing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 15802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15803
    iput-object p1, p0, file:Ljava/io/File;

    .line 15804
    iput-object p2, p0, cid:Ljava/lang/String;

    .line 15805
    iput-boolean p3, p0, staged:Z

    .line 15806
    iput-boolean p4, p0, existing:Z

    .line 15808
    if-eqz p2, :cond_1e

    .line 15809
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, resolvedPath:Ljava/lang/String;

    .line 15810
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, resolvedPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, resolvedFile:Ljava/io/File;

    .line 15818
    :goto_1d
    return-void

    .line 15811
    :cond_1e
    if-eqz p1, :cond_29

    .line 15812
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, resolvedPath:Ljava/lang/String;

    .line 15813
    iput-object p1, p0, resolvedFile:Ljava/io/File;

    goto :goto_1d

    .line 15815
    :cond_29
    iput-object v0, p0, resolvedPath:Ljava/lang/String;

    .line 15816
    iput-object v0, p0, resolvedFile:Ljava/io/File;

    goto :goto_1d
.end method

.method static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 15791
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, <init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15783
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-direct {v0, v2, v2, v1, v1}, <init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 5
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 15799
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, <init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 15795
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, <init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static fromUntrustedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 15787
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, <init>(Ljava/io/File;Ljava/lang/String;ZZ)V

    return-object v0
.end method
