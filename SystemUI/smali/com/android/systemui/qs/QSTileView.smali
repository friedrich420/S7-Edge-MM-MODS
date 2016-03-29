.class public Lcom/android/systemui/qs/QSTileView;
.super Landroid/view/ViewGroup;
.source "QSTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileView$H;
    }
.end annotation


# static fields
.field private static final CONDENSED:Landroid/graphics/Typeface;

.field private static final TAG:Ljava/lang/String; = "QSTileView"


# instance fields
.field private mCellWidth:I

.field private mClickPrimary:Landroid/view/View$OnClickListener;

.field private mClickSecondary:Landroid/view/View$OnClickListener;

.field protected final mContext:Landroid/content/Context;

.field private mDefaultTextSize:F

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDivider:Landroid/view/View;

.field private mDual:Z

.field private mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

.field private final mDualTileVerticalPaddingPx:I

.field private final mHandler:Lcom/android/systemui/qs/QSTileView$H;

.field private final mIcon:Landroid/view/View;

.field private final mIconSizePx:I

.field private mLabel:Landroid/widget/TextView;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mSecondaryLabel:Landroid/widget/TextView;

.field private mText:Ljava/lang/String;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private final mTilePaddingBelowIconPx:I

.field private mTilePaddingTopPx:I

.field private final mTileSpacingPx:I

.field private final mTopBackgroundView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "sans-serif-condensed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 97
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v2, Lcom/android/systemui/qs/QSTileView$H;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSTileView$H;-><init>(Lcom/android/systemui/qs/QSTileView;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0c010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    .line 103
    const v2, 0x7f0c0116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTileSpacingPx:I

    .line 104
    const v2, 0x7f0c0114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    .line 105
    const v2, 0x7f0c0110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 109
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 110
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setClipChildren(Z)V

    .line 116
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    .line 117
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->createIcon()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    .line 122
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mQuickSettingBackgroundAnimation:Z

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/qs/QSTileIconBackground;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/QSTileIconBackground;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 129
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    .line 130
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    const v3, 0x7f0a004f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    const v2, 0x7f0c010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    .local v0, "dh":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 137
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->setLongClickable(Z)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 141
    return-void

    .line 125
    .end local v0    # "dh":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    const v3, 0x7f020634

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private adjustPositionForSpecialChar(Ljava/lang/String;I)I
    .locals 13
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 205
    .local v9, "ch":C
    invoke-static {v9}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v12, v4

    .line 208
    .local v12, "isSpecial":Z
    :goto_0
    if-nez v12, :cond_2

    .line 233
    .end local p2    # "pos":I
    :goto_1
    return p2

    .end local v12    # "isSpecial":Z
    .restart local p2    # "pos":I
    :cond_1
    move v12, v2

    .line 205
    goto :goto_0

    .line 212
    .restart local v12    # "isSpecial":Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 213
    .local v3, "strLen":I
    new-array v7, v3, [F

    .line 214
    .local v7, "widths":[F
    new-array v1, v3, [C

    .line 215
    .local v1, "chars":[C
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 216
    .local v0, "p":Landroid/graphics/Paint;
    invoke-static {p1, v2, v3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move v4, v2

    move v5, v3

    move v6, v2

    move v8, v2

    .line 217
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 219
    move v10, p2

    .line 220
    .local v10, "findIdx":I
    :goto_2
    if-lez v10, :cond_4

    .line 221
    move v11, v10

    .line 222
    .local v11, "idx":I
    :goto_3
    if-ge v11, v3, :cond_3

    aget v2, v7, v11

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    aget-char v2, v1, v11

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    .line 223
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 226
    :cond_3
    if-ne v11, v10, :cond_5

    .line 232
    .end local v11    # "idx":I
    :cond_4
    const-string v2, "QSTileView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustPositionForSpecialChar() str="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", findIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v10

    .line 233
    goto :goto_1

    .line 229
    .restart local v11    # "idx":I
    :cond_5
    add-int/lit8 v10, v10, -0x1

    .line 230
    goto :goto_2
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 500
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private labelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private static layout(Landroid/view/View;II)V
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 548
    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 461
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    .line 462
    .local v0, "attrs":[I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 463
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 464
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 469
    return-object v1
.end method

.method private recreateLabel()V
    .locals 12

    .prologue
    const v11, 0x7f0c010b

    const/4 v8, 0x2

    const v6, 0x7f0a0050

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, "labelText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 324
    .local v1, "labelDescription":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 325
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 326
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 327
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 329
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v5, :cond_1

    .line 330
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSDualTileLabel;->getText()Ljava/lang/String;

    move-result-object v2

    .line 331
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 332
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->removeView(Landroid/view/View;)V

    .line 333
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 335
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 336
    .local v4, "res":Landroid/content/res/Resources;
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v5, :cond_4

    .line 337
    new-instance v5, Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/systemui/qs/QSDualTileLabel;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 338
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setId(I)V

    .line 339
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const v7, 0x7f020028

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setBackgroundResource(I)V

    .line 340
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    const v8, 0x7f020343

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setFirstLineCaret(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextColor(I)V

    .line 342
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    iget v7, p0, Lcom/android/systemui/qs/QSTileView;->mDualTileVerticalPaddingPx:I

    invoke-virtual {v5, v9, v6, v9, v7}, Lcom/android/systemui/qs/QSDualTileLabel;->setPadding(IIII)V

    .line 343
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    sget-object v6, Lcom/android/systemui/qs/QSTileView;->CONDENSED:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v9, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 346
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v10}, Lcom/android/systemui/qs/QSDualTileLabel;->setClickable(Z)V

    .line 347
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v10}, Lcom/android/systemui/qs/QSDualTileLabel;->setFocusable(Z)V

    .line 349
    if-eqz v2, :cond_2

    .line 350
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_2
    if-eqz v1, :cond_3

    .line 353
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 355
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 356
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSDualTileLabel;->setAccessibilityTraversalAfter(I)V

    .line 405
    :goto_0
    return-void

    .line 358
    :cond_4
    new-instance v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    .line 359
    const v5, 0x7f0c010c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 360
    .local v0, "height":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 361
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 363
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 366
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    const v7, 0x1020016

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setId(I)V

    .line 374
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 376
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 377
    if-eqz v2, :cond_5

    .line 378
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 381
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    .line 384
    new-instance v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    .line 385
    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    const-string v7, "SECRobotoLight Regular"

    invoke-static {v7, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 388
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 389
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 391
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->setSingleLine()V

    .line 392
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    const v6, 0x7f0c0130

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 394
    const v5, 0x7f0c0131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 395
    .local v3, "padding":I
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v9, v3, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 396
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 397
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 398
    if-eqz v2, :cond_6

    .line 399
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 385
    .end local v3    # "padding":I
    :cond_7
    const v5, 0x7f0a0061

    goto :goto_1
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 2
    .param p1, "tileBackground"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(II)V

    .line 442
    :cond_0
    return-void
.end method

.method private updateRippleSize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 540
    div-int/lit8 v0, p1, 0x2

    .line 541
    .local v0, "cx":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 542
    .local v1, "cy":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3eeb851f    # 0.46f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 543
    .local v2, "rad":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 544
    return-void
.end method

.method private updateTopPadding()V
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0c0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 153
    .local v0, "padding":I
    iput v0, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    .line 157
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    const v2, 0x7f0c0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/QSTileView;->mCellWidth:I

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->requestLayout()V

    .line 162
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 452
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 454
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 455
    return-object v0
.end method

.method public dynamicallyCutAndReduceTextSize(ILandroid/widget/TextView;)V
    .locals 23
    .param p1, "cellWidth"    # I
    .param p2, "label"    # Landroid/widget/TextView;

    .prologue
    .line 238
    const/4 v14, 0x0

    .line 239
    .local v14, "step":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    .line 240
    .local v2, "currentTextSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c012f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v10, v0

    .line 241
    .local v10, "minTextSize":F
    const/4 v8, 0x0

    .line 243
    .local v8, "isFinal":Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 244
    .local v15, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    .line 246
    .local v13, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x0

    .line 247
    .local v18, "tw":I
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 249
    .local v5, "enterIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_2

    .line 250
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 256
    const/4 v6, -0x1

    .line 257
    .local v6, "findIdx":I
    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 318
    .end local v6    # "findIdx":I
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(ILandroid/widget/TextView;)V

    goto :goto_0

    .line 259
    .restart local v6    # "findIdx":I
    :cond_3
    mul-int/lit8 v19, p1, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    if-gt v0, v1, :cond_4

    if-eqz v8, :cond_e

    .line 260
    :cond_4
    const-string v11, ""

    .line 261
    .local v11, "newStr":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 262
    .local v16, "strLen":I
    const/16 v17, 0x0

    .line 263
    .local v17, "textWidth3":I
    div-int/lit8 v19, v16, 0x2

    add-int/lit8 v7, v19, -0x1

    .line 264
    .local v7, "i":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 265
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    .line 266
    move v6, v7

    .line 288
    :cond_5
    :goto_1
    if-ltz v6, :cond_1

    .line 289
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/android/systemui/qs/QSTileView;->adjustPositionForSpecialChar(Ljava/lang/String;I)I

    move-result v6

    .line 290
    if-eqz v8, :cond_d

    .line 291
    const-string v4, "..."

    .line 292
    .local v4, "ellipsize":Ljava/lang/String;
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .line 293
    .local v3, "ellipWidth":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 294
    move v9, v6

    .local v9, "j":I
    :goto_2
    move/from16 v0, v16

    if-gt v9, v0, :cond_6

    .line 295
    invoke-virtual {v15, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v20, p1, v3

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 296
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 303
    .end local v3    # "ellipWidth":I
    .end local v4    # "ellipsize":Ljava/lang/String;
    .end local v9    # "j":I
    :cond_6
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 267
    :cond_7
    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_9

    .line 268
    add-int/lit8 v9, v7, -0x1

    .restart local v9    # "j":I
    :goto_4
    if-lez v9, :cond_5

    .line 269
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 270
    move/from16 v0, v17

    move/from16 v1, p1

    if-gt v0, v1, :cond_8

    .line 271
    move v6, v9

    .line 272
    goto/16 :goto_1

    .line 268
    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 276
    .end local v9    # "j":I
    :cond_9
    move v9, v7

    .restart local v9    # "j":I
    :goto_5
    move/from16 v0, v16

    if-gt v9, v0, :cond_5

    .line 277
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 278
    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_a

    .line 279
    move v6, v9

    .line 280
    goto/16 :goto_1

    .line 281
    :cond_a
    move/from16 v0, v17

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    .line 282
    add-int/lit8 v6, v9, -0x1

    .line 283
    goto/16 :goto_1

    .line 276
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 294
    .restart local v3    # "ellipWidth":I
    .restart local v4    # "ellipsize":Ljava/lang/String;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 301
    .end local v3    # "ellipWidth":I
    .end local v4    # "ellipsize":Ljava/lang/String;
    .end local v9    # "j":I
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 307
    .end local v7    # "i":I
    .end local v11    # "newStr":Ljava/lang/String;
    .end local v16    # "strLen":I
    .end local v17    # "textWidth3":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    move/from16 v19, v0

    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43200000    # 160.0f

    div-float v21, v21, v22

    mul-float v20, v20, v21

    sub-float v2, v19, v20

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    move/from16 v19, v0

    add-int/lit8 v20, v14, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43200000    # 160.0f

    div-float v21, v21, v22

    mul-float v20, v20, v21

    sub-float v12, v19, v20

    .line 309
    .local v12, "nextTextSize":F
    cmpl-float v19, v2, v10

    if-ltz v19, :cond_f

    .line 310
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 311
    add-int/lit8 v14, v14, 0x1

    .line 312
    cmpg-float v19, v12, v10

    if-gez v19, :cond_f

    .line 313
    const/4 v8, 0x1

    .line 317
    :cond_f
    cmpl-float v19, v2, v10

    if-gez v19, :cond_0

    goto/16 :goto_0
.end method

.method public dynamicallyReduceTextSize(ILandroid/widget/TextView;)V
    .locals 11
    .param p1, "cellWidth"    # I
    .param p2, "label"    # Landroid/widget/TextView;

    .prologue
    const/4 v10, 0x0

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v1, v6, :cond_1

    .line 182
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 184
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 185
    .local v4, "tw":I
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, "enterIdx":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 187
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    .line 195
    :cond_0
    :goto_1
    if-lt p1, v4, :cond_3

    .line 201
    .end local v0    # "enterIdx":I
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "tw":I
    :cond_1
    return-void

    .line 189
    .restart local v0    # "enterIdx":I
    .restart local v2    # "paint":Landroid/graphics/Paint;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "tw":I
    :cond_2
    invoke-virtual {v3, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v4, v6

    .line 190
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v5, v6

    .line 191
    .local v5, "tw2ndline":I
    if-ge v4, v5, :cond_0

    .line 192
    move v4, v5

    goto :goto_1

    .line 198
    .end local v5    # "tw2ndline":I
    :cond_3
    iget v6, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    add-int/lit8 v7, v1, 0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {p2, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public handleLabelStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "label"    # Landroid/widget/TextView;
    .param p3, "cellWidth"    # I

    .prologue
    .line 551
    const-string v0, "QSTileView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLabelStateChanged() label = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cellWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/qs/QSTileView;->mDefaultTextSize:F

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 555
    iget-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->textTruncate:Z

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/qs/QSTileView;->dynamicallyCutAndReduceTextSize(ILandroid/widget/TextView;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(ILandroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 567
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDualTileLabel;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 577
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->secondaryLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->secondaryLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/qs/QSTileView;->mCellWidth:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/QSTileView;->handleLabelStateChanged(Lcom/android/systemui/qs/QSTile$State;Landroid/widget/TextView;I)V

    .line 595
    :cond_1
    return-void

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "clickPrimary"    # Landroid/view/View$OnClickListener;
    .param p2, "clickSecondary"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    .line 447
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileView;->mClickSecondary:Landroid/view/View$OnClickListener;

    .line 448
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    .line 449
    return-void
.end method

.method public onClearState()V
    .locals 6

    .prologue
    const v2, 0x7f0a0050

    .line 660
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mQuickSettingBackgroundAnimation:Z

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTileIconBackground;

    .line 662
    .local v0, "bgDrawable":Lcom/android/systemui/qs/QSTileIconBackground;
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileIconBackground;->init(Landroid/content/Context;)V

    .line 669
    .end local v0    # "bgDrawable":Lcom/android/systemui/qs/QSTileIconBackground;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 671
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 675
    return-void

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020634

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 672
    :cond_1
    const v1, 0x7f0a0061

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->updateTopPadding()V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDualTileLabel;->setTextSize(IF)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    const v1, 0x7f0c0130

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 176
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v3

    .line 506
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v0

    .line 510
    .local v0, "h":I
    const/4 v2, 0x0

    .line 513
    .local v2, "top":I
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingTopPx:I

    add-int/2addr v2, v4

    .line 514
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 515
    .local v1, "iconLeft":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 516
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_0

    .line 517
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/qs/QSTileView;->updateRippleSize(II)V

    .line 520
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 521
    iget v4, p0, Lcom/android/systemui/qs/QSTileView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v4

    .line 528
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 531
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 533
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-static {v4, v5, v2}, Lcom/android/systemui/qs/QSTileView;->layout(Landroid/view/View;II)V

    .line 536
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 478
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 479
    .local v2, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 480
    .local v0, "h":I
    iget v3, p0, Lcom/android/systemui/qs/QSTileView;->mIconSizePx:I

    invoke-static {v3}, Lcom/android/systemui/qs/QSTileView;->exactly(I)I

    move-result v1

    .line 481
    .local v1, "iconSpec":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mIcon:Landroid/view/View;

    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 482
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->labelView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 484
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 485
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileView;->mSecondaryLabel:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/widget/TextView;->measure(II)V

    .line 496
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/qs/QSTileView;->setMeasuredDimension(II)V

    .line 497
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 653
    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mText:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mHandler:Lcom/android/systemui/qs/QSTileView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 657
    return-void
.end method

.method public setDual(Z)Z
    .locals 6
    .param p1, "dual"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 408
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eq p1, v1, :cond_2

    move v0, v2

    .line 409
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileView;->recreateLabel()V

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 416
    :cond_1
    if-eqz p1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileView;->setClickable(Z)V

    .line 420
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 421
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 430
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 431
    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setFocusable(Z)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileView;->postInvalidate()V

    .line 434
    return v0

    .end local v0    # "changed":Z
    :cond_2
    move v0, v3

    .line 408
    goto :goto_0

    .line 423
    .restart local v0    # "changed":Z
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mClickPrimary:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mLongClick:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 427
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSTileView;->setImportantForAccessibility(I)V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    move v2, v3

    .line 431
    goto :goto_2

    .line 432
    :cond_5
    const/16 v3, 0x8

    goto :goto_3
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 10
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const v9, 0x7f0a0063

    const v8, 0x7f0a0062

    const/high16 v7, 0x437f0000    # 255.0f

    .line 602
    iget-object v5, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v5, :cond_3

    iget-object v5, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v6, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 603
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v5, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v5, :cond_0

    .line 604
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 606
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    const v5, 0x7f0e0050

    iget-object v6, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p1, v5, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 611
    const/high16 v1, 0x3f800000    # 1.0f

    .line 612
    .local v1, "alpha":F
    if-eqz v2, :cond_1

    instance-of v5, p2, Lcom/android/systemui/qs/QSTile$MultiState;

    if-eqz v5, :cond_1

    instance-of v5, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v5, :cond_1

    move-object v4, p2

    .line 613
    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    .line 614
    .local v4, "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    iget v5, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v5, :pswitch_data_0

    .line 634
    .end local v4    # "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    :cond_1
    :goto_1
    instance-of v5, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v5, :cond_2

    move-object v0, v2

    .line 635
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 636
    .local v0, "a":Landroid/graphics/drawable/Animatable;
    iget-object v5, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    instance-of v5, v5, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v5

    if-nez v5, :cond_2

    .line 637
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 640
    instance-of v5, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_2

    move-object v5, v2

    .line 641
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    .line 642
    .local v3, "lastFrame":I
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    .end local v0    # "a":Landroid/graphics/drawable/Animatable;
    .end local v3    # "lastFrame":I
    :cond_2
    return-void

    .line 602
    .end local v1    # "alpha":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 616
    .restart local v1    # "alpha":F
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "ms":Lcom/android/systemui/qs/QSTile$MultiState;
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    int-to-float v5, v5

    div-float v1, v5, v7

    .line 617
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 618
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0263

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float/2addr v5, v1

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 621
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    int-to-float v5, v5

    div-float v1, v5, v7

    .line 622
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 623
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0262

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float/2addr v5, v1

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 626
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    int-to-float v5, v5

    div-float v1, v5, v7

    .line 627
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/high16 v6, -0x1000000

    or-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 628
    mul-float v5, v1, v7

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "previousView"    # Landroid/view/View;

    .prologue
    .line 686
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTileView;->mDual:Z

    if-eqz v2, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileView;->mDualLabel:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 688
    .local v1, "lastView":Landroid/view/View;
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileView;->mTopBackgroundView:Landroid/view/View;

    .line 693
    .local v0, "firstView":Landroid/view/View;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 694
    return-object v1

    .line 690
    .end local v0    # "firstView":Landroid/view/View;
    .end local v1    # "lastView":Landroid/view/View;
    :cond_0
    move-object v0, p0

    .line 691
    .restart local v0    # "firstView":Landroid/view/View;
    move-object v1, p0

    .restart local v1    # "lastView":Landroid/view/View;
    goto :goto_0
.end method
