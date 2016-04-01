.class public Landroid/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;,
        Landroid/widget/ActivityChooserView$Callbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityChooserView"


# instance fields
.field private final mActivityChooserContent:Landroid/widget/LinearLayout;

.field private final mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

.field private final mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field private final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field private final mDefaultActivityButtonImage:Landroid/widget/ImageView;

.field private final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field private mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field private mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/widget/ListPopupWindow;

.field private final mModelDataSetOberver:Landroid/database/DataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/view/ActionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x0

    const v8, 0x1020359

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 122
    new-instance v5, Landroid/widget/ActivityChooserView$1;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$1;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, mModelDataSetOberver:Landroid/database/DataSetObserver;

    .line 136
    new-instance v5, Landroid/widget/ActivityChooserView$2;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$2;-><init>(Landroid/widget/ActivityChooserView;)V

    iput-object v5, p0, mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 170
    iput v7, p0, mInitialActivityCount:I

    .line 230
    sget-object v5, Lcom/android/internal/R$styleable;->ActivityChooserView:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, mInitialActivityCount:I

    .line 237
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 240
    .local v1, "expandActivityOverflowButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 243
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090021

    invoke-virtual {v3, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 245
    new-instance v5, Landroid/widget/ActivityChooserView$Callbacks;

    invoke-direct {v5, p0, v9}, Landroid/widget/ActivityChooserView$Callbacks;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V

    iput-object v5, p0, mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    .line 247
    const v5, 0x1020357

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 248
    iget-object v5, p0, mActivityChooserContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    .line 250
    const v5, 0x102035a

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 251
    iget-object v5, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v5, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    iget-object v6, p0, mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 253
    iget-object v5, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, mDefaultActivityButtonImage:Landroid/widget/ImageView;

    .line 255
    const v5, 0x1020358

    invoke-virtual {p0, v5}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 256
    .local v2, "expandButton":Landroid/widget/FrameLayout;
    iget-object v5, p0, mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    new-instance v5, Landroid/widget/ActivityChooserView$3;

    invoke-direct {v5, p0}, Landroid/widget/ActivityChooserView$3;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 264
    new-instance v5, Landroid/widget/ActivityChooserView$4;

    invoke-direct {v5, p0, v2}, Landroid/widget/ActivityChooserView$4;-><init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 282
    iput-object v2, p0, mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    .line 284
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    .line 286
    iget-object v5, p0, mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    new-instance v5, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-direct {v5, p0, v9}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V

    iput-object v5, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    .line 289
    iget-object v5, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    new-instance v6, Landroid/widget/ActivityChooserView$5;

    invoke-direct {v6, p0}, Landroid/widget/ActivityChooserView$5;-><init>(Landroid/widget/ActivityChooserView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 298
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    const v6, 0x105000e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, mListPopupMaxWidth:I

    .line 300
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    invoke-direct {p0}, getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mModelDataSetOberver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/ActivityChooserView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/ActivityChooserView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    invoke-direct {p0}, updateAppearance()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ActivityChooserView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, showPopupUnchecked(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ActivityChooserView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-boolean v0, p0, mIsSelectingDefaultActivity:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/ActivityChooserView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, mIsSelectingDefaultActivity:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget-object v0, p0, mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ActivityChooserView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserView;

    .prologue
    .line 65
    iget v0, p0, mInitialActivityCount:I

    return v0
.end method

.method private getListPopupWindow()Landroid/widget/ListPopupWindow;
    .registers 3

    .prologue
    .line 528
    iget-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_2f

    .line 529
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 530
    iget-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 531
    iget-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 532
    iget-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 533
    iget-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 534
    iget-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, mCallbacks:Landroid/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 536
    :cond_2f
    iget-object v0, p0, mListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method private showPopupUnchecked(I)V
    .registers 11
    .param p1, "maxActivityCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 371
    iget-object v7, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v7

    if-nez v7, :cond_12

    .line 372
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No data model. Did you call #setDataModel?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 375
    :cond_12
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iget-object v8, p0, mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 377
    iget-object v7, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_83

    move v2, v5

    .line 380
    .local v2, "defaultActivityButtonShown":Z
    :goto_24
    iget-object v7, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v0

    .line 381
    .local v0, "activityCount":I
    if-eqz v2, :cond_85

    move v3, v5

    .line 382
    .local v3, "maxActivityCountOffset":I
    :goto_2d
    const v7, 0x7fffffff

    if-eq p1, v7, :cond_87

    add-int v7, p1, v3

    if-le v0, v7, :cond_87

    .line 384
    iget-object v7, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 385
    iget-object v7, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 391
    :goto_42
    invoke-direct {p0}, getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v4

    .line 392
    .local v4, "popupWindow":Landroid/widget/ListPopupWindow;
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_82

    .line 393
    iget-boolean v7, p0, mIsSelectingDefaultActivity:Z

    if-nez v7, :cond_52

    if-nez v2, :cond_92

    .line 394
    :cond_52
    iget-object v6, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6, v5, v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 398
    :goto_57
    iget-object v6, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v6

    iget v7, p0, mListPopupMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 399
    .local v1, "contentWidth":I
    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 400
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 401
    iget-object v6, p0, mProvider:Landroid/view/ActionProvider;

    if-eqz v6, :cond_72

    .line 402
    iget-object v6, p0, mProvider:Landroid/view/ActionProvider;

    invoke-virtual {v6, v5}, Landroid/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 404
    :cond_72
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x104048c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 407
    .end local v1    # "contentWidth":I
    :cond_82
    return-void

    .end local v0    # "activityCount":I
    .end local v2    # "defaultActivityButtonShown":Z
    .end local v3    # "maxActivityCountOffset":I
    .end local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    :cond_83
    move v2, v6

    .line 377
    goto :goto_24

    .restart local v0    # "activityCount":I
    .restart local v2    # "defaultActivityButtonShown":Z
    :cond_85
    move v3, v6

    .line 381
    goto :goto_2d

    .line 387
    .restart local v3    # "maxActivityCountOffset":I
    :cond_87
    iget-object v7, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 388
    iget-object v7, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_42

    .line 396
    .restart local v4    # "popupWindow":Landroid/widget/ListPopupWindow;
    :cond_92
    iget-object v7, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v7, v6, v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_57
.end method

.method private updateAppearance()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 544
    iget-object v6, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_64

    .line 545
    iget-object v6, p0, mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 550
    :goto_f
    iget-object v6, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v1

    .line 551
    .local v1, "activityCount":I
    iget-object v6, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getHistorySize()I

    move-result v3

    .line 552
    .local v3, "historySize":I
    if-eq v1, v8, :cond_21

    if-le v1, v8, :cond_6a

    if-lez v3, :cond_6a

    .line 553
    :cond_21
    iget-object v6, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 554
    iget-object v6, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 555
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 556
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v6, p0, mDefaultActivityButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget v6, p0, mDefaultActionButtonContentDescription:I

    if-eqz v6, :cond_54

    .line 558
    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 559
    .local v4, "label":Ljava/lang/CharSequence;
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget v7, p0, mDefaultActionButtonContentDescription:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "contentDescription":Ljava/lang/String;
    iget-object v6, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 567
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v2    # "contentDescription":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_54
    :goto_54
    iget-object v6, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_72

    .line 568
    iget-object v6, p0, mActivityChooserContent:Landroid/widget/LinearLayout;

    iget-object v7, p0, mActivityChooserContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 572
    :goto_63
    return-void

    .line 547
    .end local v1    # "activityCount":I
    .end local v3    # "historySize":I
    :cond_64
    iget-object v6, p0, mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_f

    .line 564
    .restart local v1    # "activityCount":I
    .restart local v3    # "historySize":I
    :cond_6a
    iget-object v6, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_54

    .line 570
    :cond_72
    iget-object v6, p0, mActivityChooserContent:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_63
.end method


# virtual methods
.method public dismissPopup()Z
    .registers 3

    .prologue
    .line 415
    invoke-virtual {p0}, isShowingPopup()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 416
    invoke-direct {p0}, getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 417
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 418
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 419
    iget-object v1, p0, mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 422
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_1c
    const/4 v1, 0x1

    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method public isShowingPopup()Z
    .registers 2

    .prologue
    .line 431
    invoke-direct {p0}, getListPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 436
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 437
    iget-object v1, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 438
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_10

    .line 439
    iget-object v1, p0, mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 441
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsAttachedToWindow:Z

    .line 442
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 446
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 447
    iget-object v2, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 448
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_10

    .line 449
    iget-object v2, p0, mModelDataSetOberver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 451
    :cond_10
    invoke-virtual {p0}, getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 452
    .local v1, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 453
    iget-object v2, p0, mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 455
    :cond_1f
    invoke-virtual {p0}, isShowingPopup()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 456
    invoke-virtual {p0}, dismissPopup()Z

    .line 458
    :cond_28
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsAttachedToWindow:Z

    .line 459
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 477
    iget-object v0, p0, mActivityChooserContent:Landroid/widget/LinearLayout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 478
    invoke-virtual {p0}, isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_13

    .line 479
    invoke-virtual {p0}, dismissPopup()Z

    .line 481
    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 463
    iget-object v0, p0, mActivityChooserContent:Landroid/widget/LinearLayout;

    .line 467
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_14

    .line 468
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 471
    :cond_14
    invoke-virtual {p0, v0, p1, p2}, measureChild(Landroid/view/View;II)V

    .line 472
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, setMeasuredDimension(II)V

    .line 473
    return-void
.end method

.method public setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V
    .registers 3
    .param p1, "dataModel"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 306
    iget-object v0, p0, mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/widget/ActivityChooserModel;)V

    .line 307
    invoke-virtual {p0}, isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 308
    invoke-virtual {p0}, dismissPopup()Z

    .line 309
    invoke-virtual {p0}, showPopup()Z

    .line 311
    :cond_11
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .registers 2
    .param p1, "resourceId"    # I

    .prologue
    .line 519
    iput p1, p0, mDefaultActionButtonContentDescription:I

    .line 520
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .registers 4
    .param p1, "resourceId"    # I

    .prologue
    .line 339
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    iget-object v1, p0, mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 325
    iget-object v0, p0, mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void
.end method

.method public setInitialActivityCount(I)V
    .registers 2
    .param p1, "itemCount"    # I

    .prologue
    .line 505
    iput p1, p0, mInitialActivityCount:I

    .line 506
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 493
    iput-object p1, p0, mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 494
    return-void
.end method

.method public setProvider(Landroid/view/ActionProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/view/ActionProvider;

    .prologue
    .line 348
    iput-object p1, p0, mProvider:Landroid/view/ActionProvider;

    .line 349
    return-void
.end method

.method public showPopup()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0}, isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, mIsAttachedToWindow:Z

    if-nez v1, :cond_c

    .line 362
    :cond_b
    :goto_b
    return v0

    .line 360
    :cond_c
    iput-boolean v0, p0, mIsSelectingDefaultActivity:Z

    .line 361
    iget v0, p0, mInitialActivityCount:I

    invoke-direct {p0, v0}, showPopupUnchecked(I)V

    .line 362
    const/4 v0, 0x1

    goto :goto_b
.end method
