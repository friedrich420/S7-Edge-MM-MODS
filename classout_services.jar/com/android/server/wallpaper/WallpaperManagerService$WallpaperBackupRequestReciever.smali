.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperBackupRequestReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .prologue
    .line 2303
    iput-object p1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2306
    const-string v2, "WallpaperManagerService"

    const-string v3, "WallpaperBackupRequestReciever : onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iget-object v2, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2310
    :try_start_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2311
    .local v0, "action":Ljava/lang/String;
    const-string v2, "SOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2312
    .local v1, "source":Ljava/lang/String;
    const-string v2, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_26
    const-string v2, "Kies"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2313
    iget-object v2, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_3c

    .line 2314
    iget-object v2, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z
    invoke-static {v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$902(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z

    .line 2317
    :cond_3c
    const-string v2, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2318
    :cond_4c
    iget-object v2, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mBackupRunning:Z
    invoke-static {v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$902(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z

    .line 2320
    :cond_52
    monitor-exit v3

    .line 2321
    return-void

    .line 2320
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "source":Ljava/lang/String;
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_54

    throw v2
.end method
