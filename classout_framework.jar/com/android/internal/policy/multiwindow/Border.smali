.class public Lcom/android/internal/policy/multiwindow/Border;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field public static final DRAW_ALL:I = 0xf

.field public static final DRAW_BOTTOM:I = 0x8

.field public static final DRAW_LEFT:I = 0x1

.field public static final DRAW_RIGHT:I = 0x2

.field public static final DRAW_TOP:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawOption:I

.field private mInnerLineColor:I

.field private final mIsSupportDrawableFrame:Z

.field private final mIsSupportUnfocusedLine:Z

.field private final mIsSupportUnfocusedShadow:Z

.field private mLastDrawnOption:I

.field private mLastFocus:Z

.field private mOutLineColor:I

.field private mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

.field private mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mPopupWindowCocktailOverlapSize:I

.field private mPopupWindowFocusColor:I

.field private mPopupWindowFocusOutlineColor:I

.field private mPopupWindowUnfocusColor:I

.field private mPopupWindowUnfocusOutlineColor:I

.field private mSplitUnfocusColor:I

.field private mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

.field private mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

.field private mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

.field private mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

.field private mSplitUnfocusOutlineColor:I

.field private mSplitUnfocusThickness:I

.field private mThicknessBorderPaintInner:F

.field private mThicknessBorderPaintOuter:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Landroid/view/WindowManager;

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v5, p0, mDrawOption:I

    .line 74
    iput v5, p0, mLastDrawnOption:I

    .line 76
    iput-boolean v4, p0, mLastFocus:Z

    .line 79
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, mWindowManager:Landroid/view/WindowManager;

    .line 82
    iput-boolean v4, p0, mIsSupportUnfocusedShadow:Z

    .line 83
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, mIsSupportUnfocusedLine:Z

    .line 84
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, mIsSupportDrawableFrame:Z

    .line 86
    iget-boolean v4, p0, mIsSupportUnfocusedShadow:Z

    if-eqz v4, :cond_115

    .line 87
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805b4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    .local v1, "leftUnfocus":Landroid/graphics/Bitmap;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805b5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, "rightUnfocus":Landroid/graphics/Bitmap;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805b6

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 90
    .local v3, "topUnfocus":Landroid/graphics/Bitmap;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805b3

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, "bottomUnfocus":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

    .line 92
    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

    .line 93
    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

    .line 94
    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, mSplitUnfocusThickness:I

    .line 105
    .end local v0    # "bottomUnfocus":Landroid/graphics/Bitmap;
    .end local v1    # "leftUnfocus":Landroid/graphics/Bitmap;
    .end local v2    # "rightUnfocus":Landroid/graphics/Bitmap;
    .end local v3    # "topUnfocus":Landroid/graphics/Bitmap;
    :cond_8c
    :goto_8c
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106018f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, mPopupWindowFocusColor:I

    .line 106
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060190

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, mPopupWindowUnfocusColor:I

    .line 107
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060191

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, mPopupWindowFocusOutlineColor:I

    .line 108
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060192

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, mPopupWindowUnfocusOutlineColor:I

    .line 110
    iget-boolean v4, p0, mIsSupportDrawableFrame:Z

    if-eqz v4, :cond_171

    .line 111
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c2

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    .line 112
    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/graphics/NinePatch;

    iget-object v7, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v4, p0, mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 113
    iget-object v4, p0, mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 114
    iget-object v4, p0, mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v5, p0, mPopupWindowUnfocusColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 115
    iget-object v4, p0, mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v4, p0, mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 116
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, mPopupWindowCocktailOverlapSize:I

    .line 125
    :cond_114
    :goto_114
    return-void

    .line 96
    :cond_115
    iget-boolean v4, p0, mIsSupportUnfocusedLine:Z

    if-eqz v4, :cond_148

    .line 97
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, mSplitUnfocusThickness:I

    .line 98
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106018d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, mSplitUnfocusColor:I

    .line 99
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106018e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, mSplitUnfocusOutlineColor:I

    goto/16 :goto_8c

    .line 100
    :cond_148
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 101
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mSplitUnfocusThickness:I

    .line 102
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106019d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, mSplitUnfocusColor:I

    goto/16 :goto_8c

    .line 118
    :cond_171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, mThicknessBorderPaintInner:F

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, mThicknessBorderPaintOuter:F

    .line 120
    iget-boolean v4, p0, mLastFocus:Z

    if-nez v4, :cond_114

    .line 121
    iget v4, p0, mPopupWindowUnfocusColor:I

    iput v4, p0, mInnerLineColor:I

    .line 122
    iget v4, p0, mPopupWindowUnfocusOutlineColor:I

    iput v4, p0, mOutLineColor:I

    goto/16 :goto_114
.end method

.method private drawBorderBitmap(Landroid/graphics/Canvas;II)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 172
    iget v2, p0, mLastDrawnOption:I

    iget v3, p0, mDrawOption:I

    if-eq v2, v3, :cond_30

    .line 173
    iget-object v0, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    .line 174
    .local v0, "clippingBorder":Landroid/graphics/Bitmap;
    iget v2, p0, mDrawOption:I

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, v2, 0xf

    .line 175
    .local v1, "removeSide":I
    packed-switch v1, :pswitch_data_9c

    .line 193
    :goto_12
    :pswitch_12
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/graphics/NinePatch;

    iget-object v5, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v2, p0, mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 194
    iget-boolean v2, p0, mLastFocus:Z

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, setFocus(ZZ)V

    .line 196
    .end local v0    # "clippingBorder":Landroid/graphics/Bitmap;
    .end local v1    # "removeSide":I
    :cond_30
    invoke-virtual {p1, v7, v7, p2, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 197
    iget-object v2, p0, mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v7, v7, p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 198
    iget-object v2, p0, mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    return-void

    .line 177
    .restart local v0    # "clippingBorder":Landroid/graphics/Bitmap;
    .restart local v1    # "removeSide":I
    :pswitch_3e
    iget-object v2, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, mPopupWindowCocktailOverlapSize:I

    iget-object v4, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    goto :goto_12

    .line 181
    :pswitch_56
    iget-object v2, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, mPopupWindowCocktailOverlapSize:I

    iget-object v4, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v4, v5

    iget-object v5, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v3, v7, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    goto :goto_12

    .line 185
    :pswitch_6e
    iget-object v2, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v3, v4

    iget-object v4, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v7, v7, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    goto :goto_12

    .line 189
    :pswitch_84
    iget-object v2, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v4, v5

    invoke-static {v2, v7, v7, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_12

    .line 175
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_56
        :pswitch_6e
        :pswitch_12
        :pswitch_3e
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_84
    .end packed-switch
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IIFI)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "thickness"    # F
    .param p5, "color"    # I

    .prologue
    .line 202
    const/4 v8, 0x0

    .line 203
    .local v8, "rotationAdjX":F
    const/4 v9, 0x0

    .line 207
    .local v9, "rotationAdjY":F
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 208
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 209
    .local v6, "degrees":I
    packed-switch v6, :pswitch_data_80

    .line 220
    :goto_f
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7b

    .line 221
    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p2

    int-to-float v4, p3

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 222
    int-to-float v0, p2

    sub-float v3, v0, p4

    int-to-float v0, p3

    sub-float v4, v0, p4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, p4

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 224
    iget v0, p0, mDrawOption:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3e

    .line 225
    const/4 v2, 0x0

    int-to-float v0, p2

    sub-float v3, v0, v8

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v8

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 227
    :cond_3e
    iget v0, p0, mDrawOption:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_52

    .line 228
    int-to-float v0, p3

    sub-float v2, v0, p4

    int-to-float v0, p2

    sub-float v3, v0, v8

    int-to-float v4, p3

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 230
    :cond_52
    iget v0, p0, mDrawOption:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_64

    .line 231
    const/4 v1, 0x0

    int-to-float v0, p3

    sub-float v4, v0, v9

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v9

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 233
    :cond_64
    iget v0, p0, mDrawOption:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_78

    .line 234
    int-to-float v0, p2

    sub-float v1, v0, p4

    int-to-float v3, p2

    int-to-float v0, p3

    sub-float v4, v0, v9

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 236
    :cond_78
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 238
    :cond_7b
    return-void

    .line 212
    :pswitch_7c
    move v9, p4

    .line 213
    goto :goto_f

    .line 216
    :pswitch_7e
    move v8, p4

    goto :goto_f

    .line 209
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_7e
        :pswitch_7c
        :pswitch_7e
    .end packed-switch
.end method

.method private drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mTmpDrawFloatRect"    # Landroid/graphics/RectF;

    .prologue
    .line 379
    sget-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 380
    iget v0, p0, mSplitUnfocusColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 381
    return-void
.end method

.method private setFocus(ZZ)V
    .registers 5
    .param p1, "focus"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 136
    iget-boolean v0, p0, mLastFocus:Z

    if-ne v0, p1, :cond_7

    if-nez p2, :cond_7

    .line 160
    :goto_6
    return-void

    .line 140
    :cond_7
    iget-boolean v0, p0, mIsSupportDrawableFrame:Z

    if-eqz v0, :cond_3b

    .line 141
    iget-object v0, p0, mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 142
    iget-object v0, p0, mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 143
    if-eqz p1, :cond_2c

    .line 144
    iget-object v0, p0, mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v1, p0, mPopupWindowFocusColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 145
    iget-object v0, p0, mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v1, p0, mPopupWindowFocusColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 159
    :goto_29
    iput-boolean p1, p0, mLastFocus:Z

    goto :goto_6

    .line 147
    :cond_2c
    iget-object v0, p0, mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v1, p0, mPopupWindowUnfocusColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .line 148
    iget-object v0, p0, mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v1, p0, mPopupWindowUnfocusColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    goto :goto_29

    .line 151
    :cond_3b
    if-eqz p1, :cond_46

    .line 152
    iget v0, p0, mPopupWindowFocusColor:I

    iput v0, p0, mInnerLineColor:I

    .line 153
    iget v0, p0, mPopupWindowFocusOutlineColor:I

    iput v0, p0, mOutLineColor:I

    goto :goto_29

    .line 155
    :cond_46
    iget v0, p0, mPopupWindowUnfocusColor:I

    iput v0, p0, mInnerLineColor:I

    .line 156
    iget v0, p0, mPopupWindowUnfocusOutlineColor:I

    iput v0, p0, mOutLineColor:I

    goto :goto_29
.end method


# virtual methods
.method public drawFocusBorder(Landroid/graphics/Canvas;II)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 163
    iget-boolean v0, p0, mIsSupportDrawableFrame:Z

    if-eqz v0, :cond_8

    .line 164
    invoke-direct {p0, p1, p2, p3}, drawBorderBitmap(Landroid/graphics/Canvas;II)V

    .line 169
    :goto_7
    return-void

    .line 166
    :cond_8
    iget v4, p0, mThicknessBorderPaintInner:F

    iget v5, p0, mInnerLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    .line 167
    iget v4, p0, mThicknessBorderPaintOuter:F

    iget v5, p0, mOutLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    goto :goto_7
.end method

.method public drawUnfocusBorder(Landroid/graphics/Canvas;III)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 241
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 242
    .local v3, "mTmpDrawRect":Landroid/graphics/Rect;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 244
    .local v1, "conf":Landroid/content/res/Configuration;
    iget-boolean v4, p0, mIsSupportUnfocusedShadow:Z

    if-eqz v4, :cond_b1

    .line 245
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 247
    iget v4, p0, mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, v4, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 249
    iget-object v4, p0, mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 251
    iget v4, p0, mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 253
    iget-object v4, p0, mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 255
    iget v4, p0, mSplitUnfocusThickness:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 257
    iget-object v4, p0, mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 259
    iget v4, p0, mSplitUnfocusThickness:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v5, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 260
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 261
    iget-object v4, p0, mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 376
    :cond_61
    :goto_61
    return-void

    .line 263
    :cond_62
    const/4 v4, 0x3

    if-ne p4, v4, :cond_8d

    .line 264
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_7b

    .line 266
    iget v4, p0, mSplitUnfocusThickness:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 267
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 268
    iget-object v4, p0, mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_61

    .line 271
    :cond_7b
    iget v4, p0, mSplitUnfocusThickness:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v5, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 272
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 273
    iget-object v4, p0, mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_61

    .line 276
    :cond_8d
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_a1

    .line 278
    iget v4, p0, mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, v4, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 280
    iget-object v4, p0, mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_61

    .line 283
    :cond_a1
    iget v4, p0, mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 285
    iget-object v4, p0, mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_61

    .line 289
    :cond_b1
    iget-boolean v4, p0, mIsSupportUnfocusedLine:Z

    if-eqz v4, :cond_e8

    .line 291
    const/4 v4, 0x3

    if-ne p4, v4, :cond_d6

    .line 292
    iget v0, p0, mSplitUnfocusColor:I

    .line 293
    .local v0, "color":I
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_ce

    .line 294
    iget v4, p0, mSplitUnfocusThickness:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    :goto_c5
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 307
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_61

    .line 296
    :cond_ce
    iget v4, p0, mSplitUnfocusThickness:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v5, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c5

    .line 299
    .end local v0    # "color":I
    :cond_d6
    iget v0, p0, mSplitUnfocusOutlineColor:I

    .line 300
    .restart local v0    # "color":I
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_e2

    .line 301
    iget v4, p0, mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, v4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c5

    .line 303
    :cond_e2
    iget v4, p0, mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c5

    .line 308
    .end local v0    # "color":I
    :cond_e8
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 309
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 310
    .local v2, "mTmpDrawFloatRect":Landroid/graphics/RectF;
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_19a

    .line 311
    const/4 v4, 0x1

    if-ne p4, v4, :cond_11c

    .line 312
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 313
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 315
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 316
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 317
    :cond_11c
    if-ne p4, v9, :cond_13a

    .line 318
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 319
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 321
    int-to-float v4, p2

    iget v5, p0, mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 322
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 323
    :cond_13a
    const/4 v4, 0x4

    if-ne p4, v4, :cond_159

    .line 324
    iget v4, p0, mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 327
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 328
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 329
    :cond_159
    const/16 v4, 0x8

    if-ne p4, v4, :cond_175

    .line 330
    iget v4, p0, mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 331
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 333
    int-to-float v4, p2

    iget v5, p0, mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 334
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 335
    :cond_175
    const/4 v4, 0x3

    if-ne p4, v4, :cond_189

    .line 336
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 338
    :cond_189
    const/16 v4, 0xc

    if-ne p4, v4, :cond_61

    .line 339
    iget v4, p0, mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 343
    :cond_19a
    const/4 v4, 0x1

    if-ne p4, v4, :cond_1bd

    .line 344
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 345
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 347
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 348
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 349
    :cond_1bd
    if-ne p4, v9, :cond_1db

    .line 350
    iget v4, p0, mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 351
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 353
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 354
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 355
    :cond_1db
    const/4 v4, 0x4

    if-ne p4, v4, :cond_1fa

    .line 356
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 357
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 359
    int-to-float v4, p2

    iget v5, p0, mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 360
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 361
    :cond_1fa
    const/16 v4, 0x8

    if-ne p4, v4, :cond_216

    .line 362
    iget v4, p0, mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 365
    int-to-float v4, p2

    iget v5, p0, mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 366
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 367
    :cond_216
    const/4 v4, 0x3

    if-ne p4, v4, :cond_22a

    .line 368
    iget v4, p0, mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61

    .line 370
    :cond_22a
    const/16 v4, 0xc

    if-ne p4, v4, :cond_61

    .line 371
    int-to-float v4, p2

    iget v5, p0, mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 372
    invoke-direct {p0, p1, v2}, drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_61
.end method

.method public setDrawOption(I)V
    .registers 2
    .param p1, "option"    # I

    .prologue
    .line 128
    iput p1, p0, mDrawOption:I

    .line 129
    return-void
.end method

.method public setFocus(Z)V
    .registers 3
    .param p1, "focus"    # Z

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setFocus(ZZ)V

    .line 133
    return-void
.end method
