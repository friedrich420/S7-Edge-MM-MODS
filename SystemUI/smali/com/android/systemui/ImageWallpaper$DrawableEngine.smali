.class Lcom/android/systemui/ImageWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;
    }
.end annotation


# instance fields
.field mBackground:Landroid/graphics/Bitmap;

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field mColorHSB:[F

.field mColorHSV:[F

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeightAtLastSurfaceSizeUpdate:I

.field private mDisplayWidthAtLastSurfaceSizeUpdate:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mExtractMode:I

.field protected mFilterParams:[F

.field mGetBackgroundHSV:Z

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field mLastRotation:I

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastXTranslation:I

.field mLastYTranslation:I

.field mMobileKeyboardHeight:I

.field mMobileKeyboardWidth:I

.field mNeedBlackStatusBar:I

.field mNeedBlackText:I

.field mOffsetsChanged:Z

.field mOrthoHeight:I

.field mOrthoWidth:I

.field private mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

.field mRedrawNeeded:Z

.field private mRotationAtLastSurfaceSizeUpdate:I

.field mScale:F

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field mVisible:Z

.field mVpHeight:I

.field mVpWidth:I

.field mXOffset:F

.field mYOffset:F

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;

.field private wallpaperTiltSettingChanged:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 321
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 322
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 202
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 203
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 204
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 205
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    .line 206
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    .line 207
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 208
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 209
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 210
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 213
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    .line 214
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    .line 215
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    .line 216
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    .line 217
    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    .line 219
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 220
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 221
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    .line 224
    const/16 v0, 0x19

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    .line 227
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 302
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    .line 303
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    .line 304
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    .line 306
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    .line 307
    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    .line 1526
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/ImageWallpaper$DrawableEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$DrawableEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    .line 325
    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$002(Z)Z

    .line 332
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEED_CUSTOMIZING:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wallpaper_extract_color_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFixedSizeAllowed(Z)V

    .line 337
    return-void

    :cond_1
    move v0, v2

    .line 325
    goto :goto_0
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1351
    const v6, 0x8b31

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v4

    .line 1352
    .local v4, "vertexShader":I
    if-nez v4, :cond_1

    move v2, v5

    .line 1378
    :cond_0
    :goto_0
    return v2

    .line 1354
    :cond_1
    const v6, 0x8b30

    invoke-direct {p0, p2, v6}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildShader(Ljava/lang/String;I)I

    move-result v1

    .line 1355
    .local v1, "fragmentShader":I
    if-nez v1, :cond_2

    move v2, v5

    goto :goto_0

    .line 1357
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1358
    .local v2, "program":I
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1359
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1361
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1362
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1364
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1365
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1367
    new-array v3, v7, [I

    .line 1368
    .local v3, "status":[I
    const v6, 0x8b82

    invoke-static {v2, v6, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1369
    aget v6, v3, v5

    if-eq v6, v7, :cond_0

    .line 1370
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 1371
    .local v0, "error":Ljava/lang/String;
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while linking program:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1373
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1374
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v5

    .line 1375
    goto :goto_0
.end method

.method private buildShader(Ljava/lang/String;I)I
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1382
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1384
    .local v1, "shader":I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1385
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1387
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1388
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1390
    new-array v2, v5, [I

    .line 1391
    .local v2, "status":[I
    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1392
    aget v4, v2, v3

    if-eq v4, v5, :cond_0

    .line 1393
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, "error":Ljava/lang/String;
    const-string v4, "ImageWallpaperGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while compiling shader:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v1, v3

    .line 1399
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "shader":I
    :cond_0
    return v1
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1404
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 1405
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 1410
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 1411
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 1412
    const-string v1, "ImageWallpaperGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1414
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1500
    new-array v5, v4, [I

    .line 1501
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1502
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getConfig()[I

    move-result-object v2

    .line 1503
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1506
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 1507
    aget-object v0, v3, v6

    .line 1509
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMesh(IIFF)Ljava/nio/FloatBuffer;
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1312
    const/16 v3, 0x14

    new-array v2, v3, [F

    int-to-float v3, p1

    aput v3, v2, v7

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x2

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput p3, v2, v3

    const/4 v3, 0x6

    aput p4, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v6, v2, v3

    const/16 v3, 0x9

    aput v6, v2, v3

    const/16 v3, 0xa

    int-to-float v4, p1

    aput v4, v2, v3

    const/16 v3, 0xb

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v5, v2, v3

    const/16 v3, 0xe

    aput v5, v2, v3

    const/16 v3, 0xf

    aput p3, v2, v3

    const/16 v3, 0x10

    int-to-float v4, p2

    aput v4, v2, v3

    const/16 v3, 0x11

    aput v5, v2, v3

    const/16 v3, 0x12

    aput v6, v2, v3

    const/16 v3, 0x13

    aput v5, v2, v3

    .line 1320
    .local v2, "verticesData":[F
    array-length v3, v2

    mul-int/lit8 v0, v3, 0x4

    .line 1321
    .local v0, "bytes":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 1323
    .local v1, "triangleVertices":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1324
    return-object v1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V
    .locals 7
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .prologue
    .line 1094
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 1095
    .local v0, "c":Landroid/graphics/Canvas;
    if-eqz v0, :cond_4

    .line 1097
    :try_start_0
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redrawing: left="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", top="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    int-to-float v1, p4

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v3, v1, v2

    .line 1102
    .local v3, "right":F
    int-to-float v1, p5

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v2, v5

    add-float v4, v1, v2

    .line 1103
    .local v4, "bottom":F
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 1104
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 1105
    int-to-float v1, p4

    int-to-float v2, p5

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1107
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1108
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1110
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 1111
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1113
    .local v6, "dest":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    .end local v6    # "dest":Landroid/graphics/RectF;
    :cond_3
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1119
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :cond_4
    return-void

    .line 1116
    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v1
.end method

.method private drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z
    .locals 33
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I

    .prologue
    .line 1122
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->initGL(Landroid/view/SurfaceHolder;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v27, 0x0

    .line 1237
    :goto_0
    return v27

    .line 1124
    :cond_0
    const-string v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drawWallpaperWithOpenGL() w:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " left:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " top:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 1127
    .local v19, "bitmapWidth":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1129
    .local v18, "bitmapHeight":I
    move/from16 v0, p4

    int-to-float v7, v0

    move/from16 v0, v19

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v26, v7, v8

    .line 1130
    .local v26, "right":F
    move/from16 v0, p5

    int-to-float v7, v0

    move/from16 v0, v18

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v8, v9

    add-float v20, v7, v8

    .line 1132
    .local v20, "bottom":F
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v22

    .line 1133
    .local v22, "frame":Landroid/graphics/Rect;
    new-instance v5, Landroid/renderscript/Matrix4f;

    invoke-direct {v5}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 1135
    .local v5, "ortho":Landroid/renderscript/Matrix4f;
    const/16 v31, 0x0

    .line 1136
    .local v31, "vp_x":I
    const/16 v32, 0x0

    .line 1137
    .local v32, "vp_y":I
    const/16 v23, 0x0

    .line 1138
    .local v23, "margin_x":I
    const/16 v24, 0x0

    .line 1140
    .local v24, "margin_y":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMobileKeyboard()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1141
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v7}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v7, v7, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v7, :cond_7

    .line 1142
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    move/from16 v0, v19

    if-eq v0, v7, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    if-eq v7, v8, :cond_1

    .line 1143
    move/from16 v0, v19

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v31, v7, p4

    .line 1144
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v23, v7, 0x2

    .line 1145
    sub-int p4, p4, v23

    .line 1146
    move/from16 v0, v23

    int-to-float v7, v0

    sub-float v26, v26, v7

    .line 1149
    :cond_1
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v24, v7, 0x2

    .line 1150
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    sub-int/2addr v7, v8

    add-int v32, v7, v24

    .line 1170
    :goto_1
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1171
    const-string v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drawWallpaperWithOpenGL  mOrthoWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mOrthoHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string v7, "ImageWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drawWallpaperWithOpenGL  mVpWidth : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mVpHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    int-to-float v8, v8

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v5 .. v11}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 1177
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, v26

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createMesh(IIFF)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 1179
    .local v11, "triangleVertices":Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v28

    .line 1182
    .local v28, "texture":I
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v7

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    if-nez v7, :cond_a

    .line 1183
    const-string v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string v8, "precision mediump float;\nuniform float filterParams[25];\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    vec4 startColor_top = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]);\n    vec4 endColor_top = vec4(filterParams[5], filterParams[6], filterParams[7], filterParams[8]);\n    vec4 startColor_bottom = vec4(filterParams[9], filterParams[10], filterParams[11], filterParams[12]);\n    vec4 endColor_bottom = vec4(filterParams[13], filterParams[14], filterParams[15], filterParams[16]);\n    vec2 startPoint_top = vec2(filterParams[17], filterParams[18]);\n    vec2 endPoint_top = vec2(filterParams[19], filterParams[20]);\n    vec2 startPoint_bottom = vec2(filterParams[21], filterParams[22]);\n    vec2 endPoint_bottom = vec2(filterParams[23], filterParams[24]);\n    vec2 send_top = endPoint_top - startPoint_top;\n    vec2 scur_top = outTexCoords - startPoint_top;\n    vec2 send_bottom = endPoint_bottom - startPoint_bottom;\n    vec2 scur_bottom = outTexCoords - startPoint_bottom;\n    float proj_top = dot(send_top, scur_top) / dot(send_top, send_top);\n    vec4 mask_top = mix(startColor_top, endColor_top, smoothstep(0.0, 1.0, proj_top));\n    float proj_bottom = dot(send_bottom, scur_bottom) / dot(send_bottom, send_bottom);\n    vec4 mask_bottom = mix(startColor_bottom, endColor_bottom, smoothstep(0.0, 1.0, proj_bottom));\n    mask_top.rgb *= mask_top.a;\n    mask_bottom.rgb *= mask_bottom.a;\n    gl_FragColor = texture2D(texture, outTexCoords);\n    gl_FragColor = mask_top + gl_FragColor * (1.0 - mask_top.a);\n    gl_FragColor = mask_bottom + gl_FragColor * (1.0 - mask_bottom.a);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 1188
    .local v25, "program":I
    :goto_2
    const-string v7, "position"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    .line 1189
    .local v6, "attribPosition":I
    const-string v7, "texCoords"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v12

    .line 1190
    .local v12, "attribTexCoords":I
    const-string v7, "texture"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v30

    .line 1191
    .local v30, "uniformTexture":I
    const-string v7, "projection"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v29

    .line 1193
    .local v29, "uniformProjection":I
    const/16 v21, 0x0

    .line 1194
    .local v21, "filterParamHandle":I
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1195
    const-string v7, "filterParams"

    move/from16 v0, v25

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v21

    .line 1196
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setFilterParams(Landroid/view/SurfaceHolder;I)V

    .line 1199
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1201
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v1, v7, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1202
    const/16 v7, 0xde1

    move/from16 v0, v28

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1204
    invoke-static/range {v25 .. v25}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1205
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1206
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1207
    const/4 v7, 0x0

    move/from16 v0, v30

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 1208
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v9

    const/4 v10, 0x0

    move/from16 v0, v29

    invoke-static {v0, v7, v8, v9, v10}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1210
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1211
    const/16 v7, 0x19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v9, 0x0

    move/from16 v0, v21

    invoke-static {v0, v7, v8, v9}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 1214
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1216
    if-gtz p2, :cond_5

    if-lez p3, :cond_6

    .line 1217
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1218
    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1222
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1223
    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1226
    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1227
    const/4 v13, 0x3

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x14

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1230
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v9}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v27

    .line 1233
    .local v27, "status":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkEglError()V

    .line 1235
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->finishGL()V

    goto/16 :goto_0

    .line 1153
    .end local v6    # "attribPosition":I
    .end local v11    # "triangleVertices":Ljava/nio/FloatBuffer;
    .end local v12    # "attribTexCoords":I
    .end local v21    # "filterParamHandle":I
    .end local v25    # "program":I
    .end local v27    # "status":Z
    .end local v28    # "texture":I
    .end local v29    # "uniformProjection":I
    .end local v30    # "uniformTexture":I
    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    move/from16 v0, v19

    if-eq v0, v7, :cond_8

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    if-eq v7, v8, :cond_8

    .line 1154
    move/from16 v0, v19

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int v31, v7, p4

    .line 1155
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v23, v7, 0x2

    .line 1156
    sub-int p4, p4, v23

    .line 1157
    move/from16 v0, v23

    int-to-float v7, v0

    sub-float v26, v26, v7

    .line 1159
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    sub-int v32, v7, v8

    goto/16 :goto_1

    .line 1162
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 1163
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 1164
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 1165
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 1166
    const/16 v31, 0x0

    .line 1167
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 1185
    .restart local v11    # "triangleVertices":Ljava/nio/FloatBuffer;
    .restart local v28    # "texture":I
    :cond_a
    const-string v7, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = projection * position;\n}\n\n"

    const-string v8, "precision mediump float;\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    gl_FragColor = texture2D(texture, outTexCoords);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "program":I
    goto/16 :goto_2
.end method

.method private finishGL()V
    .locals 5

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1421
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 1513
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3027
        0x3038
        0x3038
    .end array-data
.end method

.method private getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 602
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 593
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 594
    .local v2, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v4}, Lcom/android/systemui/ImageWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 595
    .local v0, "c":Landroid/content/Context;
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 596
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 597
    .local v1, "d":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 598
    return-object v2
.end method

.method private getDisplayedStatusBarRegion([Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "region"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    .line 979
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    .line 984
    .local v9, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 985
    .local v8, "frame":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 986
    .local v7, "dw":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 987
    .local v6, "dh":I
    const/4 v4, 0x0

    .line 988
    .local v4, "deltaX":I
    const/4 v5, 0x0

    .line 990
    .local v5, "deltaY":I
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v0, :cond_2

    .line 991
    if-le v7, v6, :cond_1

    .line 992
    div-int/lit8 v4, v6, 0xb

    .line 993
    div-int/lit8 v5, v7, 0xb

    .line 994
    move v3, v7

    .line 995
    .local v3, "viewHeight":I
    move v2, v6

    .line 1016
    .local v2, "viewWidth":I
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aput-object v0, p1, v12

    .line 1017
    aget-object v1, p1, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionforStatusBar(Landroid/graphics/Rect;IIII)V

    .line 1019
    .end local v2    # "viewWidth":I
    .end local v3    # "viewHeight":I
    .end local v4    # "deltaX":I
    .end local v5    # "deltaY":I
    .end local v6    # "dh":I
    .end local v7    # "dw":I
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v9    # "sh":Landroid/view/SurfaceHolder;
    :cond_0
    return-void

    .line 997
    .restart local v4    # "deltaX":I
    .restart local v5    # "deltaY":I
    .restart local v6    # "dh":I
    .restart local v7    # "dw":I
    .restart local v8    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "sh":Landroid/view/SurfaceHolder;
    :cond_1
    div-int/lit8 v4, v7, 0xb

    .line 998
    div-int/lit8 v5, v6, 0xb

    .line 999
    move v3, v6

    .line 1000
    .restart local v3    # "viewHeight":I
    move v2, v7

    .restart local v2    # "viewWidth":I
    goto :goto_0

    .line 1003
    .end local v2    # "viewWidth":I
    .end local v3    # "viewHeight":I
    :cond_2
    if-le v7, v6, :cond_3

    .line 1004
    int-to-double v0, v6

    mul-double/2addr v0, v10

    double-to-int v4, v0

    .line 1005
    int-to-double v0, v7

    mul-double/2addr v0, v10

    double-to-int v5, v0

    .line 1006
    move v3, v7

    .line 1007
    .restart local v3    # "viewHeight":I
    move v2, v6

    .restart local v2    # "viewWidth":I
    goto :goto_0

    .line 1009
    .end local v2    # "viewWidth":I
    .end local v3    # "viewHeight":I
    :cond_3
    int-to-double v0, v7

    mul-double/2addr v0, v10

    double-to-int v4, v0

    .line 1010
    int-to-double v0, v6

    mul-double/2addr v0, v10

    double-to-int v5, v0

    .line 1011
    move v3, v6

    .line 1012
    .restart local v3    # "viewHeight":I
    move v2, v7

    .restart local v2    # "viewWidth":I
    goto :goto_0
.end method

.method private getDisplayedWallpaperRegion([Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "region"    # [Landroid/graphics/Rect;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    .line 889
    .local v10, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v10}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v8

    .line 890
    .local v8, "frame":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 891
    .local v7, "dw":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 895
    .local v6, "dh":I
    const v9, 0x3f733333    # 0.95f

    .line 896
    .local v9, "ratio":F
    int-to-float v0, v7

    mul-float/2addr v0, v9

    float-to-int v7, v0

    .line 897
    int-to-float v0, v6

    mul-float/2addr v0, v9

    float-to-int v6, v0

    .line 899
    if-le v7, v6, :cond_1

    .line 900
    move v3, v7

    .line 901
    .local v3, "viewHeight":I
    move v2, v6

    .line 902
    .local v2, "viewWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v4, v0, v6

    .line 903
    .local v4, "deltaX":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v5, v0, v7

    .line 912
    .local v5, "deltaY":I
    :goto_0
    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, p1, v0

    .line 913
    const/4 v0, 0x0

    aget-object v1, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionForDisplay(Landroid/graphics/Rect;IIII)V

    .line 915
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 916
    if-ge v7, v6, :cond_2

    .line 917
    move v3, v7

    .line 918
    move v2, v6

    .line 919
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v4, v0, v6

    .line 920
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v5, v0, v7

    .line 929
    :goto_1
    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, p1, v0

    .line 930
    const/4 v0, 0x2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, p1, v0

    .line 931
    const/4 v0, 0x1

    aget-object v1, p1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getImageRegionForDisplay(Landroid/graphics/Rect;IIII)V

    .line 932
    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x1

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x0

    aget-object v13, p1, v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 933
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    const/4 v13, 0x1

    aget-object v13, p1, v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 936
    .end local v2    # "viewWidth":I
    .end local v3    # "viewHeight":I
    .end local v4    # "deltaX":I
    .end local v5    # "deltaY":I
    .end local v6    # "dh":I
    .end local v7    # "dw":I
    .end local v8    # "frame":Landroid/graphics/Rect;
    .end local v9    # "ratio":F
    .end local v10    # "sh":Landroid/view/SurfaceHolder;
    :cond_0
    return-void

    .line 905
    .restart local v6    # "dh":I
    .restart local v7    # "dw":I
    .restart local v8    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "ratio":F
    .restart local v10    # "sh":Landroid/view/SurfaceHolder;
    :cond_1
    move v3, v6

    .line 906
    .restart local v3    # "viewHeight":I
    move v2, v7

    .line 907
    .restart local v2    # "viewWidth":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v4, v0, v7

    .line 908
    .restart local v4    # "deltaX":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v5, v0, v6

    .restart local v5    # "deltaY":I
    goto :goto_0

    .line 922
    :cond_2
    move v3, v6

    .line 923
    move v2, v7

    .line 924
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v4, v0, v7

    .line 925
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v5, v0, v6

    goto :goto_1
.end method

.method private initGL(Landroid/view/SurfaceHolder;)Z
    .locals 13
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1424
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v6

    check-cast v6, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1426
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1427
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v6, v9, :cond_0

    .line 1428
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglGetDisplay failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1432
    :cond_0
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 1433
    .local v5, "version":[I
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v9, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1434
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglInitialize failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1438
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1439
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v6, :cond_2

    .line 1440
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "eglConfig not initialized"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1443
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1444
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v6, v9, :cond_3

    .line 1445
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createContext failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1449
    :cond_3
    const/4 v6, 0x5

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 1454
    .local v0, "attribs":[I
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6, v9, v10, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    .line 1455
    .local v4, "tmpSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v9, v4, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1457
    new-array v3, v7, [I

    .line 1458
    .local v3, "maxSize":[I
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 1459
    .local v2, "frame":Landroid/graphics/Rect;
    const/16 v6, 0xd33

    invoke-static {v6, v3, v8}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 1461
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v12, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v9, v10, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1462
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v9, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1464
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    aget v9, v3, v8

    if-gt v6, v9, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    aget v9, v3, v8

    if-le v6, v9, :cond_5

    .line 1465
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1466
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1467
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requested  texture size "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " exceeds the support maximum of "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1490
    :goto_0
    return v6

    .line 1473
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v11, 0x0

    invoke-interface {v6, v9, v10, p1, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1474
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v9, :cond_9

    .line 1475
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 1476
    .local v1, "error":I
    const/16 v6, 0x300b

    if-eq v1, v6, :cond_7

    const/16 v6, 0x3003

    if-ne v1, v6, :cond_8

    .line 1477
    :cond_7
    const-string v6, "ImageWallpaperGL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createWindowSurface returned "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1479
    goto :goto_0

    .line 1481
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createWindowSurface failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1485
    .end local v1    # "error":I
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v8, v9, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1486
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eglMakeCurrent failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v8}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v8

    invoke-static {v8}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    move v6, v7

    .line 1490
    goto/16 :goto_0

    .line 1449
    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private isWhiteCSCWallpaper()Z
    .locals 5

    .prologue
    .line 842
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 843
    .local v1, "saleCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 844
    .local v0, "darkFont":I
    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWhiteCSCWallpaper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v2, "XTE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SMA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 846
    :cond_0
    const/4 v2, 0x1

    .line 848
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadTexture(Landroid/graphics/Bitmap;)I
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2601

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 1328
    new-array v7, v3, [I

    .line 1330
    .local v7, "textures":[I
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1331
    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1332
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1334
    aget v6, v7, v1

    .line 1335
    .local v6, "texture":I
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1336
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1338
    const/16 v2, 0x2801

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1339
    const/16 v2, 0x2800

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1341
    const/16 v2, 0x2802

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1342
    const/16 v2, 0x2803

    invoke-static {v0, v2, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1344
    const/16 v2, 0x1908

    const/16 v4, 0x1401

    move-object v3, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkGlError()V

    .line 1347
    return v6
.end method

.method private setFilterParams(Landroid/view/SurfaceHolder;I)V
    .locals 11
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "h"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const v8, 0x3dcccccd    # 0.1f

    .line 1241
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x0

    aput v10, v5, v6

    .line 1244
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x1

    aput v8, v5, v6

    .line 1245
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x2

    aput v8, v5, v6

    .line 1246
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x3

    aput v8, v5, v6

    .line 1250
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x4

    const v7, 0x3e99999a    # 0.3f

    aput v7, v5, v6

    .line 1253
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x5

    aput v8, v5, v6

    .line 1254
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x6

    aput v8, v5, v6

    .line 1255
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/4 v6, 0x7

    aput v8, v5, v6

    .line 1256
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x8

    aput v9, v5, v6

    .line 1259
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x9

    aput v8, v5, v6

    .line 1260
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xa

    aput v8, v5, v6

    .line 1261
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xb

    aput v8, v5, v6

    .line 1262
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xc

    aput v9, v5, v6

    .line 1264
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xd

    aput v8, v5, v6

    .line 1265
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xe

    aput v8, v5, v6

    .line 1266
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0xf

    aput v8, v5, v6

    .line 1267
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x10

    aput v9, v5, v6

    .line 1269
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 1270
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v1, v5, p2

    .line 1271
    .local v1, "imageHeight":I
    const/4 v2, 0x0

    .line 1272
    .local v2, "offsetY1":F
    const/4 v3, 0x0

    .line 1273
    .local v3, "offsetY2":F
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v4

    .line 1275
    .local v4, "p":Landroid/graphics/Point;
    neg-int p2, p2

    .line 1276
    iget v5, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1277
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    add-int/2addr p2, v5

    .line 1279
    :cond_0
    div-int/lit8 p2, p2, 0x2

    .line 1284
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const v6, 0x3de147ae    # 0.11f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    .line 1287
    if-lez p2, :cond_1

    .line 1288
    int-to-float v5, p2

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 1292
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x11

    aput v9, v5, v6

    .line 1293
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x12

    aput v2, v5, v6

    .line 1294
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x13

    aput v9, v5, v6

    .line 1295
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x14

    add-float v7, v2, v3

    aput v7, v5, v6

    .line 1297
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v5}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v5, v5, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v5, :cond_2

    .line 1298
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    .line 1303
    :goto_0
    sub-float v2, v10, v2

    .line 1305
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x15

    aput v9, v5, v6

    .line 1306
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x16

    aput v2, v5, v6

    .line 1307
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x17

    aput v9, v5, v6

    .line 1308
    iget-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mFilterParams:[F

    const/16 v6, 0x18

    sub-float v7, v2, v3

    aput v7, v5, v6

    .line 1309
    return-void

    .line 1300
    :cond_2
    iget v5, v4, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    const v6, 0x3e0f5c29    # 0.14f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    goto :goto_0
.end method

.method private updateWallpaperLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 852
    const/4 v2, 0x0

    .line 854
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 855
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 856
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 857
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 858
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 859
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 866
    :goto_0
    if-eqz v2, :cond_0

    .line 867
    iput-object v5, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 868
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 869
    iput v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 873
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable to load wallpaper!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v3, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 881
    :cond_0
    :goto_1
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v2, v0

    .line 864
    goto :goto_0

    .line 862
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v2, v0

    goto :goto_0

    .line 876
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 878
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "ImageWallpaper"

    const-string v4, "Unable reset to default wallpaper!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public checkSurfaceSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingMethod"    # Ljava/lang/String;

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 587
    .local v0, "newRotation":I
    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 588
    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----checkSurfaceSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastSurfaceWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastSurfaceHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    return-void
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 1495
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1496
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 1495
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method drawFrame()V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    .line 607
    return-void
.end method

.method drawFrame(Z)V
    .locals 24
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 612
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    const-string v2, "ImageWallpaper"

    const-string v20, "drawFrame:"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 617
    .local v11, "displayInfo":Landroid/view/DisplayInfo;
    iget v14, v11, Landroid/view/DisplayInfo;->rotation:I

    .line 621
    .local v14, "newRotation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v20, v0

    move/from16 v0, v20

    # setter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static {v2, v0}, Lcom/android/systemui/ImageWallpaper;->access$402(Lcom/android/systemui/ImageWallpaper;I)I

    .line 623
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v14, v2, :cond_1

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static/range {v20 .. v20}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)I

    move-result v20

    move/from16 v0, v20

    if-eq v2, v0, :cond_2

    .line 625
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;)V

    .line 626
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    .line 627
    iget v2, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    .line 628
    iget v2, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    .line 638
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    .line 639
    .local v3, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v13

    .line 640
    .local v13, "frame":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 641
    .local v12, "dw":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 642
    .local v10, "dh":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    if-ne v12, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-eq v10, v2, :cond_9

    :cond_3
    const/16 v17, 0x1

    .line 644
    .local v17, "surfaceDimensionsChanged":Z
    :goto_1
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 645
    const-string v2, "ImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "surfaceDimensionsChanged : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " newRotation : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mLastRotation : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 647
    const-string v2, "ImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mNewKeyboard : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v21, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mLastKeyboard : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v21, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 652
    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v14, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static/range {v20 .. v20}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)I

    move-result v20

    move/from16 v0, v20

    if-eq v2, v0, :cond_a

    :cond_5
    const/4 v15, 0x1

    .line 653
    .local v15, "redrawNeeded":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I
    invoke-static/range {v20 .. v20}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)I

    move-result v20

    move/from16 v0, v20

    # setter for: Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I
    invoke-static {v2, v0}, Lcom/android/systemui/ImageWallpaper;->access$502(Lcom/android/systemui/ImageWallpaper;I)I

    .line 658
    :goto_3
    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-nez v2, :cond_e

    .line 659
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 660
    const-string v2, "ImageWallpaper"

    const-string v20, "Suppressed drawFrame since redraw is not needed and offsets have not changed."

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_6
    :goto_4
    return-void

    .line 632
    .end local v3    # "sh":Landroid/view/SurfaceHolder;
    .end local v10    # "dh":I
    .end local v12    # "dw":I
    .end local v13    # "frame":Landroid/graphics/Rect;
    .end local v15    # "redrawNeeded":Z
    .end local v17    # "surfaceDimensionsChanged":Z
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-ne v14, v2, :cond_8

    if-eqz p1, :cond_2

    .line 634
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;)V

    goto/16 :goto_0

    .line 642
    .restart local v3    # "sh":Landroid/view/SurfaceHolder;
    .restart local v10    # "dh":I
    .restart local v12    # "dw":I
    .restart local v13    # "frame":Landroid/graphics/Rect;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 652
    .restart local v17    # "surfaceDimensionsChanged":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_2

    .line 655
    :cond_b
    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    if-eq v14, v2, :cond_d

    :cond_c
    const/4 v15, 0x1

    .restart local v15    # "redrawNeeded":Z
    :goto_5
    goto :goto_3

    .end local v15    # "redrawNeeded":Z
    :cond_d
    const/4 v15, 0x0

    goto :goto_5

    .line 665
    .restart local v15    # "redrawNeeded":Z
    :cond_e
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    if-eqz v17, :cond_16

    .line 669
    :cond_f
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 670
    const-string v20, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reloading bitmap: mBackground, bgw, bgh, dw, dh = "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_11

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 681
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_14

    .line 682
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 683
    const-string v2, "ImageWallpaper"

    const-string v20, "Unable to load bitmap"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 670
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_7

    .line 687
    :cond_14
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v12, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v10, v2, :cond_16

    .line 689
    :cond_15
    const-string v2, "ImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Surface != bitmap dimensions: surface w/h, bitmap w/h: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    if-nez v2, :cond_1c

    .line 697
    # getter for: Lcom/android/systemui/ImageWallpaper;->NEED_CUSTOMIZING:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isWhiteCSCWallpaper()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 702
    :cond_17
    const/16 v18, 0x0

    .line 703
    .local v18, "targetRegion":[Landroid/graphics/Rect;
    const/16 v16, 0x0

    .line 705
    .local v16, "statusRegion":[Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mExtractMode:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_21

    .line 706
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 707
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 713
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDisplayedWallpaperRegion([Landroid/graphics/Rect;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/systemui/ImageWallpaper$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    if-nez v2, :cond_22

    .line 717
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    .line 730
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDisplayedStatusBarRegion([Landroid/graphics/Rect;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/systemui/ImageWallpaper$ExtractColor;->getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    if-nez v2, :cond_25

    .line 733
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    .line 747
    .end local v16    # "statusRegion":[Landroid/graphics/Rect;
    .end local v18    # "targetRegion":[Landroid/graphics/Rect;
    :cond_18
    :goto_a
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 748
    const-string v2, "ImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mNeedBlackText = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mNeedBlackStatusBar = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "need_dark_font"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    if-ne v2, v0, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "need_dark_statusbar"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    if-eq v2, v0, :cond_1b

    .line 752
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v20, "need_dark_font"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v20, "need_dark_statusbar"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 754
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 755
    .local v19, "wallpaperChangedIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/ImageWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    .line 759
    .end local v19    # "wallpaperChangedIntent":Landroid/content/Intent;
    :cond_1b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mGetBackgroundHSV:Z

    .line 762
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 763
    const/16 v2, 0x5a0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getMobileKeybordHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v2, :cond_28

    .line 772
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    int-to-double v0, v2

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff199999999999aL    # 1.1

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 773
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    int-to-double v0, v2

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff199999999999aL    # 1.1

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 774
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    int-to-double v0, v2

    move-wide/from16 v20, v0

    const-wide v22, 0x3fb999999999999aL    # 0.1

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v2, v0

    add-int/lit16 v2, v2, 0xa00

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 775
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move/from16 v20, v0

    mul-int v2, v2, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v20, v0

    div-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 783
    :goto_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    .line 784
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 787
    :cond_1d
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v12

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v10

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move/from16 v20, v0

    mul-float v2, v2, v20

    float-to-int v2, v2

    sub-int v4, v12, v2

    .line 790
    .local v4, "availw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    move/from16 v20, v0

    mul-float v2, v2, v20

    float-to-int v2, v2

    sub-int v5, v10, v2

    .line 791
    .local v5, "availh":I
    div-int/lit8 v6, v4, 0x2

    .line 792
    .local v6, "xPixels":I
    div-int/lit8 v7, v5, 0x2

    .line 797
    .local v7, "yPixels":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v9, v12, v2

    .line 798
    .local v9, "availwUnscaled":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v8, v10, v2

    .line 799
    .local v8, "availhUnscaled":I
    if-gez v9, :cond_1e

    int-to-float v2, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    sub-float v20, v20, v21

    mul-float v2, v2, v20

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v2, v2, v20

    float-to-int v2, v2

    add-int/2addr v6, v2

    .line 800
    :cond_1e
    if-gez v8, :cond_1f

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    sub-float v20, v20, v21

    mul-float v2, v2, v20

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v2, v2, v20

    float-to-int v2, v2

    add-int/2addr v7, v2

    .line 802
    :cond_1f
    const-string v2, "ImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "drawFrame() mXOffset:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mYOffset:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 805
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRedrawNeeded:Z

    .line 806
    if-eqz v17, :cond_20

    .line 807
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 808
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 810
    :cond_20
    if-nez v15, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    if-ne v6, v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    if-ne v7, v2, :cond_29

    .line 811
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 812
    const-string v2, "ImageWallpaper"

    const-string v20, "Suppressed drawFrame since the image has not actually moved an integral number of pixels."

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 709
    .end local v4    # "availw":I
    .end local v5    # "availh":I
    .end local v6    # "xPixels":I
    .end local v7    # "yPixels":I
    .end local v8    # "availhUnscaled":I
    .end local v9    # "availwUnscaled":I
    .restart local v16    # "statusRegion":[Landroid/graphics/Rect;
    .restart local v18    # "targetRegion":[Landroid/graphics/Rect;
    :cond_21
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 710
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/Rect;

    move-object/from16 v16, v0

    goto/16 :goto_8

    .line 719
    :cond_22
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 720
    const-string v2, "ImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Whole Area Hue="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Saturation="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Brightness="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    const/16 v20, 0x1

    aget v2, v2, v20

    const v20, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v20

    if-gez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSV:[F

    const/16 v20, 0x2

    aget v2, v2, v20

    const v20, 0x3f6147ae    # 0.88f

    cmpl-float v2, v2, v20

    if-ltz v2, :cond_24

    .line 724
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    goto/16 :goto_9

    .line 726
    :cond_24
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackText:I

    goto/16 :goto_9

    .line 735
    :cond_25
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 736
    const-string v2, "ImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StatusBar Area Hue="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Saturation="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Brightness="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    const/16 v20, 0x1

    aget v2, v2, v20

    const v20, 0x3e4ccccd    # 0.2f

    cmpg-float v2, v2, v20

    if-gez v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mColorHSB:[F

    const/16 v20, 0x2

    aget v2, v2, v20

    const v20, 0x3f733333    # 0.95f

    cmpl-float v2, v2, v20

    if-ltz v2, :cond_27

    .line 740
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    goto/16 :goto_a

    .line 742
    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mNeedBlackStatusBar:I

    goto/16 :goto_a

    .line 777
    .end local v16    # "statusRegion":[Landroid/graphics/Rect;
    .end local v18    # "targetRegion":[Landroid/graphics/Rect;
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    .line 778
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    .line 779
    const/16 v2, 0xa00

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    .line 780
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoHeight:I

    move/from16 v20, v0

    mul-int v2, v2, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVpHeight:I

    move/from16 v20, v0

    div-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOrthoWidth:I

    goto/16 :goto_b

    .line 817
    .restart local v4    # "availw":I
    .restart local v5    # "availh":I
    .restart local v6    # "xPixels":I
    .restart local v7    # "yPixels":I
    .restart local v8    # "availhUnscaled":I
    .restart local v9    # "availwUnscaled":I
    :cond_29
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    .line 818
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    .line 820
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 821
    const-string v2, "ImageWallpaper"

    const-string v20, "Redrawing wallpaper"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v2, v2, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    if-eqz v2, :cond_2b

    move-object/from16 v2, p0

    .line 825
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithOpenGL(Landroid/view/SurfaceHolder;IIII)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v2, p0

    .line 826
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    goto/16 :goto_4

    :cond_2b
    move-object/from16 v2, p0

    .line 829
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;IIII)V

    .line 836
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    goto/16 :goto_4
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1062
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ImageWallpaper.DrawableEngine:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackground="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1066
    const-string v0, " mBackgroundWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    const-string v0, " mBackgroundHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1069
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1070
    const-string v0, " mLastSurfaceWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1071
    const-string v0, " mLastSurfaceHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1073
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1074
    const-string v0, " mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1076
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1077
    const-string v0, " mOffsetsChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1079
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastXTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastXTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1080
    const-string v0, " mLastYTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastYTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1081
    const-string v0, " mScale="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mScale:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1083
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastRequestedWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1084
    const-string v0, " mLastRequestedHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1086
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " DisplayInfo at last updateSurfaceSize:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    const-string v0, "  rotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mRotationAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1089
    const-string v0, "  width="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayWidthAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1090
    const-string v0, "  height="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDisplayHeightAtLastSurfaceSizeUpdate:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1091
    return-void
.end method

.method getImageRegionForDisplay(Landroid/graphics/Rect;IIII)V
    .locals 14
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    .line 939
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 940
    :cond_0
    const-string v10, "ImageWallpaper"

    const-string v11, "Investigate this::Unable to get viewRatio as viewHeight is zero"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 976
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 945
    .local v3, "imageWidth":I
    iget-object v10, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 946
    .local v1, "imageHeight":I
    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    .line 947
    :cond_2
    const-string v10, "ImageWallpaper"

    const-string v11, "Investigate this::Unable to get imageRatio as imageHeight is zero"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 952
    :cond_3
    move/from16 v0, p2

    int-to-float v10, v0

    move/from16 v0, p3

    int-to-float v11, v0

    div-float v8, v10, v11

    .line 953
    .local v8, "viewRatio":F
    int-to-float v10, v3

    int-to-float v11, v1

    div-float v2, v10, v11

    .line 955
    .local v2, "imageRatio":F
    cmpg-float v10, v8, v2

    if-gtz v10, :cond_4

    .line 956
    move/from16 v0, p3

    int-to-float v10, v0

    int-to-float v11, v1

    div-float v9, v10, v11

    .line 957
    .local v9, "viewScale":F
    move/from16 v0, p2

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v7, v10

    .line 958
    .local v7, "scaledViewWidth":I
    sub-int v10, v3, v7

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 960
    .local v4, "offsetX":I
    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p4, v0

    .line 961
    div-int/lit8 p4, p4, 0x2

    .line 962
    move/from16 v0, p5

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p5, v0

    .line 963
    div-int/lit8 p5, p5, 0x2

    .line 964
    add-int v10, p4, v4

    add-int/lit8 v11, p5, 0x0

    add-int v12, v7, v4

    add-int/lit8 v12, v12, -0x1

    sub-int v12, v12, p4

    add-int/lit8 v13, v1, -0x1

    sub-int v13, v13, p5

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 966
    .end local v4    # "offsetX":I
    .end local v7    # "scaledViewWidth":I
    .end local v9    # "viewScale":F
    :cond_4
    move/from16 v0, p2

    int-to-float v10, v0

    int-to-float v11, v3

    div-float v9, v10, v11

    .line 967
    .restart local v9    # "viewScale":F
    move/from16 v0, p3

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v6, v10

    .line 968
    .local v6, "scaledViewHeight":I
    sub-int v10, v1, v6

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 970
    .local v5, "offsetY":I
    move/from16 v0, p4

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p4, v0

    .line 971
    div-int/lit8 p4, p4, 0x2

    .line 972
    move/from16 v0, p5

    int-to-float v10, v0

    div-float/2addr v10, v9

    float-to-int v0, v10

    move/from16 p5, v0

    .line 973
    div-int/lit8 p5, p5, 0x2

    .line 974
    add-int v10, p5, v5

    add-int/lit8 v11, v3, -0x1

    sub-int v11, v11, p4

    add-int v12, v6, v5

    add-int/lit8 v12, v12, -0x1

    sub-int v12, v12, p5

    move/from16 v0, p4

    invoke-virtual {p1, v0, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method getImageRegionforStatusBar(Landroid/graphics/Rect;IIII)V
    .locals 21
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    .line 1022
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 1023
    :cond_0
    const-string v17, "ImageWallpaper"

    const-string v18, "Investigate this::Unable to get viewRatio as viewHeight is zero"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1058
    :goto_0
    return-void

    .line 1027
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 1028
    .local v7, "imageWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1029
    .local v5, "imageHeight":I
    if-eqz v7, :cond_2

    if-nez v5, :cond_3

    .line 1030
    :cond_2
    const-string v17, "ImageWallpaper"

    const-string v18, "Investigate this::Unable to get imageRatio as imageHeight is zero"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1035
    :cond_3
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v15, v17, v18

    .line 1036
    .local v15, "viewRatio":F
    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v6, v17, v18

    .line 1037
    .local v6, "imageRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/ImageWallpaper;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1038
    .local v11, "res":Landroid/content/res/Resources;
    const v17, 0x1050017

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1039
    .local v10, "realstatusBarHeight":I
    div-int/lit8 v17, p5, 0x2

    add-int v14, v10, v17

    .line 1041
    .local v14, "statusBarHeight":I
    cmpg-float v17, v15, v6

    if-gtz v17, :cond_4

    .line 1042
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 1043
    .local v16, "viewScale":F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v13, v0

    .line 1044
    .local v13, "scaledViewWidth":I
    sub-int v17, v7, v13

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1046
    .local v8, "offsetX":I
    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1047
    int-to-float v0, v10

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v10, v0

    .line 1048
    const/16 v17, 0x0

    add-int v18, v13, v8

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v8, v1, v2, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 1050
    .end local v8    # "offsetX":I
    .end local v13    # "scaledViewWidth":I
    .end local v16    # "viewScale":F
    :cond_4
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    div-float v16, v17, v18

    .line 1051
    .restart local v16    # "viewScale":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v12, v0

    .line 1052
    .local v12, "scaledViewHeight":I
    sub-int v17, v5, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1054
    .local v9, "offsetY":I
    int-to-float v0, v14

    move/from16 v17, v0

    div-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v14, v0

    .line 1055
    const/16 v17, 0x0

    add-int/lit8 v18, v7, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v9, v2, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public getMobileKeybordHeight()I
    .locals 5

    .prologue
    .line 410
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "productName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 412
    const/4 v2, -0x1

    .line 426
    :goto_0
    return v2

    .line 414
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 415
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 416
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    .line 417
    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileKeyboardHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mMobileKeyboardHeight:I

    goto :goto_0
.end method

.method public isMobileKeyboard()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 390
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_MOBILE_KEYBOARD:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 392
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v2, v1, :cond_0

    .line 393
    const-string v2, "ImageWallpaper"

    const-string v3, "MOBILEKEYBOARD_COVERED_YES"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 356
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "ImageWallpaper"

    const-string v3, "onCreate:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wallpaper_tilt_status"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    .line 368
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wallpaper_tilt_status"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->wallpaperTiltSettingChanged:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mDefaultDisplay:Landroid/view/Display;

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;)V

    .line 375
    invoke-virtual {p0, v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    .line 376
    return-void

    :cond_2
    move v0, v2

    .line 366
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 380
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "ImageWallpaper"

    const-string v1, "onDestroy:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mReceiver:Lcom/android/systemui/ImageWallpaper$DrawableEngine$WallpaperObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ImageWallpaper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 386
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 387
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 3
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixels"    # I
    .param p6, "yPixels"    # I

    .prologue
    .line 527
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOffsetsChanged: xOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yOffsetStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", yPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 534
    :cond_1
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offsets changed to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_2
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mXOffset:F

    .line 538
    iput p2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mYOffset:F

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 540
    const-string v0, "onOffsetsChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkSurfaceSize(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 544
    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 548
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 549
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "ImageWallpaper"

    const-string v1, "onSurfaceChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    const-string v0, "onSurfaceChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkSurfaceSize(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    .line 553
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 566
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "ImageWallpaper"

    const-string v1, "onSurfaceCreated:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 569
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 557
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 558
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "ImageWallpaper"

    const-string v1, "onSurfaceDestroyed:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 561
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x1

    .line 573
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 574
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v1}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 575
    .local v0, "newRotation":I
    const-string v1, "ImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceRedrawNeeded: newRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-le v1, v2, :cond_0

    if-ne v0, v4, :cond_0

    .line 577
    const-string v1, "ImageWallpaper"

    const-string v2, "----onSurfaceRedrawNeeded need update"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0, v4}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 520
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 521
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 499
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_2

    .line 502
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const-string v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Visibility changed to visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mVisible:Z

    .line 506
    const-string v0, "onVisibilityChanged"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->checkSurfaceSize(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v0, v0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    if-eqz v0, :cond_3

    .line 509
    const-string v0, "ImageWallpaper"

    const-string v1, "onVisibilityChanged(): Tilt status changed / call drawFrame with forceUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    .line 516
    :cond_2
    :goto_0
    return-void

    .line 513
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->drawFrame()V

    goto :goto_0
.end method

.method public trimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, -0x1

    .line 340
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 342
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "ImageWallpaper"

    const-string v1, "trimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackground:Landroid/graphics/Bitmap;

    .line 347
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 348
    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 349
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 351
    :cond_1
    return-void
.end method

.method updateSurfaceSize(Landroid/view/SurfaceHolder;Landroid/view/DisplayInfo;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 433
    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v2, :cond_2

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 436
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 437
    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    if-gtz v2, :cond_2

    .line 439
    :cond_1
    iget v2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 440
    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 445
    :cond_2
    iget v2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 446
    .local v1, "surfaceWidth":I
    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 460
    .local v0, "surfaceHeight":I
    # getter for: Lcom/android/systemui/ImageWallpaper;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surfaceWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " surfaceHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getDisplayID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    # getter for: Lcom/android/systemui/ImageWallpaper;->SUPPORT_TILT_WALLPAPER:Z
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 463
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    iget-boolean v2, v2, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    if-eqz v2, :cond_5

    .line 464
    iget v2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 465
    iget v2, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v3, v3, 0xa

    add-int v1, v2, v3

    .line 467
    :cond_4
    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_5

    .line 468
    iget v2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v3, v3, 0xa

    add-int v0, v2, v3

    .line 488
    :cond_5
    const-string v2, "ImageWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurfaceSize Width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-interface {p1, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 490
    iput v1, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedWidth:I

    .line 491
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->mLastRequestedHeight:I

    .line 495
    return-void
.end method
