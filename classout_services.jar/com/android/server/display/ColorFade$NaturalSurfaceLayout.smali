.class final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p2, "displayId"    # I
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;

    .prologue
    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1242
    iput-object p1, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1243
    iput p2, p0, mDisplayId:I

    .line 1244
    iput-object p3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1245
    iget-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 1246
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 1249
    monitor-enter p0

    .line 1250
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1251
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    .line 1252
    iget-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 1253
    return-void

    .line 1251
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onDisplayTransaction()V
    .registers 7

    .prologue
    .line 1257
    monitor-enter p0

    .line 1258
    :try_start_1
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_7

    .line 1259
    monitor-exit p0

    .line 1283
    :goto_6
    return-void

    .line 1262
    :cond_7
    iget-object v1, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, mDisplayId:I

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1263
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    packed-switch v1, :pswitch_data_6e

    .line 1282
    :goto_14
    monitor-exit p0

    goto :goto_6

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v1

    .line 1265
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_19
    :try_start_19
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1266
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_14

    .line 1269
    :pswitch_2c
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1270
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_14

    .line 1273
    :pswitch_41
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1275
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_14

    .line 1278
    :pswitch_58
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1279
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_6c
    .catchall {:try_start_19 .. :try_end_6c} :catchall_16

    goto :goto_14

    .line 1263
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2c
        :pswitch_41
        :pswitch_58
    .end packed-switch
.end method
