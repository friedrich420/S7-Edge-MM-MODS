.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperFile_2:Ljava/io/File;

.field final mWallpaperInfoFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field wallpaperFileStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 208
    iput-object p1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 209
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x688

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, wallpaperFileStream:Ljava/io/InputStream;

    .line 211
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, mWallpaperDir:Ljava/io/File;

    .line 212
    iput-object p2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 213
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mWallpaperFile:Ljava/io/File;

    .line 214
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mWallpaperInfoFile:Ljava/io/File;

    .line 215
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mWallpaperDir:Ljava/io/File;

    const-string/jumbo v2, "wallpaper2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mWallpaperFile_2:Ljava/io/File;

    .line 216
    return-void
.end method

.method private isAstcByteArray([B)Z
    .registers 8
    .param p1, "inputBytes"    # [B

    .prologue
    const/4 v5, 0x4

    .line 283
    const/4 v2, 0x1

    .line 285
    .local v2, "isAstc":Z
    new-array v0, v5, [B

    fill-array-data v0, :array_1c

    .line 287
    .local v0, "astcHeader":[B
    if-eqz p1, :cond_1a

    array-length v3, p1

    if-le v3, v5, :cond_1a

    .line 288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v5, :cond_16

    .line 289
    aget-byte v3, p1, v1

    aget-byte v4, v0, v1

    if-eq v3, v4, :cond_17

    .line 290
    const/4 v2, 0x0

    .line 298
    .end local v1    # "i":I
    :cond_16
    :goto_16
    return v2

    .line 288
    .restart local v1    # "i":I
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 296
    .end local v1    # "i":I
    :cond_1a
    const/4 v2, 0x0

    goto :goto_16

    .line 285
    :array_1c
    .array-data 1
        0x13t
        -0x55t
        -0x5ft
        0x5ct
    .end array-data
.end method

.method private isAstcWallpaper(Ljava/io/File;)Z
    .registers 8
    .param p1, "wallpaperFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 256
    const/16 v3, 0xa

    new-array v1, v3, [B

    .line 259
    .local v1, "streamBuffer":[B
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 261
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SRIB_MCT_COMpression Wallpaper file exist & path is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_27
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, wallpaperFileStream:Ljava/io/InputStream;

    .line 264
    iget-object v3, p0, wallpaperFileStream:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 265
    iget-object v3, p0, wallpaperFileStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_38} :catch_47

    .line 270
    :goto_38
    invoke-direct {p0, v1}, isAstcByteArray([B)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 271
    const-string v2, "WallpaperManagerService"

    const-string v3, " WALLPAPER TC SRIB_MCT_IMAGE_COMPRESSION  Wallpaper is already compressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x1

    .line 279
    :cond_46
    :goto_46
    return v2

    .line 267
    :catch_47
    move-exception v0

    .line 268
    .local v0, "io":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 277
    .end local v0    # "io":Ljava/io/IOException;
    :cond_4c
    const-string v3, "WallpaperManagerService"

    const-string v4, "Wallpaper doesn\'t exist "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 15
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v10, 0x0

    .line 220
    if-nez p2, :cond_7

    .line 251
    :goto_6
    return-void

    .line 223
    :cond_7
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 224
    :try_start_c
    new-instance v7, Ljava/io/File;

    iget-object v1, p0, mWallpaperDir:Ljava/io/File;

    invoke-direct {v7, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v7, "changedFile":Ljava/io/File;
    iget-object v1, p0, mWallpaperFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, mWallpaperFile_2:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, mWallpaperInfoFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 228
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 229
    .local v8, "origId":J
    new-instance v6, Landroid/app/backup/BackupManager;

    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 230
    .local v6, "bm":Landroid/app/backup/BackupManager;
    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 231
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    .end local v6    # "bm":Landroid/app/backup/BackupManager;
    .end local v8    # "origId":J
    :cond_3e
    iget-object v1, p0, mWallpaperFile:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, mWallpaperFile_2:Ljava/io/File;

    invoke-virtual {v1, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 234
    :cond_4e
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 235
    if-eq p1, v3, :cond_5b

    const/16 v1, 0x80

    if-ne p1, v1, :cond_5c

    :cond_5b
    move v10, v0

    .line 236
    .local v10, "written":Z
    :cond_5c
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_72

    if-ne p1, v3, :cond_72

    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-nez v0, :cond_72

    if-ne p1, v3, :cond_96

    invoke-direct {p0, v7}, isAstcWallpaper(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 241
    :cond_72
    if-eqz v10, :cond_79

    .line 242
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 244
    :cond_79
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string/jumbo v1, "onEvent change ImageWallpaper"

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeResetLog(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 247
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 250
    .end local v10    # "written":Z
    :cond_96
    monitor-exit v11

    goto/16 :goto_6

    .end local v7    # "changedFile":Ljava/io/File;
    :catchall_99
    move-exception v0

    monitor-exit v11
    :try_end_9b
    .catchall {:try_start_c .. :try_end_9b} :catchall_99

    throw v0
.end method
