.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field displayId:I

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field width:I


# direct methods
.method constructor <init>(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-string v0, ""

    iput-object v0, p0, name:Ljava/lang/String;

    .line 360
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, callbacks:Landroid/os/RemoteCallbackList;

    .line 363
    iput v2, p0, width:I

    .line 364
    iput v2, p0, height:I

    .line 365
    iput v1, p0, displayId:I

    .line 367
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, padding:Landroid/graphics/Rect;

    .line 370
    iput p1, p0, userId:I

    .line 371
    new-instance v0, Ljava/io/File;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, wallpaperFile:Ljava/io/File;

    .line 372
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 326
    iget-object v0, p0, callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method equals(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 5
    .param p1, "compare"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v0, 0x1

    .line 374
    iget v1, p0, width:I

    iget v2, p1, width:I

    if-ne v1, v2, :cond_43

    iget v1, p0, height:I

    iget v2, p1, height:I

    if-ne v1, v2, :cond_43

    iget-object v1, p0, name:Ljava/lang/String;

    iget-object v2, p1, name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 375
    iget-object v1, p0, wallpaperComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_31

    .line 376
    sget-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    iget-object v2, p1, wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p1, wallpaperComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_43

    .line 377
    :cond_29
    const-string v1, "WallpaperManagerService"

    const-string v2, "Same Image Wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_30
    return v0

    .line 381
    :cond_31
    iget-object v1, p0, wallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p1, wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 382
    const-string v1, "WallpaperManagerService"

    const-string v2, "Same Live wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 387
    :cond_43
    const-string v0, "WallpaperManagerService"

    const-string v1, "Different wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    goto :goto_30
.end method
