.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$1;,
        Landroid/widget/CompoundButton$SavedState;,
        Landroid/widget/CompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mChecked:Z

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 70
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
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    iput-object v3, p0, mButtonTintList:Landroid/content/res/ColorStateList;

    .line 63
    iput-object v3, p0, mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 64
    iput-boolean v5, p0, mHasButtonTint:Z

    .line 65
    iput-boolean v5, p0, mHasButtonTintMode:Z

    .line 89
    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 93
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1f

    .line 94
    invoke-virtual {p0, v2}, setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_1f
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 98
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v4, p0, mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 100
    iput-boolean v6, p0, mHasButtonTintMode:Z

    .line 103
    :cond_34
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 104
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, mButtonTintList:Landroid/content/res/ColorStateList;

    .line 105
    iput-boolean v6, p0, mHasButtonTint:Z

    .line 108
    :cond_42
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 110
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, setChecked(Z)V

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-direct {p0}, applyButtonTint()V

    .line 115
    return-void
.end method

.method private applyButtonTint()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, mHasButtonTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mHasButtonTintMode:Z

    if-eqz v0, :cond_3b

    .line 339
    :cond_c
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 341
    iget-boolean v0, p0, mHasButtonTint:Z

    if-eqz v0, :cond_1f

    .line 342
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 345
    :cond_1f
    iget-boolean v0, p0, mHasButtonTintMode:Z

    if-eqz v0, :cond_2a

    .line 346
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 351
    :cond_2a
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 352
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 355
    :cond_3b
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 481
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    .line 483
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 484
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 486
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 467
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 469
    iget-object v1, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 470
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    .line 473
    .local v0, "myDrawableState":[I
    iget-object v1, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 475
    invoke-virtual {p0}, invalidate()V

    .line 477
    .end local v0    # "myDrawableState":[I
    :cond_13
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/widget/Button;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 565
    const-string v0, "checked"

    invoke-virtual {p0}, isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 566
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 359
    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    .line 380
    .local v1, "padding":I
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_13

    .line 381
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 383
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 386
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    return v1
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    .prologue
    .line 391
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1

    .line 392
    .local v1, "padding":I
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 393
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 394
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_13

    .line 395
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 398
    .end local v0    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_13
    return v1
.end method

.method public getHorizontalOffsetForDrawables()I
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 407
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 495
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 496
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 497
    :cond_c
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 458
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 459
    .local v0, "drawableState":[I
    invoke-virtual {p0}, isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 460
    sget-object v1, CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, mergeDrawableStates([I[I)[I

    .line 462
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 412
    iget-object v2, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 413
    .local v2, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3a

    .line 414
    invoke-virtual {p0}, getGravity()I

    move-result v11

    and-int/lit8 v10, v11, 0x70

    .line 415
    .local v10, "verticalGravity":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 416
    .local v3, "drawableHeight":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 419
    .local v4, "drawableWidth":I
    sparse-switch v10, :sswitch_data_6e

    .line 427
    const/4 v9, 0x0

    .line 429
    .local v9, "top":I
    :goto_16
    add-int v1, v9, v3

    .line 430
    .local v1, "bottom":I
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_5a

    invoke-virtual {p0}, getWidth()I

    move-result v11

    sub-int v5, v11, v4

    .line 431
    .local v5, "left":I
    :goto_24
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_5c

    invoke-virtual {p0}, getWidth()I

    move-result v6

    .line 433
    .local v6, "right":I
    :goto_2e
    invoke-virtual {v2, v5, v9, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 435
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 436
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3a

    .line 437
    invoke-virtual {v0, v5, v9, v6, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 441
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bottom":I
    .end local v3    # "drawableHeight":I
    .end local v4    # "drawableWidth":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v9    # "top":I
    .end local v10    # "verticalGravity":I
    :cond_3a
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 443
    if-eqz v2, :cond_4a

    .line 444
    iget v7, p0, mScrollX:I

    .line 445
    .local v7, "scrollX":I
    iget v8, p0, mScrollY:I

    .line 446
    .local v8, "scrollY":I
    if-nez v7, :cond_5e

    if-nez v8, :cond_5e

    .line 447
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    .end local v7    # "scrollX":I
    .end local v8    # "scrollY":I
    :cond_4a
    :goto_4a
    return-void

    .line 421
    .restart local v3    # "drawableHeight":I
    .restart local v4    # "drawableWidth":I
    .restart local v10    # "verticalGravity":I
    :sswitch_4b
    invoke-virtual {p0}, getHeight()I

    move-result v11

    sub-int v9, v11, v3

    .line 422
    .restart local v9    # "top":I
    goto :goto_16

    .line 424
    .end local v9    # "top":I
    :sswitch_52
    invoke-virtual {p0}, getHeight()I

    move-result v11

    sub-int/2addr v11, v3

    div-int/lit8 v9, v11, 0x2

    .line 425
    .restart local v9    # "top":I
    goto :goto_16

    .line 430
    .restart local v1    # "bottom":I
    :cond_5a
    const/4 v5, 0x0

    goto :goto_24

    .restart local v5    # "left":I
    :cond_5c
    move v6, v4

    .line 431
    goto :goto_2e

    .line 449
    .end local v1    # "bottom":I
    .end local v3    # "drawableHeight":I
    .end local v4    # "drawableWidth":I
    .end local v5    # "left":I
    .end local v9    # "top":I
    .end local v10    # "verticalGravity":I
    .restart local v7    # "scrollX":I
    .restart local v8    # "scrollY":I
    :cond_5e
    int-to-float v11, v7

    int-to-float v12, v8

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 450
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 451
    neg-int v11, v7

    int-to-float v11, v11

    neg-int v12, v8

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4a

    .line 419
    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_52
        0x50 -> :sswitch_4b
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 366
    iget-boolean v0, p0, mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 367
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 374
    iget-boolean v0, p0, mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 375
    return-void
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/Button;->onResolveDrawables(I)V

    .line 262
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 263
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 265
    :cond_c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 554
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    .line 556
    .local v0, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 557
    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, setChecked(Z)V

    .line 558
    invoke-virtual {p0}, requestLayout()V

    .line 559
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 544
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 546
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 548
    .local v0, "ss":Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    .line 549
    return-object v0
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 123
    invoke-virtual {p0}, toggle()V

    .line 125
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    .line 126
    .local v0, "handled":Z
    if-nez v0, :cond_d

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, playSoundEffect(I)V

    .line 132
    :cond_d
    return v0
.end method

.method public setButtonDrawable(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 219
    if-eqz p1, :cond_e

    .line 220
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_a
    invoke-virtual {p0, v0}, setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void

    .line 222
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_a
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_43

    .line 236
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 237
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 238
    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_14
    iput-object p1, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    if-eqz p1, :cond_43

    .line 244
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 245
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 246
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 247
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 249
    :cond_2f
    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 250
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, setMinHeight(I)V

    .line 251
    invoke-direct {p0}, applyButtonTint()V

    .line 254
    :cond_43
    return-void

    :cond_44
    move v0, v1

    .line 249
    goto :goto_36
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 293
    iput-object p1, p0, mButtonTintList:Landroid/content/res/ColorStateList;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasButtonTint:Z

    .line 296
    invoke-direct {p0}, applyButtonTint()V

    .line 297
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 321
    iput-object p1, p0, mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasButtonTintMode:Z

    .line 324
    invoke-direct {p0}, applyButtonTint()V

    .line 325
    return-void
.end method

.method public setChecked(Z)V
    .registers 6
    .param p1, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-boolean v0, p0, mChecked:Z

    if-eq v0, p1, :cond_11

    .line 147
    iput-boolean p1, p0, mChecked:Z

    .line 148
    invoke-virtual {p0}, refreshDrawableState()V

    .line 149
    invoke-virtual {p0, v3}, notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 153
    iget-boolean v0, p0, mBroadcasting:Z

    if-eqz v0, :cond_12

    .line 173
    :cond_11
    :goto_11
    return-void

    .line 158
    :cond_12
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 159
    const-string v1, "GATE"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, mChecked:Z

    if-eqz v0, :cond_58

    const-string v0, "CHECKED"

    :goto_2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, mBroadcasting:Z

    .line 164
    iget-object v0, p0, mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4a

    .line 165
    iget-object v0, p0, mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 167
    :cond_4a
    iget-object v0, p0, mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_55

    .line 168
    iget-object v0, p0, mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 171
    :cond_55
    iput-boolean v3, p0, mBroadcasting:Z

    goto :goto_11

    .line 159
    :cond_58
    const-string v0, ""

    goto :goto_2b
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 182
    iput-object p1, p0, mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 183
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 193
    iput-object p1, p0, mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 194
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, setChecked(Z)V

    .line 119
    return-void

    .line 118
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
