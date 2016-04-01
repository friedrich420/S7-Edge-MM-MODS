.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkGravity:I

.field private mCheckMarkResource:I

.field private mCheckMarkTintList:Landroid/content/res/ColorStateList;

.field private mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mHasCheckMarkTint:Z

.field private mHasCheckMarkTintMode:Z

.field private mIsDeviceDefault:Z

.field private mIsDeviceDefaultDark:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    const/4 v7, 0x0

    iput-object v7, p0, mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 59
    const/4 v7, 0x0

    iput-object v7, p0, mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 60
    const/4 v7, 0x0

    iput-boolean v7, p0, mHasCheckMarkTint:Z

    .line 61
    const/4 v7, 0x0

    iput-boolean v7, p0, mHasCheckMarkTintMode:Z

    .line 62
    const/4 v7, 0x0

    iput-boolean v7, p0, mIsDeviceDefault:Z

    .line 63
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsDeviceDefaultDark:Z

    .line 67
    const v7, 0x800005

    iput v7, p0, mCheckMarkGravity:I

    .line 90
    sget-object v7, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 96
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bd

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v4, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget v7, v4, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_40

    .line 98
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsDeviceDefault:Z

    .line 100
    :cond_40
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .local v5, "outValueDarkTheme":Landroid/util/TypedValue;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bf

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    iget v7, v5, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_5b

    .line 103
    const/4 v7, 0x0

    iput-boolean v7, p0, mIsDeviceDefaultDark:Z

    .line 105
    :cond_5b
    const-string/jumbo v7, "ro.build.scafe"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "scafe":Ljava/lang/String;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105027e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 109
    .local v3, "mDrawablePadding":I
    iget-boolean v7, p0, mIsDeviceDefault:Z

    if-eqz v7, :cond_db

    iget-boolean v7, p0, mIsDeviceDefaultDark:Z

    if-nez v7, :cond_db

    const-string v7, "capuccino"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8d

    const-string v7, "latte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8d

    sget-boolean v7, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v7, :cond_db

    .line 110
    :cond_8d
    const/4 v7, 0x4

    const v8, 0x800003

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, mCheckMarkGravity:I

    .line 111
    if-eqz v2, :cond_9f

    .line 112
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v2, v7, v8, v9}, setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_9f
    invoke-virtual {p0, v3}, setCompoundDrawablePadding(I)V

    .line 123
    :goto_a2
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 124
    const/4 v7, 0x3

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iget-object v8, p0, mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, p0, mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 126
    const/4 v7, 0x1

    iput-boolean v7, p0, mHasCheckMarkTintMode:Z

    .line 129
    :cond_ba
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 130
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 131
    const/4 v7, 0x1

    iput-boolean v7, p0, mHasCheckMarkTint:Z

    .line 134
    :cond_cb
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 135
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, setChecked(Z)V

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-direct {p0}, applyCheckMarkTint()V

    .line 140
    return-void

    .line 117
    .end local v1    # "checked":Z
    :cond_db
    if-eqz v2, :cond_e0

    .line 118
    invoke-virtual {p0, v2}, setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_e0
    const/4 v7, 0x4

    const v8, 0x800005

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, mCheckMarkGravity:I

    goto :goto_a2
.end method

.method private applyCheckMarkTint()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, mHasCheckMarkTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_3b

    .line 296
    :cond_c
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 298
    iget-boolean v0, p0, mHasCheckMarkTint:Z

    if-eqz v0, :cond_1f

    .line 299
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mCheckMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 302
    :cond_1f
    iget-boolean v0, p0, mHasCheckMarkTintMode:Z

    if-eqz v0, :cond_2a

    .line 303
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 308
    :cond_2a
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 309
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 312
    :cond_3b
    return-void
.end method

.method private isCheckMarkAtStart()Z
    .registers 5

    .prologue
    .line 393
    iget v2, p0, mCheckMarkGravity:I

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 394
    .local v0, "gravity":I
    and-int/lit8 v1, v0, 0x7

    .line 395
    .local v1, "hgrav":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private setBasePadding(Z)V
    .registers 3
    .param p1, "checkmarkAtStart"    # Z

    .prologue
    .line 385
    if-eqz p1, :cond_7

    .line 386
    iget v0, p0, mPaddingLeft:I

    iput v0, p0, mBasePadding:I

    .line 390
    :goto_6
    return-void

    .line 388
    :cond_7
    iget v0, p0, mPaddingRight:I

    iput v0, p0, mBasePadding:I

    goto :goto_6
.end method

.method private updatePadding()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, resetPaddingToInitialValues()V

    .line 369
    iget-object v3, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2a

    iget v3, p0, mCheckMarkWidth:I

    iget v4, p0, mBasePadding:I

    add-int v0, v3, v4

    .line 371
    .local v0, "newPadding":I
    :goto_f
    invoke-direct {p0}, isCheckMarkAtStart()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 372
    iget-boolean v3, p0, mNeedRequestlayout:Z

    iget v4, p0, mPaddingLeft:I

    if-eq v4, v0, :cond_2d

    :goto_1b
    or-int/2addr v1, v3

    iput-boolean v1, p0, mNeedRequestlayout:Z

    .line 373
    iput v0, p0, mPaddingLeft:I

    .line 378
    :goto_20
    iget-boolean v1, p0, mNeedRequestlayout:Z

    if-eqz v1, :cond_29

    .line 379
    invoke-virtual {p0}, requestLayout()V

    .line 380
    iput-boolean v2, p0, mNeedRequestlayout:Z

    .line 382
    :cond_29
    return-void

    .line 369
    .end local v0    # "newPadding":I
    :cond_2a
    iget v0, p0, mBasePadding:I

    goto :goto_f

    .restart local v0    # "newPadding":I
    :cond_2d
    move v1, v2

    .line 372
    goto :goto_1b

    .line 375
    :cond_2f
    iget-boolean v3, p0, mNeedRequestlayout:Z

    iget v4, p0, mPaddingRight:I

    if-eq v4, v0, :cond_3b

    :goto_35
    or-int/2addr v1, v3

    iput-boolean v1, p0, mNeedRequestlayout:Z

    .line 376
    iput v0, p0, mPaddingRight:I

    goto :goto_20

    :cond_3b
    move v1, v2

    .line 375
    goto :goto_35
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 470
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->drawableHotspotChanged(FF)V

    .line 472
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 473
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 475
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 456
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 458
    iget-object v1, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 459
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    .line 462
    .local v0, "myDrawableState":[I
    iget-object v1, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 464
    invoke-virtual {p0}, invalidate()V

    .line 466
    .end local v0    # "myDrawableState":[I
    :cond_13
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 501
    const-string/jumbo v0, "text:checked"

    invoke-virtual {p0}, isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 479
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCheckMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, mCheckMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 358
    invoke-direct {p0}, isCheckMarkAtStart()Z

    move-result v0

    invoke-direct {p0, v0}, setBasePadding(Z)V

    .line 359
    return-void
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 148
    iget-boolean v0, p0, mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 326
    invoke-super {p0}, Landroid/widget/TextView;->jumpDrawablesToCurrentState()V

    .line 328
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 329
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 331
    :cond_c
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 447
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 448
    .local v0, "drawableState":[I
    invoke-virtual {p0}, isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 449
    sget-object v1, CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, mergeDrawableStates([I[I)[I

    .line 451
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 402
    iget-object v3, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    .local v3, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_49

    .line 404
    invoke-virtual {p0}, getGravity()I

    move-result v11

    and-int/lit8 v8, v11, 0x70

    .line 405
    .local v8, "verticalGravity":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 407
    .local v4, "height":I
    const/4 v10, 0x0

    .line 409
    .local v10, "y":I
    sparse-switch v8, :sswitch_data_66

    .line 418
    :goto_15
    invoke-direct {p0}, isCheckMarkAtStart()Z

    move-result v2

    .line 419
    .local v2, "checkMarkAtStart":Z
    invoke-virtual {p0}, getWidth()I

    move-result v9

    .line 420
    .local v9, "width":I
    move v7, v10

    .line 421
    .local v7, "top":I
    add-int v1, v7, v4

    .line 424
    .local v1, "bottom":I
    if-eqz v2, :cond_59

    .line 425
    iget v5, p0, mBasePadding:I

    .line 426
    .local v5, "left":I
    iget v11, p0, mCheckMarkWidth:I

    add-int v6, v5, v11

    .line 431
    .local v6, "right":I
    :goto_28
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_62

    .line 432
    iget v11, p0, mScrollX:I

    add-int/2addr v11, v5

    iget v12, p0, mScrollX:I

    add-int/2addr v12, v6

    invoke-virtual {v3, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    :goto_37
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 439
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_49

    .line 440
    iget v11, p0, mScrollX:I

    add-int/2addr v11, v5

    iget v12, p0, mScrollX:I

    add-int/2addr v12, v6

    invoke-virtual {v0, v11, v7, v12, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 443
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bottom":I
    .end local v2    # "checkMarkAtStart":Z
    .end local v4    # "height":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    .end local v8    # "verticalGravity":I
    .end local v9    # "width":I
    .end local v10    # "y":I
    :cond_49
    return-void

    .line 411
    .restart local v4    # "height":I
    .restart local v8    # "verticalGravity":I
    .restart local v10    # "y":I
    :sswitch_4a
    invoke-virtual {p0}, getHeight()I

    move-result v11

    sub-int v10, v11, v4

    .line 412
    goto :goto_15

    .line 414
    :sswitch_51
    invoke-virtual {p0}, getHeight()I

    move-result v11

    sub-int/2addr v11, v4

    div-int/lit8 v10, v11, 0x2

    goto :goto_15

    .line 428
    .restart local v1    # "bottom":I
    .restart local v2    # "checkMarkAtStart":Z
    .restart local v7    # "top":I
    .restart local v9    # "width":I
    :cond_59
    iget v11, p0, mBasePadding:I

    sub-int v6, v9, v11

    .line 429
    .restart local v6    # "right":I
    iget v11, p0, mCheckMarkWidth:I

    sub-int v5, v6, v11

    .restart local v5    # "left":I
    goto :goto_28

    .line 434
    :cond_62
    invoke-virtual {v3, v5, v7, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_37

    .line 409
    :sswitch_data_66
    .sparse-switch
        0x10 -> :sswitch_51
        0x50 -> :sswitch_4a
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 486
    iget-boolean v0, p0, mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 487
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 493
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 494
    iget-boolean v0, p0, mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 495
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 364
    invoke-direct {p0}, updatePadding()V

    .line 365
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 179
    if-eqz p1, :cond_7

    iget v1, p0, mCheckMarkResource:I

    if-ne p1, v1, :cond_7

    .line 190
    :goto_6
    return-void

    .line 183
    :cond_7
    iput p1, p0, mCheckMarkResource:I

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, mCheckMarkResource:I

    if-eqz v1, :cond_18

    .line 187
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    :cond_18
    invoke-virtual {p0, v0}, setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 205
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 206
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_11
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_48

    move v0, v1

    :goto_16
    iput-boolean v0, p0, mNeedRequestlayout:Z

    .line 209
    if-eqz p1, :cond_4c

    .line 210
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 211
    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-nez v0, :cond_4a

    :goto_23
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 212
    sget-object v0, CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 213
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, setMinHeight(I)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, mCheckMarkWidth:I

    .line 216
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 217
    invoke-direct {p0}, applyCheckMarkTint()V

    .line 221
    :goto_42
    iput-object p1, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-virtual {p0}, resolvePadding()V

    .line 226
    return-void

    :cond_48
    move v0, v2

    .line 208
    goto :goto_16

    :cond_4a
    move v1, v2

    .line 211
    goto :goto_23

    .line 219
    :cond_4c
    iput v2, p0, mCheckMarkWidth:I

    goto :goto_42
.end method

.method public setCheckMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 244
    iput-object p1, p0, mCheckMarkTintList:Landroid/content/res/ColorStateList;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasCheckMarkTint:Z

    .line 247
    invoke-direct {p0}, applyCheckMarkTint()V

    .line 248
    return-void
.end method

.method public setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 274
    iput-object p1, p0, mCheckMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasCheckMarkTintMode:Z

    .line 277
    invoke-direct {p0}, applyCheckMarkTint()V

    .line 278
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 158
    iget-boolean v0, p0, mChecked:Z

    if-eq v0, p1, :cond_d

    .line 159
    iput-boolean p1, p0, mChecked:Z

    .line 160
    invoke-virtual {p0}, refreshDrawableState()V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 164
    :cond_d
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 320
    iget-object v2, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 322
    :cond_10
    return-void

    :cond_11
    move v0, v1

    .line 320
    goto :goto_d
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, setChecked(Z)V

    .line 144
    return-void

    .line 143
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 335
    iget-object v0, p0, mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
