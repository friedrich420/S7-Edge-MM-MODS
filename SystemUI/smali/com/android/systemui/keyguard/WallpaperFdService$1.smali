.class Lcom/android/systemui/keyguard/WallpaperFdService$1;
.super Lcom/android/keyguard/effect/IWallpaperFdService$Stub;
.source "WallpaperFdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/WallpaperFdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WallpaperFdService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WallpaperFdService;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/keyguard/WallpaperFdService$1;->this$0:Lcom/android/systemui/keyguard/WallpaperFdService;

    invoke-direct {p0}, Lcom/android/keyguard/effect/IWallpaperFdService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFd(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 43
    .local v1, "fd":Ljava/io/FileDescriptor;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {v3, v4}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 52
    :cond_1
    const-string v3, "WallpaperFdService"

    const-string v4, "valid fd cannot be retrieved"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v3, 0x0

    .line 56
    :goto_1
    return-object v3

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 48
    const-string v3, "WallpaperFdService"

    const-string v4, "IO Exception while IoBridge.open"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-string v3, "WallpaperFdService"

    const-string v4, "return valid pfd"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v3, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_1
.end method
