.class Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectQuickPopupWindow"
.end annotation


# static fields
.field private static final COPY:I = 0x1

.field private static final DICTIONARY:I = 0x3

.field private static final SELECTALL:I = 0x0

.field private static final SHARE:I = 0x2

.field private static final TRANSLATE:I = 0x4

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x1090157


# instance fields
.field private MAX_ITEMS_LANDSCAPE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_TABLET:I

.field private MAX_ITEMS_PORTRAIT_PHONE:I

.field private MAX_ITEMS_PORTRAIT_TABLET:I

.field private final TOTAL_ITEMS:I

.field private mActionBarHeight:I

.field private mContentView:Landroid/view/ViewGroup;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mExtraItemWidth:I

.field private mHandlerHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field mIconDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mItemWidth:I

.field private mMaxShowingMenuCount:I

.field mMenuEnables:[Z

.field private mMenuItemCount:I

.field mMenuTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupHeight:I

.field private mPopupMaxWidth:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mStatusbarHeight:I

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .registers 4

    .prologue
    const/4 v1, 0x5

    .line 171
    iput-object p1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v1, p0, TOTAL_ITEMS:I

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsTablet:Z

    .line 162
    new-array v0, v1, [Z

    fill-array-data v0, :array_44

    iput-object v0, p0, mMenuEnables:[Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMenuTextViews:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mIconDrawables:Ljava/util/ArrayList;

    .line 172
    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTablet()Z
    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->access$000(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v0

    iput-boolean v0, p0, mIsTablet:Z

    .line 173
    invoke-direct {p0}, createPopupWindow()V

    .line 175
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 176
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 178
    invoke-direct {p0}, initContentView()V

    .line 179
    invoke-direct {p0}, setHeight()V

    .line 180
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 181
    return-void

    .line 162
    :array_44
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private calculatePopupWindowWidth()V
    .registers 5

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "currentMenuCount":I
    const/4 v2, 0x0

    iput v2, p0, mPopupWidth:I

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2f

    .line 297
    iget-object v2, p0, mMenuEnables:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_4f

    .line 298
    iget v2, p0, mPopupWidth:I

    iget v3, p0, mItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, mPopupWidth:I

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 301
    iget v2, p0, mPopupWidth:I

    invoke-direct {p0}, getPopupWidthLimit()I

    move-result v3

    if-le v2, v3, :cond_42

    .line 302
    iget v2, p0, mPopupWidth:I

    iget v3, p0, mItemWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, mPopupWidth:I

    .line 303
    iget v2, p0, mPopupWidth:I

    iget v3, p0, mDividerWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, mPopupWidth:I

    .line 304
    add-int/lit8 v0, v0, -0x1

    .line 314
    :cond_2f
    iget v2, p0, mMenuItemCount:I

    if-ge v0, v2, :cond_52

    .line 315
    iget v2, p0, mPopupWidth:I

    iget v3, p0, mExtraItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, mPopupWidth:I

    .line 320
    :goto_3a
    iget v2, p0, mPopupWidth:I

    iget v3, p0, mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, mPopupWidth:I

    .line 321
    return-void

    .line 308
    :cond_42
    iget v2, p0, mPopupWidth:I

    iget v3, p0, mDividerWidth:I

    add-int/2addr v2, v3

    iput v2, p0, mPopupWidth:I

    .line 310
    invoke-direct {p0}, getMenuLimit()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 296
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 317
    :cond_52
    iget v2, p0, mPopupWidth:I

    iget v3, p0, mDividerWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, mPopupWidth:I

    goto :goto_3a
.end method

.method private computeLocalPosition()V
    .registers 3

    .prologue
    .line 346
    invoke-virtual {p0}, measureContent()V

    .line 347
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 348
    .local v0, "position":[I
    invoke-direct {p0, v0}, getMultiSelectQuickPopupPosition([I)V

    .line 349
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, mPositionX:I

    .line 350
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, mPositionY:I

    .line 351
    return-void
.end method

.method private createPopupWindow()V
    .registers 6

    .prologue
    .line 200
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a12

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 202
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 203
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, mPopupBgPaddingWidth:I

    .line 204
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, mPopupBgPaddingHeight:I

    .line 205
    const/4 v1, 0x0

    .line 207
    new-instance v2, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, mPopupWindow:Landroid/widget/PopupWindow;

    .line 208
    iget-object v2, p0, mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 209
    iget-object v2, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    return-void
.end method

.method private getMenuLimit()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 327
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1e

    .line 328
    .local v0, "isPortrait":Z
    :goto_15
    iget-boolean v1, p0, mIsTablet:Z

    if-eqz v1, :cond_23

    .line 329
    if-eqz v0, :cond_20

    iget v1, p0, MAX_ITEMS_PORTRAIT_TABLET:I

    .line 331
    :goto_1d
    return v1

    .line 327
    .end local v0    # "isPortrait":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_15

    .line 329
    .restart local v0    # "isPortrait":Z
    :cond_20
    iget v1, p0, MAX_ITEMS_LANDSCAPE_TABLET:I

    goto :goto_1d

    .line 331
    :cond_23
    if-eqz v0, :cond_28

    iget v1, p0, MAX_ITEMS_PORTRAIT_PHONE:I

    goto :goto_1d

    :cond_28
    iget v1, p0, MAX_ITEMS_LANDSCAPE_PHONE:I

    goto :goto_1d
.end method

.method private getMultiSelectQuickPopupPosition([I)V
    .registers 40
    .param p1, "position"    # [I

    .prologue
    .line 484
    if-nez p1, :cond_a

    .line 485
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 p1, v0

    .line 488
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, mMenuItemCount:I

    .line 489
    .local v12, "menuItemCount":I
    const/4 v13, 0x0

    .line 491
    .local v13, "menuLimit":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_342

    .line 492
    const/4 v13, 0x4

    .line 497
    :goto_2e
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v30

    .line 498
    .local v30, "text":Ljava/lang/CharSequence;
    if-nez v30, :cond_3f

    .line 499
    const-string v34, "MultiSelectPopupWindow"

    const-string v35, "getTextFormultiSelection() text is null"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_3f
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 503
    .local v18, "screen":[I
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .line 504
    .local v33, "window":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 505
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 506
    const/16 v34, 0x0

    aget v34, v18, v34

    const/16 v35, 0x0

    aget v35, v33, v35

    sub-int v16, v34, v35

    .line 507
    .local v16, "parentViewPositionX":I
    const/16 v34, 0x1

    aget v34, v18, v34

    const/16 v35, 0x1

    aget v35, v33, v35

    sub-int v17, v34, v35

    .line 508
    .local v17, "parentViewPositionY":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v32

    .line 509
    .local v32, "viewportToContentVerticalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v31

    .line 510
    .local v31, "viewportToContentHorizontalOffset":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    .line 511
    .local v22, "screenWidth":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    .line 512
    .local v20, "screenHeight":I
    move/from16 v8, v20

    .line 513
    .local v8, "fullScreenHeight":I
    const/16 v21, 0x0

    .line 514
    .local v21, "screenTop":I
    move/from16 v19, v20

    .line 515
    .local v19, "screenBottom":I
    invoke-static/range {v30 .. v30}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v24

    .line 516
    .local v24, "selStart":I
    invoke-static/range {v30 .. v30}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v23

    .line 517
    .local v23, "selEnd":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v26

    .line 518
    .local v26, "startLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 519
    .local v4, "endLine":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v28, v34, v32

    .line 520
    .local v28, "startLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v27, v34, v32

    .line 521
    .local v27, "startLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v6, v34, v32

    .line 522
    .local v6, "endLineTop":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v5, v34, v32

    .line 523
    .local v5, "endLineBottom":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v29, v34, v31

    .line 524
    .local v29, "startX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v7, v34, v31

    .line 525
    .local v7, "endX":I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/text/Layout;->getWidth()I

    move-result v11

    .line 526
    .local v11, "maxWidth":I
    move-object/from16 v0, p0

    iget v2, v0, mActionBarHeight:I

    .line 527
    .local v2, "actionBarHeight":I
    move-object/from16 v0, p0

    iget v9, v0, mHandlerHeight:I

    .line 528
    .local v9, "handlerHeight":I
    const/4 v10, 0x1

    .line 529
    .local v10, "isStatusBarVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mContentView:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, mPopupBgPaddingHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, mPopupHeight:I

    .line 532
    :try_start_1a6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_1a6 .. :try_end_1ad} :catch_345

    move-result v10

    .line 536
    :goto_1ae
    if-nez v10, :cond_1b8

    .line 537
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, mStatusbarHeight:I

    .line 540
    :cond_1b8
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v34

    if-eqz v34, :cond_229

    .line 541
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const-string/jumbo v35, "multiwindow_facade"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 542
    .local v15, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v25

    .line 543
    .local v25, "stackBoxBound":Landroid/graphics/Rect;
    if-eqz v25, :cond_1f7

    .line 544
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 545
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    .line 546
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v20

    .line 549
    :cond_1f7
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v34

    if-eqz v34, :cond_203

    .line 550
    const/16 v21, 0x0

    .line 553
    :cond_203
    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    move/from16 v1, v21

    if-lt v0, v1, :cond_217

    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    move/from16 v1, v19

    if-le v0, v1, :cond_229

    :cond_217
    const/16 v34, 0x1

    aget v34, v18, v34

    if-lez v34, :cond_229

    const/16 v34, 0x1

    aget v34, v18, v34

    move/from16 v0, v34

    if-ge v0, v8, :cond_229

    .line 554
    const/16 v21, 0x0

    .line 555
    move/from16 v19, v8

    .line 559
    .end local v15    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v25    # "stackBoxBound":Landroid/graphics/Rect;
    :cond_229
    move/from16 v0, v26

    if-ne v0, v4, :cond_34f

    .line 560
    const/16 v34, 0x0

    sub-int v35, v7, v29

    div-int/lit8 v35, v35, 0x2

    add-int v35, v35, v29

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    .line 565
    :goto_241
    const/16 v34, 0x0

    aget v34, p1, v34

    if-gez v34, :cond_395

    .line 566
    const/16 v34, 0x0

    aget v34, p1, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(I)I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_367

    .line 567
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v36, v36, v16

    add-int v35, v35, v36

    aput v35, p1, v34

    .line 572
    :cond_267
    :goto_267
    const/16 v34, 0x0

    aget v34, p1, v34

    if-gez v34, :cond_29f

    .line 573
    const/16 v34, 0x0

    const/16 v35, 0x0

    aput v35, p1, v34

    .line 574
    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_29f

    .line 575
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    .line 582
    :cond_29f
    :goto_29f
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v28, v35

    aput v35, p1, v34

    .line 584
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, mStatusbarHeight:I

    move/from16 v35, v0

    add-int v35, v35, v2

    add-int v35, v35, v21

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_2c7

    .line 585
    const/16 v34, 0x1

    add-int v35, v5, v9

    aput v35, p1, v34

    .line 588
    :cond_2c7
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-le v0, v1, :cond_30d

    .line 589
    move/from16 v0, v19

    if-le v5, v0, :cond_3c3

    move/from16 v14, v19

    .line 590
    .local v14, "middlePosition":I
    :goto_2e1
    if-gez v27, :cond_2e5

    .line 591
    const/16 v27, 0x0

    .line 593
    :cond_2e5
    add-int v34, v27, v9

    sub-int v34, v14, v34

    div-int/lit8 v14, v34, 0x2

    .line 594
    add-int v34, v27, v9

    sub-int v34, v5, v34

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_3c6

    .line 595
    const/16 v34, 0x1

    add-int v35, v27, v9

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v36, v14, v36

    add-int v35, v35, v36

    aput v35, p1, v34

    .line 601
    .end local v14    # "middlePosition":I
    :cond_30d
    :goto_30d
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-gt v0, v1, :cond_32d

    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v17

    move/from16 v0, v34

    move/from16 v1, v21

    if-ge v0, v1, :cond_341

    .line 602
    :cond_32d
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    .line 603
    const/16 v34, 0x1

    aget v35, p1, v34

    sub-int v35, v35, v21

    aput v35, p1, v34

    .line 605
    :cond_341
    return-void

    .line 494
    .end local v2    # "actionBarHeight":I
    .end local v4    # "endLine":I
    .end local v5    # "endLineBottom":I
    .end local v6    # "endLineTop":I
    .end local v7    # "endX":I
    .end local v8    # "fullScreenHeight":I
    .end local v9    # "handlerHeight":I
    .end local v10    # "isStatusBarVisible":Z
    .end local v11    # "maxWidth":I
    .end local v16    # "parentViewPositionX":I
    .end local v17    # "parentViewPositionY":I
    .end local v18    # "screen":[I
    .end local v19    # "screenBottom":I
    .end local v20    # "screenHeight":I
    .end local v21    # "screenTop":I
    .end local v22    # "screenWidth":I
    .end local v23    # "selEnd":I
    .end local v24    # "selStart":I
    .end local v26    # "startLine":I
    .end local v27    # "startLineBottom":I
    .end local v28    # "startLineTop":I
    .end local v29    # "startX":I
    .end local v30    # "text":Ljava/lang/CharSequence;
    .end local v31    # "viewportToContentHorizontalOffset":I
    .end local v32    # "viewportToContentVerticalOffset":I
    .end local v33    # "window":[I
    :cond_342
    const/4 v13, 0x6

    goto/16 :goto_2e

    .line 533
    .restart local v2    # "actionBarHeight":I
    .restart local v4    # "endLine":I
    .restart local v5    # "endLineBottom":I
    .restart local v6    # "endLineTop":I
    .restart local v7    # "endX":I
    .restart local v8    # "fullScreenHeight":I
    .restart local v9    # "handlerHeight":I
    .restart local v10    # "isStatusBarVisible":Z
    .restart local v11    # "maxWidth":I
    .restart local v16    # "parentViewPositionX":I
    .restart local v17    # "parentViewPositionY":I
    .restart local v18    # "screen":[I
    .restart local v19    # "screenBottom":I
    .restart local v20    # "screenHeight":I
    .restart local v21    # "screenTop":I
    .restart local v22    # "screenWidth":I
    .restart local v23    # "selEnd":I
    .restart local v24    # "selStart":I
    .restart local v26    # "startLine":I
    .restart local v27    # "startLineBottom":I
    .restart local v28    # "startLineTop":I
    .restart local v29    # "startX":I
    .restart local v30    # "text":Ljava/lang/CharSequence;
    .restart local v31    # "viewportToContentHorizontalOffset":I
    .restart local v32    # "viewportToContentVerticalOffset":I
    .restart local v33    # "window":[I
    :catch_345
    move-exception v3

    .line 534
    .local v3, "e":Landroid/os/RemoteException;
    const-string v34, "MultiSelectPopupWindow"

    const-string v35, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ae

    .line 562
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_34f
    const/16 v34, 0x0

    const/16 v35, 0x0

    aget v35, v33, v35

    div-int/lit8 v36, v11, 0x2

    add-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_241

    .line 568
    :cond_367
    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_267

    .line 569
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_267

    .line 578
    :cond_395
    const/16 v34, 0x0

    aget v34, p1, v34

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    add-int v34, v34, v16

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_29f

    .line 579
    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_29f

    :cond_3c3
    move v14, v5

    .line 589
    goto/16 :goto_2e1

    .line 597
    .restart local v14    # "middlePosition":I
    :cond_3c6
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    goto/16 :goto_30d
.end method

.method private getPopupWidthLimit()I
    .registers 5

    .prologue
    .line 336
    invoke-direct {p0}, getMenuLimit()I

    move-result v0

    .line 337
    .local v0, "items":I
    iget v1, p0, mItemWidth:I

    mul-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, mDividerWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, mPopupMaxWidth:I

    .line 339
    iget v1, p0, mPopupMaxWidth:I

    return v1
.end method

.method private getTextOffset()I
    .registers 4

    .prologue
    .line 472
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 473
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_11

    .line 474
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_11
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private initContentView()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 216
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, MAX_ITEMS_PORTRAIT_PHONE:I

    .line 217
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, MAX_ITEMS_LANDSCAPE_PHONE:I

    .line 218
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, MAX_ITEMS_PORTRAIT_TABLET:I

    .line 219
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, MAX_ITEMS_LANDSCAPE_TABLET:I

    .line 221
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105023f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mItemWidth:I

    .line 222
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050247

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, mExtraItemWidth:I

    .line 223
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080a10

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, mDivider:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object v4, p0, mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, mDividerWidth:I

    .line 226
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 227
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 228
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 229
    iget-object v4, p0, mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 232
    iput-object v2, p0, mContentView:Landroid/view/ViewGroup;

    .line 233
    iget-object v4, p0, mContentView:Landroid/view/ViewGroup;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    new-instance v4, Landroid/widget/HorizontalScrollView;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 236
    iget-object v4, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v4, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v7}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 239
    iget-object v4, p0, mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a16

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v4, p0, mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a0d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v4, p0, mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a17

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v4, p0, mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a0f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v4, p0, mIconDrawables:Ljava/util/ArrayList;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080a18

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_171
    const/4 v4, 0x5

    if-ge v0, v4, :cond_19a

    .line 246
    const v4, 0x1090157

    iget-object v5, p0, mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    .local v3, "t":Landroid/widget/TextView;
    iget-object v4, p0, mIconDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8, v4, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v4, p0, mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    iget-object v4, p0, mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_171

    .line 254
    .end local v3    # "t":Landroid/widget/TextView;
    :cond_19a
    iget-object v4, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 255
    iget-object v4, p0, mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 256
    return-void
.end method

.method private setHeight()V
    .registers 8

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_1
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 459
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, mActionBarHeight:I

    .line 460
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, mHandlerHeight:I

    .line 461
    const/high16 v2, 0x41c80000    # 25.0f

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, mStatusbarHeight:I

    .line 462
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_4b} :catch_4c

    .line 466
    :goto_4b
    return-void

    .line 463
    :catch_4c
    move-exception v1

    .line 464
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4b
.end method

.method private updateMultiSelectQuickPopupPosition()V
    .registers 11

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 365
    new-array v4, v5, [I

    .line 366
    .local v4, "window":[I
    new-array v3, v5, [I

    .line 367
    .local v3, "screen":[I
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 368
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 369
    aget v5, v3, v9

    aget v6, v4, v9

    sub-int v1, v5, v6

    .line 370
    .local v1, "gapX":I
    aget v5, v3, v7

    aget v6, v4, v7

    sub-int v2, v5, v6

    .line 372
    .local v2, "gapY":I
    invoke-virtual {p0}, isShowing()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 373
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_5d

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_5d

    .line 374
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 375
    iget-object v5, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 377
    :cond_53
    iget v5, p0, mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, mPositionX:I

    .line 378
    iget v5, p0, mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, mPositionY:I

    .line 380
    :cond_5d
    iget-object v5, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget v6, p0, mPositionX:I

    iget v7, p0, mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 402
    :goto_66
    return-void

    .line 382
    :cond_67
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_b3

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eq v5, v6, :cond_b3

    .line 383
    iget-object v5, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 384
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 385
    iget-object v5, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 388
    :cond_97
    iget v5, p0, mPositionX:I

    add-int/2addr v5, v1

    iput v5, p0, mPositionX:I

    .line 389
    iget v5, p0, mPositionY:I

    add-int/2addr v5, v2

    iput v5, p0, mPositionY:I

    .line 390
    iget-object v5, p0, mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iget v7, p0, mPositionX:I

    iget v8, p0, mPositionY:I

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_66

    .line 393
    :cond_b3
    iget-object v5, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 395
    :try_start_b8
    iget-object v5, p0, mPopupWindow:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, mPositionX:I

    iget v9, p0, mPositionY:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_c6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b8 .. :try_end_c6} :catch_c7

    goto :goto_66

    .line 396
    :catch_c7
    move-exception v0

    .line 397
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    .line 398
    const-string v5, "MultiSelectPopupWindow"

    const-string/jumbo v6, "showAtLocation occur BadTokenException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 442
    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    .line 443
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .registers 6

    .prologue
    const/high16 v4, -0x80000000

    .line 357
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 358
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 359
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, "id":I
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_15

    .line 424
    const v0, 0x102005d

    .line 434
    :cond_d
    :goto_d
    # getter for: Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$100()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onMultiSelectMenuItem(I)Z

    .line 435
    return-void

    .line 425
    :cond_15
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_22

    .line 426
    const v0, 0x102005e

    goto :goto_d

    .line 427
    :cond_22
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2f

    .line 428
    const v0, 0x1020061

    goto :goto_d

    .line 429
    :cond_2f
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3c

    .line 430
    const v0, 0x102005f

    goto :goto_d

    .line 431
    :cond_3c
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_d

    .line 432
    const v0, 0x1020060

    goto :goto_d
.end method

.method public refreshResource()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x104000d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1040001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1040461

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x10409bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x10409bd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4c
    const/4 v1, 0x5

    if-ge v0, v1, :cond_5d

    .line 191
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 193
    :cond_5d
    invoke-direct {p0}, setHeight()V

    .line 194
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 408
    if-ltz p1, :cond_12

    .line 409
    invoke-direct {p0}, computeLocalPosition()V

    .line 410
    invoke-direct {p0}, calculatePopupWindowWidth()V

    .line 411
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 412
    invoke-direct {p0}, updateMultiSelectQuickPopupPosition()V

    .line 414
    :cond_12
    return-void
.end method

.method public show()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, refreshResource()V

    .line 264
    iput v4, p0, mMenuItemCount:I

    .line 266
    iget-object v1, p0, mMenuEnables:[Z

    const/4 v2, 0x2

    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$200(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 267
    iget-object v1, p0, mMenuEnables:[Z

    const/4 v2, 0x3

    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$300(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 268
    iget-object v1, p0, mMenuEnables:[Z

    const/4 v2, 0x4

    iget-object v3, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnable()Z
    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    const/4 v1, 0x5

    if-ge v0, v1, :cond_53

    .line 271
    iget-object v1, p0, mMenuEnables:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_45

    .line 272
    iget v1, p0, mMenuItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mMenuItemCount:I

    .line 273
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 275
    :cond_45
    iget-object v1, p0, mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_42

    .line 279
    :cond_53
    invoke-direct {p0}, calculatePopupWindowWidth()V

    .line 281
    invoke-direct {p0}, computeLocalPosition()V

    .line 283
    iget-object v1, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, mPopupWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 285
    iget-object v1, p0, mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 287
    iget-object v1, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    # invokes: Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    invoke-static {v1}, Landroid/widget/MultiSelectPopupWindow;->access$500(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V

    .line 289
    invoke-direct {p0}, updateMultiSelectQuickPopupPosition()V

    .line 290
    return-void
.end method

.method public updatePosition(IIZZ)V
    .registers 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 610
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->access$600(Landroid/widget/MultiSelectPopupWindow;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 611
    if-eqz p4, :cond_17

    .line 612
    invoke-direct {p0}, computeLocalPosition()V

    .line 613
    :cond_17
    invoke-direct {p0}, updateMultiSelectQuickPopupPosition()V

    .line 615
    :cond_1a
    return-void
.end method
