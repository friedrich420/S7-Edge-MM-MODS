.class final Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
.super Ljava/lang/Object;
.source "MagnifierDisplayPolicy.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;,
        Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;
    }
.end annotation


# instance fields
.field private mBorderPadding:F

.field private mContext:Landroid/content/Context;

.field private mCropHeight:F

.field private mCropWidth:F

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDm:Landroid/hardware/display/IDisplayManager;

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private final mHoverZoomObserver:Landroid/database/ContentObserver;

.field mIsDualScreenFeatureEnabled:Z

.field private mIsHoverZoom:Z

.field private mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

.field private mOnSizeChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerMargin:F

.field private mPointerSize:I

.field private mScale:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    invoke-direct {v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    .line 54
    iput v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    .line 55
    iput v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    .line 60
    iput v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    .line 61
    iput v4, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    .line 62
    iput v4, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    .line 63
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    .line 66
    iput v4, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 442
    new-instance v1, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$1;-><init>(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mHoverZoomObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    .line 79
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_magnifier"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    .line 80
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_magnifier"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mHoverZoomObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10502f8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    .line 84
    new-instance v0, Lcom/samsung/android/sdk/dualscreen/SDualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;-><init>()V

    .line 85
    .local v0, "mDualScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreen;
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/dualscreen/SDualScreen;->isFeatureEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mIsDualScreenFeatureEnabled:Z

    .line 86
    return-void

    .end local v0    # "mDualScreen":Lcom/samsung/android/sdk/dualscreen/SDualScreen;
    :cond_0
    move v1, v3

    .line 79
    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/MagnifierDisplayPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->setPointMargin()V

    return-void
.end method

.method private setPointMargin()V
    .locals 2

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mIsHoverZoom:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    goto :goto_0
.end method

.method private updateDisplayInfo(Landroid/util/DisplayMetrics;)Z
    .locals 2
    .param p1, "mDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v1, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    .line 259
    :cond_1
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    .line 260
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    .line 262
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    .line 263
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->setPrecision()V

    .line 268
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkUpdateDisplayInfo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 353
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 356
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    .line 358
    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 360
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 363
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->updateDisplayInfo(Landroid/util/DisplayMetrics;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 370
    .local v2, "listener":Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_1

    .line 364
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return v5
.end method

.method public checkUpdateDisplayInfo(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Z
    .locals 7
    .param p1, "currentscreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 389
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 391
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplay:Landroid/view/Display;

    .line 392
    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 397
    :try_start_0
    const-string v3, "test"

    const-string v4, "MagnifierDisplayPolicy(Settings).checkUpdateDisplayInfo(currentscreen)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne p1, v3, :cond_1

    .line 399
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->updateDisplayInfo(Landroid/util/DisplayMetrics;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 410
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 411
    .local v2, "listener":Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;
    invoke-interface {v2, v6}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_1

    .line 400
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->SUB:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    if-ne p1, v3, :cond_2

    .line 401
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDm:Landroid/hardware/display/IDisplayManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 414
    :cond_3
    return v5
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->checkUpdateDisplayInfo()Z

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDefaultDisplayInfo(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Landroid/view/DisplayInfo;
    .locals 1
    .param p1, "currentscreen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->checkUpdateDisplayInfo(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)Z

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public getDisplayInfo(Landroid/view/MagnificationSpec;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;
    .locals 26
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 132
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 133
    .local v15, "x":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 134
    .local v16, "y":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 136
    .local v11, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v4, v15, v17

    .line 137
    .local v4, "left":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v14, v16, v17

    .line 139
    .local v14, "top":F
    const/4 v12, 0x0

    .line 140
    .local v12, "surfaceOffsetX":F
    const/4 v13, 0x0

    .line 141
    .local v13, "surfaceOffsetY":F
    const/4 v2, 0x0

    .line 142
    .local v2, "absOffsetX":F
    const/4 v3, 0x0

    .line 143
    .local v3, "absOffsetY":F
    const/4 v5, 0x0

    .line 144
    .local v5, "pointOffsetX":F
    const/4 v6, 0x0

    .line 146
    .local v6, "pointOffsetY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    cmpg-float v17, v15, v17

    if-gez v17, :cond_3

    .line 147
    const/16 v17, 0x0

    cmpg-float v17, v4, v17

    if-gez v17, :cond_2

    .line 148
    const/4 v12, 0x0

    .line 149
    const/4 v4, 0x0

    .line 150
    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v5, v15, v17

    .line 155
    :goto_0
    const/4 v2, 0x0

    .line 172
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    cmpg-float v17, v16, v17

    if-gez v17, :cond_6

    .line 173
    const/4 v14, 0x0

    .line 174
    const/4 v13, 0x0

    .line 175
    const/4 v3, 0x0

    .line 176
    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v6, v16, v17

    .line 215
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    float-to-int v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    if-gez v17, :cond_e

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 230
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    if-gez v17, :cond_f

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 236
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v17, v0

    add-float v8, v4, v17

    .line 237
    .local v8, "rectLeft":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v17, v0

    add-float v10, v14, v17

    .line 238
    .local v10, "rectTop":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    add-float v17, v17, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v18, v0

    sub-float v9, v17, v18

    .line 239
    .local v9, "rectRight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    add-float v17, v17, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mBorderPadding:F

    move/from16 v18, v0

    sub-float v7, v17, v18

    .line 240
    .local v7, "rectBottom":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$300(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;

    move-result-object v17

    float-to-int v0, v8

    move/from16 v18, v0

    float-to-int v0, v10

    move/from16 v19, v0

    const v20, 0x3d4ccccd    # 0.05f

    add-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const v21, 0x3d4ccccd    # 0.05f

    add-float v21, v21, v7

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    float-to-int v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v8, v19

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    float-to-int v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v10, v19

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 244
    const-string v17, "Settings.MagnifierDisplayPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "2getDisplayInfo: x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$000(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " absx="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " absy="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$100(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mCropRect="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$300(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    return-object v17

    .line 152
    .end local v7    # "rectBottom":F
    .end local v8    # "rectLeft":F
    .end local v9    # "rectRight":F
    .end local v10    # "rectTop":F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v17, v15

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v12, v17, v18

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v5, v17, v18

    goto/16 :goto_0

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    cmpl-float v17, v15, v17

    if-lez v17, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    cmpl-float v17, v4, v17

    if-lez v17, :cond_4

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    mul-float v12, v17, v18

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v15

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    sub-float v5, v17, v18

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    sub-float v4, v17, v18

    .line 165
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    sub-float v2, v17, v18

    goto/16 :goto_1

    .line 162
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v15

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    sub-float v12, v17, v18

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v5, v17, v18

    goto :goto_5

    .line 167
    :cond_5
    neg-float v0, v15

    move/from16 v17, v0

    const/16 v18, 0x0

    mul-float v12, v17, v18

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v2, v15, v17

    .line 169
    move v5, v15

    goto/16 :goto_1

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    add-float v17, v17, v18

    cmpg-float v17, v16, v17

    if-gez v17, :cond_7

    .line 178
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v13, v17, v18

    .line 179
    const/4 v3, 0x0

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v6, v17, v18

    goto/16 :goto_2

    .line 181
    :cond_7
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v22, 0x3f800000    # 1.0f

    mul-float v17, v17, v22

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v22, v22, v24

    sub-double v20, v20, v22

    cmpl-double v17, v18, v20

    if-lez v17, :cond_c

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    sub-float v14, v17, v18

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_8

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v13, v17, v18

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v16

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    sub-float v6, v17, v18

    .line 200
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_b

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v3, v17, v18

    goto/16 :goto_2

    .line 188
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    neg-float v13, v0

    .line 189
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v16

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    sub-float v6, v17, v18

    goto :goto_6

    .line 192
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a

    .line 193
    const/16 v17, 0x0

    mul-float v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v13, v17, v18

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v6, v17, v18

    goto/16 :goto_6

    .line 196
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v16

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    sub-float v13, v17, v18

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v6, v17, v18

    goto/16 :goto_6

    .line 203
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    sub-float v3, v17, v18

    goto/16 :goto_2

    .line 206
    :cond_c
    const/16 v17, 0x0

    mul-float v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v13, v17, v18

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v3, v17, v18

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_d

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerMargin:F

    move/from16 v18, v0

    sub-float v6, v17, v18

    goto/16 :goto_2

    .line 211
    :cond_d
    move/from16 v6, v16

    goto/16 :goto_2

    .line 226
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_3

    .line 232
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    move-object/from16 v17, v0

    # getter for: Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mPointerSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_4
.end method

.method public getPrecision(F)F
    .locals 3
    .param p1, "length"    # F

    .prologue
    .line 272
    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mBorderPadding:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mBorderPadding:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 273
    .local v0, "diff":F
    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mBorderPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    sub-float/2addr v1, p1

    return v1
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    return v0
.end method

.method public getmLastDisplayInfo()Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    return-object v0
.end method

.method public setPrecision()V
    .locals 3

    .prologue
    .line 277
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    .line 278
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    .line 279
    const-string v0, "Settings.MagnifierDisplayPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrecision: mCropWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCropHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->setPointMargin()V

    .line 283
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mDefaultWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 285
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedWidth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedWidth:I

    .line 286
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    .line 287
    iget v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    iget v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->getPrecision(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    .line 289
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Last:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mLastDisplayInfo:Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateSettings(IIF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 426
    iput p1, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedWidth:I

    .line 427
    iput p2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedHeight:I

    .line 428
    iput p3, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mScale:F

    .line 430
    iget v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropWidth:F

    .line 431
    iget v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mFixedHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mCropHeight:F

    .line 433
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->mOnSizeChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;

    .line 434
    .local v1, "listener":Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;->onSizeChanged(Z)V

    goto :goto_0

    .line 436
    .end local v1    # "listener":Lcom/android/settings/accessibility/MagnifierDisplayPolicy$OnSizeChangeListener;
    :cond_0
    return-void
.end method
