.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$SpinnerPopup;,
        Landroid/widget/Spinner$DropDownAdapter;,
        Landroid/widget/Spinner$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mDropdownHorizontalOffset:I

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mGravity:I

.field private mIsThemeDeviceDefaultFamily:Z

.field private mMode:I

.field private mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private mPopupContext:Landroid/content/Context;

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 153
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 168
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 188
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .prologue
    .line 213
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I
    .param p6, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 246
    invoke-direct/range {p0 .. p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mTempRect:Landroid/graphics/Rect;

    .line 113
    const/4 v2, -0x1

    iput v2, p0, mMode:I

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsThemeDeviceDefaultFamily:Z

    .line 116
    const/4 v2, 0x0

    iput v2, p0, mDropdownHorizontalOffset:I

    .line 248
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    move/from16 v0, p4

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 251
    .local v7, "a":Landroid/content/res/TypedArray;
    if-eqz p6, :cond_77

    .line 252
    new-instance v2, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p6

    invoke-direct {v2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v2, p0, mPopupContext:Landroid/content/Context;

    .line 262
    :goto_26
    const/4 v2, -0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_31

    .line 263
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    .line 267
    :cond_31
    move/from16 v0, p5

    iput v0, p0, mMode:I

    .line 268
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 269
    .local v8, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11600bd

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v8, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 270
    iget v2, v8, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_8a

    const/4 v2, 0x1

    :goto_4a
    iput-boolean v2, p0, mIsThemeDeviceDefaultFamily:Z

    .line 271
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 274
    packed-switch p5, :pswitch_data_ee

    .line 318
    :goto_55
    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, mGravity:I

    .line 319
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, mDisableChildrenWhenDisabled:Z

    .line 322
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    iget-object v2, p0, mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_76

    .line 327
    iget-object v2, p0, mTempAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, v2}, setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 328
    const/4 v2, 0x0

    iput-object v2, p0, mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 330
    :cond_76
    return-void

    .line 254
    .end local v8    # "outValue":Landroid/util/TypedValue;
    :cond_77
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 255
    .local v11, "popupThemeResId":I
    if-eqz v11, :cond_87

    .line 256
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, mPopupContext:Landroid/content/Context;

    goto :goto_26

    .line 258
    :cond_87
    iput-object p1, p0, mPopupContext:Landroid/content/Context;

    goto :goto_26

    .line 270
    .end local v11    # "popupThemeResId":I
    .restart local v8    # "outValue":Landroid/util/TypedValue;
    :cond_8a
    const/4 v2, 0x0

    goto :goto_4a

    .line 276
    :pswitch_8c
    new-instance v2, Landroid/widget/Spinner$DialogPopup;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V

    iput-object v2, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 277
    iget-object v2, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_55

    .line 282
    :pswitch_9f
    new-instance v1, Landroid/widget/Spinner$DropdownPopup;

    iget-object v3, p0, mPopupContext:Landroid/content/Context;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 284
    .local v1, "popup":Landroid/widget/Spinner$DropdownPopup;
    iget-object v2, p0, mPopupContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Spinner:[I

    move/from16 v0, p4

    invoke-virtual {v2, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 286
    .local v9, "pa":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    move/from16 v0, p4

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 288
    .local v10, "pb":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, mDropdownHorizontalOffset:I

    .line 291
    const/4 v2, 0x4

    const/4 v3, -0x2

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, mDropDownWidth:I

    .line 293
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    iput-object v1, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    .line 300
    new-instance v2, Landroid/widget/Spinner$1;

    invoke-direct {v2, p0, p0, v1}, Landroid/widget/Spinner$1;-><init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V

    iput-object v2, p0, mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    goto/16 :goto_55

    .line 274
    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_9f
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 74
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 74
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/Spinner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 74
    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$600(Landroid/widget/Spinner;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 74
    iget v0, p0, mDropdownHorizontalOffset:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/Spinner;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Spinner;

    .prologue
    .line 74
    invoke-virtual {p0}, isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method private changeButtonBackground()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 649
    iget-boolean v2, p0, mIsThemeDeviceDefaultFamily:Z

    if-nez v2, :cond_7

    .line 657
    :goto_6
    return-void

    .line 651
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_21

    .line 652
    .local v0, "show":Z
    :goto_18
    if-eqz v0, :cond_23

    .line 653
    const v1, 0x10809ec

    invoke-virtual {p0, v1}, setBackgroundResource(I)V

    goto :goto_6

    .end local v0    # "show":Z
    :cond_21
    move v0, v1

    .line 651
    goto :goto_18

    .line 655
    .restart local v0    # "show":Z
    :cond_23
    iget-object v1, p0, mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method private makeView(IZ)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "addChild"    # Z

    .prologue
    .line 748
    iget-boolean v2, p0, mDataChanged:Z

    if-nez v2, :cond_11

    .line 749
    iget-object v2, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 752
    invoke-direct {p0, v0, p2}, setUpChild(Landroid/view/View;Z)V

    move-object v1, v0

    .line 764
    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    :goto_10
    return-object v1

    .line 759
    .end local v1    # "child":Landroid/view/View;
    :cond_11
    iget-object v2, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 762
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, setUpChild(Landroid/view/View;Z)V

    move-object v1, v0

    .line 764
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_10
.end method

.method private setUpChild(Landroid/view/View;Z)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addChild"    # Z

    .prologue
    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 779
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_a

    .line 780
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 783
    :cond_a
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 785
    invoke-virtual {p0}, hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 786
    iget-boolean v8, p0, mDisableChildrenWhenDisabled:Z

    if-eqz v8, :cond_20

    .line 787
    invoke-virtual {p0}, isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 791
    :cond_20
    iget v8, p0, mHeightMeasureSpec:I

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 793
    .local v1, "childHeightSpec":I
    iget v8, p0, mWidthMeasureSpec:I

    iget-object v9, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 797
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 803
    iget-object v8, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 806
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 808
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 809
    .local v7, "width":I
    const/4 v2, 0x0

    .line 810
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 812
    .local v3, "childRight":I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 814
    if-nez p2, :cond_75

    .line 815
    invoke-virtual {p0, p1}, removeViewInLayout(Landroid/view/View;)V

    .line 817
    :cond_75
    return-void
.end method

.method private twGetCurrentContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 10
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 937
    if-nez p1, :cond_6

    move v3, v5

    .line 965
    :cond_5
    :goto_5
    return v3

    .line 941
    :cond_6
    const/4 v3, 0x0

    .line 942
    .local v3, "width":I
    const/4 v2, 0x0

    .line 943
    .local v2, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    .line 944
    .local v1, "itemType":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 946
    .local v4, "widthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 950
    .local v0, "heightMeasureSpec":I
    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v5

    invoke-interface {p1, v5, v2, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 951
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_27

    .line 952
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    :cond_27
    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    .line 957
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 960
    if-eqz p2, :cond_5

    .line 961
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 962
    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_5
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 856
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 6

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 570
    const/4 v0, 0x0

    .line 572
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    if-lez v3, :cond_1b

    .line 573
    invoke-virtual {p0, v4}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 579
    :cond_d
    :goto_d
    if-eqz v0, :cond_1a

    .line 580
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 581
    .local v1, "childBaseline":I
    if-ltz v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 583
    .end local v1    # "childBaseline":I
    :cond_1a
    return v2

    .line 574
    :cond_1b
    iget-object v3, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_d

    iget-object v3, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_d

    .line 575
    invoke-direct {p0, v4, v4}, makeView(IZ)Landroid/view/View;

    move-result-object v0

    .line 576
    iget-object v3, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, v4, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    goto :goto_d
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .prologue
    .line 477
    iget v0, p0, mDropDownWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, mGravity:I

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .registers 13
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v9, 0x0

    .line 681
    iget-object v7, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 682
    .local v1, "childrenLeft":I
    iget v7, p0, mRight:I

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 684
    .local v2, "childrenWidth":I
    iget-boolean v7, p0, mDataChanged:Z

    if-eqz v7, :cond_1c

    .line 685
    invoke-virtual {p0}, handleDataChanged()V

    .line 689
    :cond_1c
    iget v7, p0, mItemCount:I

    if-eqz v7, :cond_24

    iget-object v7, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v7, :cond_28

    .line 690
    :cond_24
    invoke-virtual {p0}, resetList()V

    .line 733
    :goto_27
    return-void

    .line 694
    :cond_28
    iget v7, p0, mNextSelectedPosition:I

    if-ltz v7, :cond_31

    .line 695
    iget v7, p0, mNextSelectedPosition:I

    invoke-virtual {p0, v7}, setSelectedPositionInt(I)V

    .line 698
    :cond_31
    invoke-virtual {p0}, recycleAllViews()V

    .line 701
    invoke-virtual {p0}, removeAllViewsInLayout()V

    .line 704
    iget v7, p0, mSelectedPosition:I

    iput v7, p0, mFirstPosition:I

    .line 706
    iget-object v7, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v7, :cond_5d

    .line 707
    iget v7, p0, mSelectedPosition:I

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, makeView(IZ)Landroid/view/View;

    move-result-object v4

    .line 708
    .local v4, "sel":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 709
    .local v6, "width":I
    move v5, v1

    .line 710
    .local v5, "selectedOffset":I
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v3

    .line 711
    .local v3, "layoutDirection":I
    iget v7, p0, mGravity:I

    invoke-static {v7, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 712
    .local v0, "absoluteGravity":I
    and-int/lit8 v7, v0, 0x7

    sparse-switch v7, :sswitch_data_80

    .line 720
    :goto_5a
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 724
    .end local v0    # "absoluteGravity":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "sel":Landroid/view/View;
    .end local v5    # "selectedOffset":I
    .end local v6    # "width":I
    :cond_5d
    iget-object v7, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 726
    invoke-virtual {p0}, invalidate()V

    .line 728
    invoke-virtual {p0}, checkSelectionChanged()V

    .line 730
    iput-boolean v9, p0, mDataChanged:Z

    .line 731
    iput-boolean v9, p0, mNeedSync:Z

    .line 732
    iget v7, p0, mSelectedPosition:I

    invoke-virtual {p0, v7}, setNextSelectedPositionInt(I)V

    goto :goto_27

    .line 714
    .restart local v0    # "absoluteGravity":I
    .restart local v3    # "layoutDirection":I
    .restart local v4    # "sel":Landroid/view/View;
    .restart local v5    # "selectedOffset":I
    .restart local v6    # "width":I
    :sswitch_72
    div-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v1

    div-int/lit8 v8, v6, 0x2

    sub-int v5, v7, v8

    .line 715
    goto :goto_5a

    .line 717
    :sswitch_7a
    add-int v7, v1, v2

    sub-int v5, v7, v6

    goto :goto_5a

    .line 712
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_72
        0x5 -> :sswitch_7a
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 16
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 893
    if-nez p1, :cond_4

    .line 894
    const/4 v8, 0x0

    .line 933
    :cond_3
    :goto_3
    return v8

    .line 897
    :cond_4
    const/4 v8, 0x0

    .line 898
    .local v8, "width":I
    const/4 v5, 0x0

    .line 899
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 900
    .local v4, "itemType":I
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v9

    .line 902
    .local v9, "widthMeasureSpec":I
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v2

    .line 907
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 908
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 909
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 910
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 911
    move v3, v7

    .local v3, "i":I
    :goto_38
    if-ge v3, v1, :cond_64

    .line 912
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 913
    .local v6, "positionType":I
    if-eq v6, v4, :cond_42

    .line 914
    move v4, v6

    .line 915
    const/4 v5, 0x0

    .line 917
    :cond_42
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 918
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_56

    .line 919
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    :cond_56
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 924
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 911
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 928
    .end local v6    # "positionType":I
    :cond_64
    if-eqz p2, :cond_3

    .line 929
    iget-object v10, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 930
    iget-object v10, p0, mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 850
    invoke-virtual {p0, p2}, setSelection(I)V

    .line 851
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 852
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 1414
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1416
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_22

    .line 1418
    :cond_d
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_22

    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, mMode:I

    if-ne v0, v2, :cond_22

    .line 1419
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 1422
    :cond_22
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 589
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 591
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 592
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 594
    :cond_14
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 862
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 864
    iget-object v0, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_b

    .line 865
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 867
    :cond_b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 667
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, mInLayout:Z

    .line 669
    invoke-virtual {p0, v1, v1}, layout(IZ)V

    .line 670
    iput-boolean v1, p0, mInLayout:Z

    .line 671
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 626
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    .line 627
    iget-object v2, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v2, :cond_49

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_49

    .line 628
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    .line 633
    .local v1, "measuredWidth":I
    iget-boolean v2, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_4d

    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_4d

    invoke-virtual {p0}, getSelectedItemPosition()I

    move-result v2

    iget-object v3, p0, mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 634
    invoke-virtual {p0}, getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v2, v3}, twGetCurrentContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 638
    .local v0, "contentWidth":I
    :goto_36
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, setMeasuredDimension(II)V

    .line 642
    .end local v0    # "contentWidth":I
    .end local v1    # "measuredWidth":I
    :cond_49
    invoke-direct {p0}, changeButtonBackground()V

    .line 643
    return-void

    .line 636
    .restart local v1    # "measuredWidth":I
    :cond_4d
    invoke-virtual {p0}, getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .restart local v0    # "contentWidth":I
    goto :goto_36
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 977
    move-object v1, p1

    check-cast v1, Landroid/widget/Spinner$SavedState;

    .line 979
    .local v1, "ss":Landroid/widget/Spinner$SavedState;
    invoke-virtual {v1}, Landroid/widget/Spinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/AbsSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 981
    iget-boolean v3, v1, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    if-eqz v3, :cond_1c

    .line 982
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 983
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_1c

    .line 984
    new-instance v0, Landroid/widget/Spinner$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$2;-><init>(Landroid/widget/Spinner;)V

    .line 996
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 999
    .end local v0    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1c
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 970
    new-instance v0, Landroid/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/AbsSpinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 971
    .local v0, "ss":Landroid/widget/Spinner$SavedState;
    iget-object v1, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_19

    iget-object v1, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    :goto_16
    iput-boolean v1, v0, Landroid/widget/Spinner$SavedState;->showDropdown:Z

    .line 972
    return-object v0

    .line 971
    :cond_19
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 617
    iget-object v0, p0, mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 618
    const/4 v0, 0x1

    .line 621
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public performClick()Z
    .registers 5

    .prologue
    .line 821
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 823
    .local v0, "handled":Z
    if-nez v0, :cond_20

    .line 824
    const/4 v0, 0x1

    .line 826
    iget-object v1, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_20

    .line 827
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, playSoundEffect(I)V

    .line 828
    iget-object v1, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, getTextDirection()I

    move-result v2

    invoke-virtual {p0}, getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 832
    :cond_20
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 73
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 7
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 549
    iget-object v2, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-nez v2, :cond_7

    .line 550
    iput-object p1, p0, mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 566
    :goto_6
    return-void

    .line 554
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 556
    iget-object v2, p0, mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 558
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 559
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_2c

    if-eqz p1, :cond_2c

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    .line 561
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Spinner adapter view type count must be 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    :cond_2c
    iget-object v2, p0, mPopupContext:Landroid/content/Context;

    if-nez v2, :cond_41

    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 565
    .local v0, "popupContext":Landroid/content/Context;
    :goto_32
    iget-object v2, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    new-instance v3, Landroid/widget/Spinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_6

    .line 564
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_41
    iget-object v0, p0, mPopupContext:Landroid/content/Context;

    goto :goto_32
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3
    .param p1, "pixels"    # I

    .prologue
    .line 412
    iput p1, p0, mDropdownHorizontalOffset:I

    .line 413
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    .line 414
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3
    .param p1, "pixels"    # I

    .prologue
    .line 388
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    .line 389
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 4
    .param p1, "pixels"    # I

    .prologue
    .line 458
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_e

    .line 459
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown width for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_d
    return-void

    .line 462
    :cond_e
    iput p1, p0, mDropDownWidth:I

    goto :goto_d
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 482
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setEnabled(Z)V

    .line 483
    iget-boolean v2, p0, mDisableChildrenWhenDisabled:Z

    if-eqz v2, :cond_18

    .line 484
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    .line 485
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 486
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 489
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 500
    iget v0, p0, mGravity:I

    if-eq v0, p1, :cond_11

    .line 501
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_c

    .line 502
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 504
    :cond_c
    iput p1, p0, mGravity:I

    .line 505
    invoke-virtual {p0}, requestLayout()V

    .line 507
    :cond_11
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 605
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 612
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 613
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 348
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_f

    .line 349
    const-string v0, "Spinner"

    const-string/jumbo v1, "setPopupBackgroundDrawable: incompatible spinner mode; ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_e
    return-void

    .line 352
    :cond_f
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 874
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 875
    return-void
.end method

.method public setPromptId(I)V
    .registers 3
    .param p1, "promptId"    # I

    .prologue
    .line 882
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setPrompt(Ljava/lang/CharSequence;)V

    .line 883
    return-void
.end method

.method public twDismissSpinnerPopup()V
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_11

    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 844
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 846
    :cond_11
    return-void
.end method

.method public twSetDropDownHeight(I)V
    .registers 4
    .param p1, "pixels"    # I

    .prologue
    .line 437
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    instance-of v0, v0, Landroid/widget/Spinner$DropdownPopup;

    if-nez v0, :cond_e

    .line 438
    const-string v0, "Spinner"

    const-string v1, "Cannot set dropdown height for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_d
    return-void

    .line 441
    :cond_e
    iget-object v0, p0, mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setHeight(I)V

    goto :goto_d
.end method
