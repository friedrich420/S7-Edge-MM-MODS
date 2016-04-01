.class public Landroid/view/Gravity;
.super Ljava/lang/Object;
.source "Gravity.java"


# static fields
.field public static final AXIS_CLIP:I = 0x8

.field public static final AXIS_PULL_AFTER:I = 0x4

.field public static final AXIS_PULL_BEFORE:I = 0x2

.field public static final AXIS_SPECIFIED:I = 0x1

.field public static final AXIS_X_SHIFT:I = 0x0

.field public static final AXIS_Y_SHIFT:I = 0x4

.field public static final BOTTOM:I = 0x50

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final CLIP_HORIZONTAL:I = 0x8

.field public static final CLIP_VERTICAL:I = 0x80

.field public static final DISPLAY_CLIP_HORIZONTAL:I = 0x1000000

.field public static final DISPLAY_CLIP_VERTICAL:I = 0x10000000

.field public static final END:I = 0x800005

.field public static final FILL:I = 0x77

.field public static final FILL_HORIZONTAL:I = 0x7

.field public static final FILL_VERTICAL:I = 0x70

.field public static final HORIZONTAL_GRAVITY_MASK:I = 0x7

.field public static final LEFT:I = 0x3

.field public static final NO_GRAVITY:I = 0x0

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final RIGHT:I = 0x5

.field public static final START:I = 0x800003

.field public static final TOP:I = 0x30

.field public static final VERTICAL_GRAVITY_MASK:I = 0x70


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 12
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v4, 0x80

    const/16 v3, 0x8

    .line 188
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_e2

    .line 224
    :pswitch_9
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 225
    iget v0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 229
    :cond_13
    :goto_13
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_f0

    .line 265
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 266
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 269
    :cond_22
    :goto_22
    return-void

    .line 190
    :pswitch_23
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 192
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 193
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_13

    .line 195
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_44

    .line 196
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 198
    :cond_44
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_13

    .line 199
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_13

    .line 204
    :pswitch_4f
    iget v0, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 205
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 206
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_13

    .line 208
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_13

    .line 209
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_13

    .line 214
    :pswitch_68
    iget v0, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p4

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 215
    iget v0, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 216
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_13

    .line 218
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_13

    .line 219
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_13

    .line 231
    :sswitch_81
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 233
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 234
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_22

    .line 236
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_a2

    .line 237
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 239
    :cond_a2
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_22

    .line 240
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_22

    .line 245
    :sswitch_ae
    iget v0, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 246
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 247
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_22

    .line 249
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_22

    .line 250
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_22

    .line 255
    :sswitch_c8
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p5

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 256
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 257
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_22

    .line 259
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_22

    .line 260
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_22

    .line 188
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_23
        :pswitch_9
        :pswitch_4f
        :pswitch_9
        :pswitch_68
    .end packed-switch

    .line 229
    :sswitch_data_f0
    .sparse-switch
        0x0 -> :sswitch_81
        0x20 -> :sswitch_ae
        0x40 -> :sswitch_c8
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;FFZ)V
    .registers 16
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "hScale"    # F
    .param p8, "vScale"    # F
    .param p9, "isSurfaceView"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/16 v4, 0x80

    const/16 v3, 0x8

    .line 276
    and-int/lit8 v0, p0, 0x6

    packed-switch v0, :pswitch_data_16c

    .line 317
    :pswitch_b
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, p4

    mul-float/2addr v1, p7

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 318
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 322
    :cond_20
    :goto_20
    and-int/lit8 v0, p0, 0x60

    sparse-switch v0, :sswitch_data_17a

    .line 364
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v1, p7

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 365
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 368
    :cond_3a
    :goto_3a
    return-void

    .line 278
    :pswitch_3b
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, p7

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    int-to-float v1, p4

    mul-float/2addr v1, p7

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 280
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 281
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_20

    .line 283
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_64

    .line 284
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 286
    :cond_64
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_20

    .line 287
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_20

    .line 292
    :pswitch_6f
    if-eqz p9, :cond_93

    .line 293
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, p4

    mul-float/2addr v1, p7

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 297
    :goto_7f
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 298
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_20

    .line 300
    iget v0, p6, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_20

    .line 301
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    goto :goto_20

    .line 295
    :cond_93
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float v1, p4

    mul-float/2addr v1, p7

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto :goto_7f

    .line 306
    :pswitch_a0
    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p4

    int-to-float v1, v1

    mul-float/2addr v1, p7

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 307
    iget v0, p6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    int-to-float v1, p1

    mul-float/2addr v1, p7

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 308
    iget v0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 309
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v3, :cond_20

    .line 311
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_20

    .line 312
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_20

    .line 324
    :sswitch_d2
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, p8

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    int-to-float v1, p5

    mul-float/2addr v1, p8

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 327
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 328
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_3a

    .line 330
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_fb

    .line 331
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 333
    :cond_fb
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3a

    .line 334
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3a

    .line 339
    :sswitch_107
    if-eqz p9, :cond_12c

    .line 340
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v1, p8

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 344
    :goto_117
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 345
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_3a

    .line 347
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3a

    .line 348
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3a

    .line 342
    :cond_12c
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    int-to-float v1, p5

    mul-float/2addr v1, p8

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto :goto_117

    .line 353
    :sswitch_139
    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, p5

    int-to-float v1, v1

    mul-float/2addr v1, p8

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 354
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    int-to-float v1, p2

    mul-float/2addr v1, p8

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 355
    iget v0, p6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 356
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v4, :cond_3a

    .line 358
    iget v0, p6, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_3a

    .line 359
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_3a

    .line 276
    nop

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_b
        :pswitch_6f
        :pswitch_b
        :pswitch_a0
    .end packed-switch

    .line 322
    :sswitch_data_17a
    .sparse-switch
        0x0 -> :sswitch_d2
        0x20 -> :sswitch_107
        0x40 -> :sswitch_139
    .end sparse-switch
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 15
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "layoutDirection"    # I

    .prologue
    .line 398
    invoke-static {p0, p7}, getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 399
    invoke-static/range {v0 .. v6}, apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 400
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 139
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 140
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 13
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-static {p0, p5}, getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absGravity":I
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move-object v6, p4

    .line 162
    invoke-static/range {v0 .. v6}, apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 163
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;

    .prologue
    .line 419
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_33

    .line 420
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_f

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 421
    :cond_f
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_19

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 437
    :cond_19
    :goto_19
    const/high16 v1, 0x1000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6e

    .line 438
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_28

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 439
    :cond_28
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_32

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 454
    :cond_32
    :goto_32
    return-void

    .line 423
    :cond_33
    const/4 v0, 0x0

    .line 424
    .local v0, "off":I
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_56

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 426
    :cond_40
    :goto_40
    if-eqz v0, :cond_19

    .line 427
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_63

    .line 428
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 429
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_19

    .line 425
    :cond_56
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_40

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    goto :goto_40

    .line 431
    :cond_63
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 432
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_19

    .line 441
    .end local v0    # "off":I
    :cond_6e
    const/4 v0, 0x0

    .line 442
    .restart local v0    # "off":I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_91

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v2

    .line 444
    :cond_7b
    :goto_7b
    if-eqz v0, :cond_32

    .line 445
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_9e

    .line 446
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 447
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_32

    .line 443
    :cond_91
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_7b

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    goto :goto_7b

    .line 449
    :cond_9e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 450
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_32
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;FF)V
    .registers 10
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "hScale"    # F
    .param p4, "vScale"    # F

    .prologue
    .line 484
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 485
    .local v1, "scaledDisplay":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 486
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 488
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 489
    .local v2, "scaledInoutObj":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 490
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 492
    const/high16 v3, 0x10000000

    and-int/2addr v3, p0

    if-eqz v3, :cond_7d

    .line 493
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_59

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 494
    :cond_59
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_63

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 510
    :cond_63
    :goto_63
    const/high16 v3, 0x1000000

    and-int/2addr v3, p0

    if-eqz v3, :cond_b7

    .line 511
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_72

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 512
    :cond_72
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_7c

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 527
    :cond_7c
    :goto_7c
    return-void

    .line 496
    :cond_7d
    const/4 v0, 0x0

    .line 497
    .local v0, "off":I
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_9f

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    .line 499
    :cond_8a
    :goto_8a
    if-eqz v0, :cond_63

    .line 500
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_ac

    .line 501
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 502
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_63

    .line 498
    :cond_9f
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_8a

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    goto :goto_8a

    .line 504
    :cond_ac
    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 505
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_63

    .line 514
    .end local v0    # "off":I
    :cond_b7
    const/4 v0, 0x0

    .line 515
    .restart local v0    # "off":I
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_d9

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v4

    .line 517
    :cond_c4
    :goto_c4
    if-eqz v0, :cond_7c

    .line 518
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_e6

    .line 519
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 520
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_7c

    .line 516
    :cond_d9
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_c4

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    goto :goto_c4

    .line 522
    :cond_e6
    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 523
    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v0

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_7c
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 477
    invoke-static {p0, p3}, getAbsoluteGravity(II)I

    move-result v0

    .line 478
    .local v0, "absGravity":I
    invoke-static {v0, p1, p2}, applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 479
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .registers 7
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v4, 0x800005

    const v3, 0x800003

    const/4 v2, 0x1

    .line 562
    move v0, p0

    .line 564
    .local v0, "result":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-lez v1, :cond_1d

    .line 565
    and-int v1, v0, v3

    if-ne v1, v3, :cond_21

    .line 567
    const v1, -0x800004

    and-int/2addr v0, v1

    .line 568
    if-ne p1, v2, :cond_1e

    .line 570
    or-int/lit8 v0, v0, 0x5

    .line 588
    :cond_19
    :goto_19
    const v1, -0x800001

    and-int/2addr v0, v1

    .line 590
    :cond_1d
    return v0

    .line 573
    :cond_1e
    or-int/lit8 v0, v0, 0x3

    goto :goto_19

    .line 575
    :cond_21
    and-int v1, v0, v4

    if-ne v1, v4, :cond_19

    .line 577
    const v1, -0x800006

    and-int/2addr v0, v1

    .line 578
    if-ne p1, v2, :cond_2e

    .line 580
    or-int/lit8 v0, v0, 0x3

    goto :goto_19

    .line 583
    :cond_2e
    or-int/lit8 v0, v0, 0x5

    goto :goto_19
.end method

.method public static isHorizontal(I)Z
    .registers 2
    .param p0, "gravity"    # I

    .prologue
    .line 547
    if-lez p0, :cond_a

    const v0, 0x800007

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVertical(I)Z
    .registers 2
    .param p0, "gravity"    # I

    .prologue
    .line 537
    if-lez p0, :cond_8

    and-int/lit8 v0, p0, 0x70

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
