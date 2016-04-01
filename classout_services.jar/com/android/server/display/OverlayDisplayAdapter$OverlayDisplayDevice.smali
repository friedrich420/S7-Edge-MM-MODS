.class abstract Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field private mActiveMode:I

.field private final mDefaultMode:I

.field private final mDisplayPresentationDeadlineNanos:J

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mModes:[Landroid/view/Display$Mode;

.field private final mName:Ljava/lang/String;

.field private final mRawModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshRate:F

.field private final mSecure:Z

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V
    .registers 20
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "activeMode"    # I
    .param p6, "defaultMode"    # I
    .param p7, "refreshRate"    # F
    .param p8, "presentationDeadlineNanos"    # J
    .param p10, "secure"    # Z
    .param p11, "state"    # I
    .param p12, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p13, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IIFJZI",
            "Landroid/graphics/SurfaceTexture;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p4, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    iput-object p1, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overlay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 243
    iput-object p3, p0, mName:Ljava/lang/String;

    .line 244
    iput p7, p0, mRefreshRate:F

    .line 245
    iput-wide p8, p0, mDisplayPresentationDeadlineNanos:J

    .line 246
    move/from16 v0, p10

    iput-boolean v0, p0, mSecure:Z

    .line 247
    move/from16 v0, p11

    iput v0, p0, mState:I

    .line 248
    move-object/from16 v0, p12

    iput-object v0, p0, mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 249
    iput-object p4, p0, mRawModes:Ljava/util/List;

    .line 250
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display$Mode;

    iput-object v3, p0, mModes:[Landroid/view/Display$Mode;

    .line 251
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_53

    .line 252
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 253
    .local v2, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    iget-object v3, p0, mModes:[Landroid/view/Display$Mode;

    iget v4, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v5, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    invoke-static {v4, v5, p7}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v4

    aput-object v4, v3, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 255
    .end local v2    # "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    :cond_53
    iput p5, p0, mActiveMode:I

    .line 256
    iput p6, p0, mDefaultMode:I

    .line 257
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 260
    iput-object v1, p0, mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 261
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_e

    .line 262
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 263
    iput-object v1, p0, mSurface:Landroid/view/Surface;

    .line 265
    :cond_e
    invoke-virtual {p0}, getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 266
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 285
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v2, :cond_98

    .line 286
    iget-object v2, p0, mModes:[Landroid/view/Display$Mode;

    iget v3, p0, mActiveMode:I

    aget-object v0, v2, v3

    .line 287
    .local v0, "mode":Landroid/view/Display$Mode;
    iget-object v2, p0, mRawModes:Ljava/util/List;

    iget v3, p0, mActiveMode:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 288
    .local v1, "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 289
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, mName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 290
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, getUniqueId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 291
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 292
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 293
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 294
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, mModes:[Landroid/view/Display$Mode;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 295
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, mModes:[Landroid/view/Display$Mode;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 296
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 297
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 298
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 299
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v4, p0, mDisplayPresentationDeadlineNanos:J

    const-wide/32 v6, 0x3b9aca00

    iget v3, p0, mRefreshRate:F

    float-to-int v3, v3

    int-to-long v8, v3

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 301
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 302
    iget-boolean v2, p0, mSecure:Z

    if-eqz v2, :cond_89

    .line 303
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 305
    :cond_89
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 306
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 307
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, p0, mState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 309
    .end local v0    # "mode":Landroid/view/Display$Mode;
    .end local v1    # "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    :cond_98
    iget-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v2
.end method

.method public abstract onModeChangedLocked(I)V
.end method

.method public performTraversalInTransactionLocked()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_16

    .line 271
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    if-nez v0, :cond_11

    .line 272
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 274
    :cond_11
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 276
    :cond_16
    return-void
.end method

.method public requestColorTransformAndModeInTransactionLocked(II)V
    .registers 8
    .param p1, "color"    # I
    .param p2, "id"    # I

    .prologue
    .line 314
    const/4 v1, -0x1

    .line 315
    .local v1, "index":I
    if-nez p2, :cond_2c

    .line 317
    const/4 v1, 0x0

    .line 326
    :cond_4
    :goto_4
    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    .line 327
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reverting to default."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v1, p0, mDefaultMode:I

    .line 330
    :cond_27
    iget v2, p0, mActiveMode:I

    if-ne v2, v1, :cond_41

    .line 337
    :goto_2b
    return-void

    .line 319
    :cond_2c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    iget-object v2, p0, mModes:[Landroid/view/Display$Mode;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 320
    iget-object v2, p0, mModes:[Landroid/view/Display$Mode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p2, :cond_3e

    .line 321
    move v1, v0

    .line 322
    goto :goto_4

    .line 319
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 333
    .end local v0    # "i":I
    :cond_41
    iput v1, p0, mActiveMode:I

    .line 334
    const/4 v2, 0x0

    iput-object v2, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 335
    iget-object v2, p0, this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 336
    invoke-virtual {p0, v1}, onModeChangedLocked(I)V

    goto :goto_2b
.end method

.method public setStateLocked(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 279
    iput p1, p0, mState:I

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 281
    return-void
.end method
