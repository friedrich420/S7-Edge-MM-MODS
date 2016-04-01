.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonBarLayout;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mThemeIsDeviceDefault:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v5, p0, mViewSpacingSpecified:Z

    .line 105
    iput v5, p0, mIconId:I

    .line 117
    const/4 v2, -0x1

    iput v2, p0, mCheckedItem:I

    .line 126
    iput v5, p0, mButtonPanelLayoutHint:I

    .line 130
    iput-boolean v5, p0, mThemeIsDeviceDefault:Z

    .line 132
    new-instance v2, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v2, p0, mButtonHandler:Landroid/view/View$OnClickListener;

    .line 189
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, mDialogInterface:Landroid/content/DialogInterface;

    .line 191
    iput-object p3, p0, mWindow:Landroid/view/Window;

    .line 192
    new-instance v2, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v2, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 194
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 195
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11600bd

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 196
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_88

    .line 197
    iput-boolean v4, p0, mThemeIsDeviceDefault:Z

    .line 202
    :goto_3b
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v4, 0x101005d

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xa

    const v3, 0x1090026

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, mAlertDialogLayout:I

    .line 207
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, mButtonPanelSideLayout:I

    .line 209
    const/16 v2, 0xc

    const v3, 0x10900f2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, mListLayout:I

    .line 212
    const/16 v2, 0xd

    const v3, 0x1090013

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, mMultiChoiceItemLayout:I

    .line 215
    const/16 v2, 0xe

    const v3, 0x1090012

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, mSingleChoiceItemLayout:I

    .line 218
    const/16 v2, 0xf

    const v3, 0x1090011

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, mListItemLayout:I

    .line 222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 223
    return-void

    .line 199
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_88
    iput-boolean v5, p0, mThemeIsDeviceDefault:Z

    goto :goto_3b
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget v0, p0, mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget v0, p0, mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget v0, p0, mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 72
    iput-object p1, p0, mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 72
    iput-object p1, p0, mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    iget v0, p0, mListLayout:I

    return v0
.end method

.method private adjustTwButtonsPadding()V
    .registers 14

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "btnCount":I
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_1d

    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_1d

    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_1d

    .line 630
    const/4 v2, 0x3

    .line 633
    :cond_1d
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105014e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 634
    .local v7, "btnTextSizeForThreeBtn":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105014d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 635
    .local v6, "btnTextSize":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105014f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 636
    .local v3, "btnPaddingHorizontal":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050150

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 637
    .local v4, "btnPaddingHorizontalForThreeBtn":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050151

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 638
    .local v5, "btnPaddingVertical":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050149

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 639
    .local v1, "btnBarPaddingHorizontal":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105014a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 641
    .local v0, "btnBarPaddingBottom":I
    iget-object v9, p0, mWindow:Landroid/view/Window;

    const v10, 0x1020361

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 643
    .local v8, "buttonPanel":Landroid/view/View;
    const/4 v9, 0x3

    if-ne v2, v9, :cond_be

    .line 644
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v4, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 645
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 646
    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v4, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 647
    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 648
    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v4, v5, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 649
    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 650
    sub-int v9, v3, v4

    add-int/2addr v9, v1

    sub-int v10, v3, v4

    add-int/2addr v10, v1

    invoke-virtual {v8, v9, v11, v10, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 651
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 652
    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 653
    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v9, v7}, checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 672
    :goto_bd
    return-void

    .line 655
    :cond_be
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_d6

    .line 656
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v9, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 657
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    int-to-float v10, v6

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 658
    iget-object v9, p0, mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v9, v6}, checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 660
    :cond_d6
    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_ee

    .line 661
    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v9, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 662
    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    int-to-float v10, v6

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 663
    iget-object v9, p0, mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v9, v6}, checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 665
    :cond_ee
    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_106

    .line 666
    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v9, v3, v5, v3, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 667
    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    int-to-float v10, v6

    invoke-virtual {v9, v11, v10}, Landroid/widget/Button;->setTextSize(IF)V

    .line 668
    iget-object v9, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v9, v6}, checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 670
    :cond_106
    invoke-virtual {v8, v1, v11, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_bd
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 244
    :goto_8
    return v2

    .line 230
    :cond_9
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_f

    move v2, v3

    .line 231
    goto :goto_8

    :cond_f
    move-object v1, p0

    .line 234
    check-cast v1, Landroid/view/ViewGroup;

    .line 235
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 236
    .local v0, "i":I
    :cond_16
    if-lez v0, :cond_25

    .line 237
    add-int/lit8 v0, v0, -0x1

    .line 238
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 239
    invoke-static {p0}, canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_8

    :cond_25
    move v2, v3

    .line 244
    goto :goto_8
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 8
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 852
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 854
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 855
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    iget-object v3, p0, mWindow:Landroid/view/Window;

    const v4, 0x1020362

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 857
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_1f

    .line 858
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 860
    :cond_1f
    iget-object v3, p0, mWindow:Landroid/view/Window;

    const v4, 0x1020363

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 861
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_2d

    .line 862
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :cond_2d
    return-void
.end method

.method private checkMaxFontScale(Landroid/widget/TextView;I)V
    .registers 8
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .prologue
    .line 989
    const v1, 0x3f99999a    # 1.2f

    .line 990
    .local v1, "maxScale":F
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 992
    .local v0, "currentFontScale":F
    iget-boolean v3, p0, mThemeIsDeviceDefault:Z

    if-eqz v3, :cond_20

    cmpl-float v3, v0, v1

    if-lez v3, :cond_20

    .line 993
    int-to-float v3, p2

    div-float v2, v3, v0

    .line 994
    .local v2, "scaleBase":F
    const/4 v3, 0x0

    mul-float v4, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 996
    .end local v2    # "scaleBase":F
    :cond_20
    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 750
    if-eqz p1, :cond_f

    .line 751
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 753
    :cond_f
    if-eqz p2, :cond_1b

    .line 754
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    :cond_1b
    return-void

    :cond_1c
    move v0, v2

    .line 751
    goto :goto_c

    :cond_1e
    move v1, v2

    .line 754
    goto :goto_18
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .prologue
    .line 487
    if-nez p1, :cond_10

    .line 489
    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_c

    .line 490
    check-cast p2, Landroid/view/ViewStub;

    .end local p2    # "defaultPanel":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .restart local p2    # "defaultPanel":Landroid/view/View;
    :cond_c
    move-object v1, p2

    .line 493
    check-cast v1, Landroid/view/ViewGroup;

    .line 509
    :goto_f
    return-object v1

    .line 497
    :cond_10
    if-eqz p2, :cond_1f

    .line 498
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 499
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1f

    .line 500
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 505
    :cond_1f
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_29

    .line 506
    check-cast p1, Landroid/view/ViewStub;

    .end local p1    # "customPanel":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .restart local p1    # "customPanel":Landroid/view/View;
    :cond_29
    move-object v1, p1

    .line 509
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_f
.end method

.method private selectContentView()I
    .registers 3

    .prologue
    .line 257
    iget v0, p0, mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 258
    iget v0, p0, mAlertDialogLayout:I

    .line 264
    :goto_6
    return v0

    .line 260
    :cond_7
    iget v0, p0, mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 261
    iget v0, p0, mButtonPanelSideLayout:I

    goto :goto_6

    .line 264
    :cond_f
    iget v0, p0, mAlertDialogLayout:I

    goto :goto_6
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .registers 33
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 868
    const/4 v10, 0x0

    .line 869
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 870
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 871
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 872
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 873
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 874
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 875
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 876
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 880
    .local v5, "bottomMedium":I
    const/16 v22, 0x12

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 882
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_36

    .line 883
    const v10, 0x108064d

    .line 884
    const v19, 0x108065b

    .line 885
    const v7, 0x108064a

    .line 886
    const v4, 0x1080647

    .line 887
    const v9, 0x108064c

    .line 888
    const v18, 0x108065a

    .line 889
    const v6, 0x1080649

    .line 890
    const v3, 0x1080646

    .line 891
    const v5, 0x1080648

    .line 894
    :cond_36
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 895
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 896
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 897
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 907
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 908
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 909
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 910
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 912
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 913
    .local v16, "pos":I
    if-eqz p6, :cond_7e

    .line 914
    aput-object p2, v21, v16

    .line 915
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 916
    add-int/lit8 v16, v16, 0x1

    .line 924
    :cond_7e
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8c

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_8c
    aput-object p3, v21, v16

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c8

    const/16 v22, 0x1

    :goto_98
    aput-boolean v22, v13, v16

    .line 926
    add-int/lit8 v16, v16, 0x1

    .line 928
    if-eqz p7, :cond_aa

    .line 929
    aput-object p4, v21, v16

    .line 930
    move-object/from16 v0, p0

    iget-boolean v0, v0, mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 931
    add-int/lit8 v16, v16, 0x1

    .line 934
    :cond_aa
    if-eqz p8, :cond_b2

    .line 935
    aput-object p5, v21, v16

    .line 936
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 939
    :cond_b2
    const/16 v17, 0x0

    .line 940
    .local v17, "setView":Z
    const/16 v16, 0x0

    :goto_b6
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_ef

    .line 941
    aget-object v20, v21, v16

    .line 942
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_cb

    .line 940
    :goto_c5
    add-int/lit8 v16, v16, 0x1

    goto :goto_b6

    .line 925
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    :cond_c8
    const/16 v22, 0x0

    goto :goto_98

    .line 946
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_cb
    if-eqz v12, :cond_da

    .line 947
    if-nez v17, :cond_e2

    .line 948
    if-eqz v11, :cond_df

    move/from16 v22, v18

    :goto_d3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 952
    :goto_d8
    const/16 v17, 0x1

    .line 955
    :cond_da
    move-object/from16 v12, v20

    .line 956
    aget-boolean v11, v13, v16

    goto :goto_c5

    :cond_df
    move/from16 v22, v19

    .line 948
    goto :goto_d3

    .line 950
    :cond_e2
    if-eqz v11, :cond_ec

    move/from16 v22, v6

    :goto_e6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_d8

    :cond_ec
    move/from16 v22, v7

    goto :goto_e6

    .line 959
    .end local v20    # "v":Landroid/view/View;
    :cond_ef
    if-eqz v12, :cond_11c

    .line 960
    if-eqz v17, :cond_150

    .line 961
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 962
    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 963
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 967
    if-eqz v11, :cond_14d

    if-eqz p8, :cond_14a

    move/from16 v22, v5

    :goto_117
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 977
    :cond_11c
    :goto_11c
    move-object/from16 v0, p0

    iget-object v14, v0, mListView:Landroid/widget/ListView;

    .line 978
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_149

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_149

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 980
    move-object/from16 v0, p0

    iget v8, v0, mCheckedItem:I

    .line 981
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_149

    .line 982
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 983
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 986
    .end local v8    # "checkedItem":I
    :cond_149
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_14a
    move/from16 v22, v3

    .line 967
    goto :goto_117

    :cond_14d
    move/from16 v22, v4

    goto :goto_117

    .line 970
    :cond_150
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 971
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 973
    if-eqz v11, :cond_16e

    move/from16 v22, v9

    :goto_168
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_11c

    :cond_16e
    move/from16 v22, v10

    goto :goto_168
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 14
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const v11, 0x108091a

    const/16 v10, 0x8

    const/4 v8, 0x0

    .line 759
    const/4 v2, 0x1

    .line 760
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 761
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 762
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v6, 0x0

    .line 765
    .local v6, "whichButtons":I
    const/4 v5, 0x0

    .line 767
    .local v5, "isEnabledShowBtnBg":Z
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 768
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v3, :cond_1e

    .line 769
    const-string/jumbo v7, "show_button_background"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_1e

    .line 770
    const/4 v5, 0x1

    .line 775
    :cond_1e
    const v7, 0x1020019

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, mButtonPositive:Landroid/widget/Button;

    .line 778
    iget-boolean v7, p0, mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_34

    if-eqz v5, :cond_34

    .line 779
    iget-object v7, p0, mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 783
    :cond_34
    iget-object v7, p0, mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v7, p0, mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 786
    iget-object v7, p0, mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 793
    :goto_48
    const v7, 0x102001a

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, mButtonNegative:Landroid/widget/Button;

    .line 796
    iget-boolean v7, p0, mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_5e

    if-eqz v5, :cond_5e

    .line 797
    iget-object v7, p0, mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 801
    :cond_5e
    iget-object v7, p0, mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    iget-object v7, p0, mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 804
    iget-object v7, p0, mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 812
    :goto_72
    const v7, 0x102001b

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, mButtonNeutral:Landroid/widget/Button;

    .line 815
    iget-boolean v7, p0, mThemeIsDeviceDefault:Z

    if-eqz v7, :cond_88

    if-eqz v5, :cond_88

    .line 816
    iget-object v7, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 820
    :cond_88
    iget-object v7, p0, mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v7, p0, mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 823
    iget-object v7, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 831
    :goto_9c
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 836
    if-ne v6, v2, :cond_dd

    .line 837
    iget-object v7, p0, mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v7}, centerButton(Landroid/widget/Button;)V

    .line 845
    :cond_ab
    :goto_ab
    if-eqz v6, :cond_ed

    .line 846
    .local v4, "hasButtons":Z
    :goto_ad
    if-nez v4, :cond_b2

    .line 847
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 849
    :cond_b2
    return-void

    .line 788
    .end local v4    # "hasButtons":Z
    :cond_b3
    iget-object v7, p0, mButtonPositive:Landroid/widget/Button;

    iget-object v9, p0, mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v7, p0, mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 790
    or-int/2addr v6, v2

    goto :goto_48

    .line 806
    :cond_c1
    iget-object v7, p0, mButtonNegative:Landroid/widget/Button;

    iget-object v9, p0, mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v7, p0, mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 809
    or-int/2addr v6, v0

    goto :goto_72

    .line 825
    :cond_cf
    iget-object v7, p0, mButtonNeutral:Landroid/widget/Button;

    iget-object v9, p0, mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v7, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 828
    or-int/2addr v6, v1

    goto :goto_9c

    .line 838
    :cond_dd
    if-ne v6, v0, :cond_e5

    .line 839
    iget-object v7, p0, mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v7}, centerButton(Landroid/widget/Button;)V

    goto :goto_ab

    .line 840
    :cond_e5
    if-ne v6, v1, :cond_ab

    .line 841
    iget-object v7, p0, mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v7}, centerButton(Landroid/widget/Button;)V

    goto :goto_ab

    :cond_ed
    move v4, v8

    .line 845
    goto :goto_ad
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 8
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 722
    const v2, 0x1020365

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, mScrollView:Landroid/widget/ScrollView;

    .line 723
    iget-object v2, p0, mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 726
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, mMessageView:Landroid/widget/TextView;

    .line 727
    iget-object v2, p0, mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_24

    .line 747
    :goto_23
    return-void

    .line 731
    :cond_24
    iget-object v2, p0, mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_30

    .line 732
    iget-object v2, p0, mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 734
    :cond_30
    iget-object v2, p0, mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    iget-object v2, p0, mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 737
    iget-object v2, p0, mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_5c

    .line 738
    iget-object v2, p0, mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 739
    .local v1, "scrollParent":Landroid/view/ViewGroup;
    iget-object v2, p0, mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 740
    .local v0, "childIndex":I
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 741
    iget-object v2, p0, mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    .line 744
    .end local v0    # "childIndex":I
    .end local v1    # "scrollParent":Landroid/view/ViewGroup;
    :cond_5c
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_23
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 10
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v5, 0x20000

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 595
    iget-object v4, p0, mView:Landroid/view/View;

    if-eqz v4, :cond_4c

    .line 596
    iget-object v1, p0, mView:Landroid/view/View;

    .line 604
    .local v1, "customView":Landroid/view/View;
    :goto_a
    if-eqz v1, :cond_d

    const/4 v2, 0x1

    .line 605
    .local v2, "hasCustomView":Z
    :cond_d
    if-eqz v2, :cond_15

    invoke-static {v1}, canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 606
    :cond_15
    iget-object v4, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 610
    :cond_1a
    if-eqz v2, :cond_5f

    .line 611
    iget-object v4, p0, mWindow:Landroid/view/Window;

    const v5, 0x102002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 612
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-boolean v4, p0, mViewSpacingSpecified:Z

    if-eqz v4, :cond_3e

    .line 615
    iget v4, p0, mViewSpacingLeft:I

    iget v5, p0, mViewSpacingTop:I

    iget v6, p0, mViewSpacingRight:I

    iget v7, p0, mViewSpacingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 619
    :cond_3e
    iget-object v4, p0, mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4b

    .line 620
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 625
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4b
    :goto_4b
    return-void

    .line 597
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "hasCustomView":Z
    :cond_4c
    iget v4, p0, mViewLayoutResId:I

    if-eqz v4, :cond_5d

    .line 598
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 599
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 600
    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_a

    .line 601
    .end local v1    # "customView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_5d
    const/4 v1, 0x0

    .restart local v1    # "customView":Landroid/view/View;
    goto :goto_a

    .line 623
    .restart local v2    # "hasCustomView":Z
    :cond_5f
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4b
.end method

.method private setupDecor()V
    .registers 6

    .prologue
    .line 449
    iget-object v3, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 450
    .local v1, "decor":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 451
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_19

    .line 452
    instance-of v3, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_19

    .line 453
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setEnableShadow(Z)V

    .line 454
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 457
    :cond_19
    iget-object v3, p0, mWindow:Landroid/view/Window;

    const v4, 0x102035c

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 458
    .local v2, "parent":Landroid/view/View;
    if-eqz v2, :cond_35

    if-eqz v1, :cond_35

    .line 459
    new-instance v3, Lcom/android/internal/app/AlertController$2;

    invoke-direct {v3, p0, v2}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 471
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 472
    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 474
    :cond_35
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 11
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x102035e

    const/4 v0, 0x0

    const/16 v8, 0x8

    .line 675
    iget-object v3, p0, mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_20

    .line 677
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 680
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 683
    iget-object v3, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 684
    .local v2, "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 719
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "titleTemplate":Landroid/view/View;
    :goto_1f
    return-void

    .line 686
    :cond_20
    iget-object v3, p0, mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, mIconView:Landroid/widget/ImageView;

    .line 688
    iget-object v3, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    const/4 v0, 0x1

    .line 689
    .local v0, "hasTextTitle":Z
    :cond_36
    if-eqz v0, :cond_99

    .line 691
    iget-object v3, p0, mWindow:Landroid/view/Window;

    const v4, 0x102035f

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, mTitleView:Landroid/widget/TextView;

    .line 692
    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105013a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, checkMaxFontScale(Landroid/widget/TextView;I)V

    .line 698
    iget v3, p0, mIconId:I

    if-eqz v3, :cond_6a

    .line 699
    iget-object v3, p0, mIconView:Landroid/widget/ImageView;

    iget v4, p0, mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f

    .line 700
    :cond_6a
    iget-object v3, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_76

    .line 701
    iget-object v3, p0, mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 705
    :cond_76
    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 709
    iget-object v3, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    .line 713
    :cond_99
    iget-object v3, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 714
    .restart local v2    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v3, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1f
.end method

.method private setupView()V
    .registers 29

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Landroid/view/Window;

    const v24, 0x102035c

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 514
    .local v22, "parentPanel":Landroid/view/View;
    const v4, 0x102035d

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 515
    .local v19, "defaultTopPanel":Landroid/view/View;
    const v4, 0x1020364

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 516
    .local v18, "defaultContentPanel":Landroid/view/View;
    const v4, 0x1020361

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 520
    .local v17, "defaultButtonPanel":Landroid/view/View;
    const v4, 0x1020366

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 521
    .local v8, "customPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, setupCustomContent(Landroid/view/ViewGroup;)V

    .line 523
    const v4, 0x102035d

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 524
    .local v16, "customTopPanel":Landroid/view/View;
    const v4, 0x1020364

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 525
    .local v15, "customContentPanel":Landroid/view/View;
    const v4, 0x1020361

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 528
    .local v14, "customButtonPanel":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 529
    .local v6, "topPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 530
    .local v7, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v14, v1}, resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    .line 532
    .local v9, "buttonPanel":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, setupContent(Landroid/view/ViewGroup;)V

    .line 533
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, setupButtons(Landroid/view/ViewGroup;)V

    .line 534
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, setupTitle(Landroid/view/ViewGroup;)V

    .line 536
    if-eqz v8, :cond_12e

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_12e

    const/4 v11, 0x1

    .line 538
    .local v11, "hasCustomPanel":Z
    :goto_83
    if-eqz v6, :cond_131

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_131

    const/4 v10, 0x1

    .line 540
    .local v10, "hasTopPanel":Z
    :goto_90
    if-eqz v9, :cond_134

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v24, 0x8

    move/from16 v0, v24

    if-eq v4, v0, :cond_134

    const/4 v12, 0x1

    .line 544
    .local v12, "hasButtonPanel":Z
    :goto_9d
    if-nez v12, :cond_bb

    .line 545
    if-eqz v7, :cond_b0

    .line 546
    const v4, 0x102036a

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 547
    .local v23, "spacer":Landroid/view/View;
    if-eqz v23, :cond_b0

    .line 548
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 551
    .end local v23    # "spacer":Landroid/view/View;
    :cond_b0
    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Landroid/view/Window;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 554
    :cond_bb
    invoke-direct/range {p0 .. p0}, adjustTwButtonsPadding()V

    .line 556
    if-eqz v10, :cond_ee

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, mScrollView:Landroid/widget/ScrollView;

    if-eqz v4, :cond_d1

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, mScrollView:Landroid/widget/ScrollView;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 564
    :cond_d1
    move-object/from16 v0, p0

    iget-object v4, v0, mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_df

    move-object/from16 v0, p0

    iget-object v4, v0, mListView:Landroid/widget/ListView;

    if-nez v4, :cond_df

    if-eqz v11, :cond_137

    .line 565
    :cond_df
    const v4, 0x1020360

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 570
    .local v20, "divider":Landroid/view/View;
    :goto_e6
    if-eqz v20, :cond_ee

    .line 571
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 576
    .end local v20    # "divider":Landroid/view/View;
    :cond_ee
    if-nez v11, :cond_10c

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_13f

    move-object/from16 v0, p0

    iget-object v13, v0, mListView:Landroid/widget/ListView;

    .line 578
    .local v13, "content":Landroid/view/View;
    :goto_fa
    if-eqz v13, :cond_10c

    .line 579
    if-eqz v10, :cond_144

    const/4 v4, 0x1

    move/from16 v24, v4

    :goto_101
    if-eqz v12, :cond_148

    const/4 v4, 0x2

    :goto_104
    or-int v21, v24, v4

    .line 581
    .local v21, "indicators":I
    const/4 v4, 0x3

    move/from16 v0, v21

    invoke-virtual {v13, v0, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 586
    .end local v13    # "content":Landroid/view/View;
    .end local v21    # "indicators":I
    :cond_10c
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const/16 v24, 0x0

    sget-object v25, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v26, 0x101005d

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v4, p0

    .line 588
    invoke-direct/range {v4 .. v12}, setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 590
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 591
    return-void

    .line 536
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "hasTopPanel":Z
    .end local v11    # "hasCustomPanel":Z
    .end local v12    # "hasButtonPanel":Z
    :cond_12e
    const/4 v11, 0x0

    goto/16 :goto_83

    .line 538
    .restart local v11    # "hasCustomPanel":Z
    :cond_131
    const/4 v10, 0x0

    goto/16 :goto_90

    .line 540
    .restart local v10    # "hasTopPanel":Z
    :cond_134
    const/4 v12, 0x0

    goto/16 :goto_9d

    .line 567
    .restart local v12    # "hasButtonPanel":Z
    :cond_137
    const v4, 0x1020368

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "divider":Landroid/view/View;
    goto :goto_e6

    .line 577
    .end local v20    # "divider":Landroid/view/View;
    :cond_13f
    move-object/from16 v0, p0

    iget-object v13, v0, mScrollView:Landroid/widget/ScrollView;

    goto :goto_fa

    .line 579
    .restart local v13    # "content":Landroid/view/View;
    :cond_144
    const/4 v4, 0x0

    move/from16 v24, v4

    goto :goto_101

    :cond_148
    const/4 v4, 0x0

    goto :goto_104
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 183
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 184
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1160017

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 185
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_15

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "whichButton"    # I

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_e

    .line 434
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 428
    :pswitch_5
    iget-object v0, p0, mButtonPositive:Landroid/widget/Button;

    goto :goto_4

    .line 430
    :pswitch_8
    iget-object v0, p0, mButtonNegative:Landroid/widget/Button;

    goto :goto_4

    .line 432
    :pswitch_b
    iget-object v0, p0, mButtonNeutral:Landroid/widget/Button;

    goto :goto_4

    .line 426
    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .registers 5
    .param p1, "attrId"    # I

    .prologue
    .line 412
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 413
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 414
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .registers 4

    .prologue
    .line 249
    iget-object v1, p0, mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 250
    invoke-direct {p0}, selectContentView()I

    move-result v0

    .line 251
    .local v0, "contentView":I
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 252
    invoke-direct {p0}, setupView()V

    .line 253
    invoke-direct {p0}, setupDecor()V

    .line 254
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 440
    iget-object v0, p0, mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 445
    iget-object v0, p0, mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 342
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 343
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 346
    :cond_a
    packed-switch p1, :pswitch_data_24

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_15
    iput-object p2, p0, mButtonPositiveText:Ljava/lang/CharSequence;

    .line 350
    iput-object p4, p0, mButtonPositiveMessage:Landroid/os/Message;

    .line 366
    :goto_19
    return-void

    .line 354
    :pswitch_1a
    iput-object p2, p0, mButtonNegativeText:Ljava/lang/CharSequence;

    .line 355
    iput-object p4, p0, mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_19

    .line 359
    :pswitch_1f
    iput-object p2, p0, mButtonNeutralText:Ljava/lang/CharSequence;

    .line 360
    iput-object p4, p0, mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_19

    .line 346
    :pswitch_data_24
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .registers 2
    .param p1, "layoutHint"    # I

    .prologue
    .line 324
    iput p1, p0, mButtonPanelLayoutHint:I

    .line 325
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 278
    iput-object p1, p0, mCustomTitleView:Landroid/view/View;

    .line 279
    return-void
.end method

.method public setIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 376
    iput p1, p0, mIconId:I

    .line 378
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 379
    if-eqz p1, :cond_13

    .line 380
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    iget v1, p0, mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    :cond_12
    :goto_12
    return-void

    .line 382
    :cond_13
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 393
    iput-object p1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 394
    const/4 v0, 0x0

    iput v0, p0, mIconId:I

    .line 396
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 397
    if-eqz p1, :cond_11

    .line 398
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_10
    :goto_10
    return-void

    .line 400
    :cond_11
    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10
.end method

.method public setInverseBackgroundForced(Z)V
    .registers 2
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, mForceInverseBackground:Z

    .line 419
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 282
    iput-object p1, p0, mMessage:Ljava/lang/CharSequence;

    .line 283
    iget-object v0, p0, mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 284
    iget-object v0, p0, mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    iput-object p1, p0, mTitle:Ljava/lang/CharSequence;

    .line 269
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 270
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_b
    return-void
.end method

.method public setView(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, mView:Landroid/view/View;

    .line 293
    iput p1, p0, mViewLayoutResId:I

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, mViewSpacingSpecified:Z

    .line 295
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 301
    iput-object p1, p0, mView:Landroid/view/View;

    .line 302
    iput v0, p0, mViewLayoutResId:I

    .line 303
    iput-boolean v0, p0, mViewSpacingSpecified:Z

    .line 304
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 311
    iput-object p1, p0, mView:Landroid/view/View;

    .line 312
    const/4 v0, 0x0

    iput v0, p0, mViewLayoutResId:I

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, mViewSpacingSpecified:Z

    .line 314
    iput p2, p0, mViewSpacingLeft:I

    .line 315
    iput p3, p0, mViewSpacingTop:I

    .line 316
    iput p4, p0, mViewSpacingRight:I

    .line 317
    iput p5, p0, mViewSpacingBottom:I

    .line 318
    return-void
.end method
