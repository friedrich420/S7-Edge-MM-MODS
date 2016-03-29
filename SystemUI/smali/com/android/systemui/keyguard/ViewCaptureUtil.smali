.class public Lcom/android/systemui/keyguard/ViewCaptureUtil;
.super Ljava/lang/Object;
.source "ViewCaptureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private final LAND_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME:Ljava/lang/String;

.field private final PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

.field private final S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

.field private mAm:Landroid/app/ActivityManager;

.field private mClockBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mHazardActivity:[Ljava/lang/String;

.field private mIsCovered:Z

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field private mLeftOfClock:I

.field private mLeftOfLeft:I

.field private mLeftOfRight:I

.field private mMobileKeyboardIsCovered:Z

.field private mNewCapture:Z

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field private mRootHeight:I

.field private mRootWidth:I

.field private mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

.field private mTopOfClock:I

.field private mTopOfLeft:I

.field private mTopOfRight:I

.field private final mWallpaperActivity:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "lockscreen_capture_port.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "lockscreen_capture_land.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->LAND_FILE_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "lockscreen_capture_port_keyboard.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->PORT_FILE_NAME_MOBILE_KEYBOARD:Ljava/lang/String;

    .line 38
    const-string v0, "s_view_cover_capture.png"

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->S_VIEW_COVER_FILE_NAME:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 56
    iput-boolean v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.gallery3d"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.wallpapercropper2.KeyguardCropActivity"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.android.settings.SubSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.myfiles.common.MainActivity"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.gallery3d.app.GalleryActivity"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mHazardActivity:[Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    .line 74
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    .line 75
    new-instance v0, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;-><init>(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    .line 77
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTaskStackListener:Lcom/android/systemui/keyguard/ViewCaptureUtil$TaskStackListenerImpl;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mAm:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyguard/ViewCaptureUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/keyguard/ViewCaptureUtil;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mWallpaperActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyguard/ViewCaptureUtil;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mHazardActivity:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/keyguard/ViewCaptureUtil;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->arrangeComponents(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getSavePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/keyguard/ViewCaptureUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyguard/ViewCaptureUtil;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/res/Configuration;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private arrangeComponents(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clockBmp"    # Landroid/graphics/Bitmap;
    .param p3, "leftBmp"    # Landroid/graphics/Bitmap;
    .param p4, "rightBmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    if-gtz v3, :cond_2

    .line 120
    :cond_0
    const-string v3, "ViewCaptureUtil"

    const-string v4, "root view is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 142
    :cond_1
    :goto_0
    return-object v0

    .line 124
    :cond_2
    if-nez p2, :cond_3

    .line 125
    const-string v3, "ViewCaptureUtil"

    const-string v4, "clockBmp is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfClock:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfClock:I

    int-to-float v4, v4

    invoke-virtual {v1, p2, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    if-eqz p3, :cond_4

    .line 135
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfLeft:I

    int-to-float v4, v4

    invoke-virtual {v1, p3, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    :cond_4
    if-eqz p4, :cond_1

    .line 139
    iget v3, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfRight:I

    int-to-float v4, v4

    invoke-virtual {v1, p4, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private clearCaptures()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
    iput-object v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 222
    :cond_2
    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "t":Ljava/io/IOException;
    const-string v1, "ViewCaptureUtil"

    const-string v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getCoverState()V
    .locals 4

    .prologue
    .line 399
    const-string v2, "cover"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 400
    .local v0, "coverManager":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_0

    .line 402
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ViewCaptureUtil"

    const-string v3, "RemoteException in getCoverState: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSavePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 381
    const-string v0, "/storage/emulated/"

    .line 382
    .local v0, "LOCK_PREVIEW_PATH":Ljava/lang/String;
    const-string v1, "/Android/data/com.android.systemui/cache/"

    .line 384
    .local v1, "LOCK_PREVIEW_PATH2":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 385
    .local v2, "currentUserId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getViewLocation(Landroid/view/View;)[I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 368
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 370
    .local v0, "pos":[I
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v1, :cond_0

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    aput v2, v0, v1

    .line 372
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    aput v2, v0, v1

    .line 377
    :goto_0
    return-object v0

    .line 374
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_0
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string v2, "ViewCaptureUtil"

    const-string v3, "bmp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 181
    const-string v0, "s_view_cover_capture.png"

    .line 206
    .local v0, "fileName":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    iget v2, p3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_0

    .line 197
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_4

    .line 198
    const-string v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 185
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_0
    const-string v0, "lockscreen_capture_land.png"

    .line 186
    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 189
    .end local v0    # "fileName":Ljava/lang/String;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    if-eqz v2, :cond_3

    .line 190
    const-string v0, "lockscreen_capture_port_keyboard.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 192
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_3
    const-string v0, "lockscreen_capture_port.png"

    .line 194
    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 200
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_4
    const-string v0, "lockscreen_capture_port.png"

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    const-string v4, "ViewCaptureUtil"

    const-string v5, "bmp is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v2, 0x0

    .line 152
    .local v2, "out":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "SCREENSHOT_FILE_PATH":Ljava/lang/String;
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "capture image path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 158
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 159
    const-string v4, "ViewCaptureUtil"

    const-string v5, "save captured file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    invoke-static {v3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 164
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "ViewCaptureUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveScreenshot exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 160
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "topView"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f400000    # 0.75f

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    .line 84
    :cond_0
    const-string v2, "ViewCaptureUtil"

    const-string v3, "view is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardProperties;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    iput-boolean v7, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    .line 93
    if-eqz p2, :cond_2

    .line 94
    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for mobile keyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-ne v2, v7, :cond_4

    .line 98
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    .line 99
    if-eqz p2, :cond_2

    .line 100
    const-string v2, "ViewCaptureUtil"

    const-string v3, "scale clock view area for S View Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 104
    :cond_4
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mMobileKeyboardIsCovered:Z

    goto :goto_1
.end method


# virtual methods
.method public captureScreen(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZII)V
    .locals 6
    .param p1, "clockView"    # Landroid/view/View;
    .param p2, "left"    # Landroid/view/View;
    .param p3, "right"    # Landroid/view/View;
    .param p4, "isCover"    # Z
    .param p5, "windowWidth"    # I
    .param p6, "windowHeight"    # I

    .prologue
    const/4 v5, 0x0

    .line 313
    iput-boolean p4, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    .line 314
    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mIsCovered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v2, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getCoverState()V

    .line 318
    :cond_0
    if-nez p1, :cond_1

    .line 319
    const-string v2, "ViewCaptureUtil"

    const-string v3, "clockView null, stop capturing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 324
    :cond_1
    :try_start_0
    const-string v2, "ViewCaptureUtil"

    const-string v3, "Capture the lockscreen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 327
    .local v1, "pos":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 328
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfClock:I

    .line 329
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfClock:I

    .line 330
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mClockBitmap:Landroid/graphics/Bitmap;

    .line 332
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 333
    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getViewLocation(Landroid/view/View;)[I

    move-result-object v1

    .line 334
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfLeft:I

    .line 335
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfLeft:I

    .line 336
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 342
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 343
    invoke-direct {p0, p3}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->getViewLocation(Landroid/view/View;)[I

    move-result-object v1

    .line 344
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftOfRight:I

    .line 345
    const/4 v2, 0x1

    aget v2, v1, v2

    iput v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mTopOfRight:I

    .line 346
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->viewToBitmap(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 353
    :goto_2
    iput p6, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootHeight:I

    .line 354
    iput p5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRootWidth:I

    .line 357
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v1    # "pos":[I
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ViewCaptureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->clearCaptures()V

    .line 362
    iput-boolean v5, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mNewCapture:Z

    goto/16 :goto_0

    .line 338
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "pos":[I
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 339
    const-string v2, "ViewCaptureUtil"

    const-string v3, "left shortcut is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/ViewCaptureUtil;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 349
    const-string v2, "ViewCaptureUtil"

    const-string v3, "right shortcut is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
