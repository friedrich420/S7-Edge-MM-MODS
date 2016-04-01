.class public Lcom/android/server/am/VirtualScreen;
.super Ljava/lang/Object;
.source "VirtualScreen.java"


# static fields
.field private static final DEBUG_OFFSET:Z

.field private static final TAG:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private final VIRTUALSCREEN_APP_TRANSITION_DURATION:I

.field private final VIRTUALSCREEN_POSITION_BOTTOM:I

.field private final VIRTUALSCREEN_POSITION_LEFT:I

.field private final VIRTUALSCREEN_POSITION_RIGHT:I

.field private final VIRTUALSCREEN_POSITION_TOP:I

.field private final VIRTUALSCREEN_POSITION_UNKNOWN:I

.field private mAllowAppTransition:Z

.field private mBindDisplayId:I

.field private final mDefaultDisplayRect:Landroid/graphics/Rect;

.field private mDisplayId:I

.field private mIsVisible:Z

.field private mOffsetUid:I

.field private mPosition:I

.field private mScreen:Landroid/graphics/Rect;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DEBUG_OFFSET:Z

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;)V
    .registers 10
    .param p1, "displayId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, mAllowAppTransition:Z

    .line 46
    iput v2, p0, mDisplayId:I

    .line 47
    iput v2, p0, mBindDisplayId:I

    .line 49
    iput v2, p0, mOffsetUid:I

    .line 52
    iput v3, p0, VIRTUALSCREEN_POSITION_UNKNOWN:I

    .line 53
    iput v4, p0, VIRTUALSCREEN_POSITION_LEFT:I

    .line 54
    iput v5, p0, VIRTUALSCREEN_POSITION_TOP:I

    .line 55
    iput v6, p0, VIRTUALSCREEN_POSITION_RIGHT:I

    .line 56
    const/4 v2, 0x4

    iput v2, p0, VIRTUALSCREEN_POSITION_BOTTOM:I

    .line 57
    const/16 v2, 0x1f4

    iput v2, p0, VIRTUALSCREEN_APP_TRANSITION_DURATION:I

    .line 60
    iput-object p2, p0, mScreen:Landroid/graphics/Rect;

    .line 61
    iput p1, p0, mDisplayId:I

    .line 62
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenManagerService;->getDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 64
    .local v0, "defaultDisplayRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    iput-boolean v2, p0, mIsVisible:Z

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, mScreen:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 69
    .local v1, "screen":Landroid/graphics/Rect;
    iput v3, p0, mPosition:I

    .line 70
    iget-object v2, p0, mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_50

    .line 71
    iput v4, p0, mPosition:I

    .line 79
    :cond_4f
    :goto_4f
    return-void

    .line 72
    :cond_50
    iget-object v2, p0, mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_5d

    .line 73
    iput v6, p0, mPosition:I

    goto :goto_4f

    .line 74
    :cond_5d
    iget-object v2, p0, mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_6b

    .line 75
    const/4 v2, 0x4

    iput v2, p0, mPosition:I

    goto :goto_4f

    .line 76
    :cond_6b
    iget-object v2, p0, mScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_4f

    .line 77
    iput v5, p0, mPosition:I

    goto :goto_4f
.end method


# virtual methods
.method public allowAppTransition()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, mAllowAppTransition:Z

    return v0
.end method

.method public computeScreenConfiguration(I)V
    .registers 14
    .param p1, "rotation"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 277
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/VirtualScreenManagerService;->getDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 322
    :goto_12
    return-void

    .line 281
    :cond_13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 282
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/VirtualScreenManagerService;->getInitialDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 284
    .local v5, "screenF":Landroid/graphics/RectF;
    packed-switch p1, :pswitch_data_f2

    .line 301
    :goto_28
    :pswitch_28
    const/4 v1, 0x0

    .line 302
    .local v1, "ratioX":F
    const/4 v2, 0x0

    .line 305
    .local v2, "ratioY":F
    iget v9, p0, mPosition:I

    if-nez v9, :cond_4a

    .line 306
    iget-object v9, p0, mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float v1, v9, v10

    .line 307
    iget-object v9, p0, mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget-object v10, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v2, v9, v10

    .line 310
    :cond_4a
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 311
    iget-object v9, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 313
    iget-object v9, p0, mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-eqz v9, :cond_ec

    iget-object v9, p0, mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, mScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int v6, v9, v10

    .line 314
    .local v6, "signX":I
    :goto_66
    iget-object v9, p0, mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-eqz v9, :cond_ef

    iget-object v8, p0, mScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, mScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    div-int v7, v8, v9

    .line 316
    .local v7, "signY":I
    :goto_7a
    iget-object v8, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v3, v6, v8

    .line 317
    .local v3, "rotatedX":I
    iget-object v8, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int v4, v7, v8

    .line 318
    .local v4, "rotatedY":I
    int-to-float v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    int-to-float v9, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    .line 320
    iget-object v8, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 321
    const-string v8, "VirtualScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "computeScreenConfiguration(): change rect to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 288
    .end local v1    # "ratioX":F
    .end local v2    # "ratioY":F
    .end local v3    # "rotatedX":I
    .end local v4    # "rotatedY":I
    .end local v6    # "signX":I
    .end local v7    # "signY":I
    :pswitch_be
    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v0, v9, v11, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 289
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v0, v9, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_28

    .line 292
    :pswitch_cc
    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {v0, v9, v11, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 293
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_28

    .line 296
    :pswitch_de
    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v0, v9, v11, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 297
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v0, v11, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_28

    .restart local v1    # "ratioX":F
    .restart local v2    # "ratioY":F
    :cond_ec
    move v6, v8

    .line 313
    goto/16 :goto_66

    .restart local v6    # "signX":I
    :cond_ef
    move v7, v8

    .line 314
    goto :goto_7a

    .line 284
    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_28
        :pswitch_be
        :pswitch_cc
        :pswitch_de
    .end packed-switch
.end method

.method public createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "enter"    # Z
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v2, 0x0

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "trans":Landroid/view/animation/Animation;
    iget v1, p0, mPosition:I

    packed-switch v1, :pswitch_data_86

    .line 268
    :goto_7
    if-eqz v0, :cond_11

    .line 269
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 270
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 272
    :cond_11
    return-object v0

    .line 233
    :pswitch_12
    if-eqz p1, :cond_21

    .line 234
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 236
    :cond_21
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 238
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 241
    :pswitch_2f
    if-eqz p1, :cond_3e

    .line 242
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 244
    :cond_3e
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 246
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 249
    :pswitch_4c
    if-eqz p1, :cond_5c

    .line 250
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 252
    :cond_5c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 254
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 257
    :pswitch_69
    if-eqz p1, :cond_79

    .line 258
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 260
    :cond_79
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/Animation;
    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 262
    .restart local v0    # "trans":Landroid/view/animation/Animation;
    goto :goto_7

    .line 231
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_12
        :pswitch_2f
        :pswitch_4c
        :pswitch_69
    .end packed-switch
.end method

.method public getBindDisplayId()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, mBindDisplayId:I

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method public getOffsetByPosition(F)Landroid/graphics/PointF;
    .registers 6
    .param p1, "scale"    # F

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenManagerService;->getDefaultDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 96
    .local v0, "logicalDisplay":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 98
    .local v1, "point":Landroid/graphics/PointF;
    iget v2, p0, mPosition:I

    packed-switch v2, :pswitch_data_52

    .line 119
    :goto_13
    return-object v1

    .line 100
    :pswitch_14
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    goto :goto_13

    .line 104
    :pswitch_23
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_13

    .line 108
    :pswitch_32
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    goto :goto_13

    .line 112
    :pswitch_42
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    neg-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_13

    .line 98
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_14
        :pswitch_23
        :pswitch_32
        :pswitch_42
    .end packed-switch
.end method

.method public getOffsetUid()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, mOffsetUid:I

    return v0
.end method

.method public getOffsetX()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, mXOffset:I

    return v0
.end method

.method public getOffsetY()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, mYOffset:I

    return v0
.end method

.method public getScreenSize()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 127
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getVisible()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, mIsVisible:Z

    return v0
.end method

.method public getX()I
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, mXOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getY()I
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, mScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, mYOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isDefaultDisplay()Z
    .registers 4

    .prologue
    .line 131
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 132
    .local v0, "screenWithOffset":Landroid/graphics/Rect;
    iget v1, p0, mXOffset:I

    iget v2, p0, mYOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 133
    iget-object v1, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 134
    const/4 v1, 0x1

    .line 137
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public prepareTransition()V
    .registers 2

    .prologue
    .line 206
    iget v0, p0, mPosition:I

    packed-switch v0, :pswitch_data_2c

    .line 226
    :goto_5
    return-void

    .line 208
    :pswitch_6
    iget-object v0, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, mXOffset:I

    goto :goto_5

    .line 212
    :pswitch_f
    iget-object v0, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, mYOffset:I

    goto :goto_5

    .line 216
    :pswitch_18
    iget-object v0, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, mXOffset:I

    goto :goto_5

    .line 220
    :pswitch_22
    iget-object v0, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, mYOffset:I

    goto :goto_5

    .line 206
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_f
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method

.method public setAllowAppTransition(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, mAllowAppTransition:Z

    .line 326
    return-void
.end method

.method public setBindDisplayId(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 184
    iget v0, p0, mBindDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 185
    const-string v0, "VirtualScreen"

    const-string v1, "Already binded display"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    .line 189
    :goto_d
    return v0

    .line 188
    :cond_e
    iput p1, p0, mBindDisplayId:I

    .line 189
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public setOffset(II)Z
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 141
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, setOffset(IIIZ)Z

    move-result v0

    return v0
.end method

.method public setOffset(IIIZ)Z
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "callingUid"    # I
    .param p4, "force"    # Z

    .prologue
    .line 145
    iget v3, p0, mOffsetUid:I

    if-ltz v3, :cond_6

    if-eqz p4, :cond_a5

    .line 146
    :cond_6
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() set offset from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mOffsetUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " force : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput p3, p0, mOffsetUid:I

    .line 154
    :cond_37
    if-nez p1, :cond_3e

    if-nez p2, :cond_3e

    .line 155
    const/4 v3, -0x1

    iput v3, p0, mOffsetUid:I

    .line 158
    :cond_3e
    iput p1, p0, mXOffset:I

    .line 159
    iput p2, p0, mYOffset:I

    .line 161
    sget-boolean v3, DEBUG_OFFSET:Z

    if-eqz v3, :cond_69

    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() mXOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mYOffset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_69
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, mScreen:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 165
    .local v2, "screenWithOffset":Landroid/graphics/Rect;
    iget v3, p0, mXOffset:I

    iget v4, p0, mYOffset:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 167
    .local v0, "defaultRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    .line 168
    .local v1, "isVisible":Z
    iget-boolean v3, p0, mIsVisible:Z

    if-eq v3, v1, :cond_a3

    .line 169
    iput-boolean v1, p0, mIsVisible:Z

    .line 170
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() mIsVisible changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mIsVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_a3
    const/4 v3, 0x1

    .end local v0    # "defaultRect":Landroid/graphics/Rect;
    .end local v1    # "isVisible":Z
    .end local v2    # "screenWithOffset":Landroid/graphics/Rect;
    :goto_a4
    return v3

    .line 149
    :cond_a5
    if-lez p3, :cond_37

    iget v3, p0, mOffsetUid:I

    if-eq v3, p3, :cond_37

    .line 150
    const-string v3, "VirtualScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOffset() failed set offset current uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mOffsetUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wrong uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v3, 0x0

    goto :goto_a4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 334
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo v1, "{Rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ", Offset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, ", mBindDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mBindDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, ", mDefaultDisplayRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mDefaultDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    const-string v1, ", mOffsetUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mOffsetUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, ", mAllowAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAllowAppTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 342
    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unbind()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, -0x1

    iput v0, p0, mBindDisplayId:I

    .line 194
    return-void
.end method
