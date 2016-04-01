.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/widget/ListPopupWindow$DropDownListView;,
        Landroid/widget/ListPopupWindow$ForwardingListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private mIsShowAtLocation:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLayoutDirection:I

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPrevBinder:Landroid/os/IBinder;

.field private mPrevGravity:I

.field private mPrevLocationX:I

.field private mPrevLocationY:I

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 198
    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v2, p0, mDropDownHeight:I

    .line 81
    iput v2, p0, mDropDownWidth:I

    .line 84
    const/16 v2, 0x3ea

    iput v2, p0, mDropDownWindowLayoutType:I

    .line 87
    iput v4, p0, mDropDownGravity:I

    .line 89
    iput-boolean v4, p0, mDropDownAlwaysVisible:Z

    .line 90
    iput-boolean v4, p0, mForceIgnoreOutsideTouch:Z

    .line 91
    const v2, 0x7fffffff

    iput v2, p0, mListItemExpandMaximum:I

    .line 94
    iput v4, p0, mPromptPosition:I

    .line 105
    new-instance v2, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v2, p0, mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    .line 106
    new-instance v2, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v2, p0, mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 107
    new-instance v2, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v2, p0, mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    .line 108
    new-instance v2, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v2, p0, mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    .line 113
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mTempRect:Landroid/graphics/Rect;

    .line 119
    iput-boolean v4, p0, mIsShowAtLocation:Z

    .line 120
    iput v4, p0, mPrevLocationX:I

    .line 121
    iput v4, p0, mPrevLocationY:I

    .line 122
    iput v4, p0, mPrevGravity:I

    .line 123
    iput-object v3, p0, mPrevBinder:Landroid/os/IBinder;

    .line 223
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 224
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 226
    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 228
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, mDropDownHorizontalOffset:I

    .line 230
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, mDropDownVerticalOffset:I

    .line 232
    iget v2, p0, mDropDownVerticalOffset:I

    if-eqz v2, :cond_6e

    .line 233
    iput-boolean v5, p0, mDropDownVerticalOffsetSet:Z

    .line 235
    :cond_6e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    .line 238
    iget-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 240
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 241
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    iput v2, p0, mLayoutDirection:I

    .line 242
    return-void
.end method

.method static synthetic access$1200(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/ListPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-boolean v0, p0, mIsShowAtLocation:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/ListPopupWindow;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 64
    invoke-direct {p0}, updateShowAtLocation()V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method private buildDropDown()I
    .registers 25

    .prologue
    .line 1183
    const/16 v18, 0x0

    .line 1185
    .local v18, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    if-nez v2, :cond_168

    .line 1186
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    .line 1194
    .local v9, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1204
    new-instance v4, Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v2, v0, mModal:Z

    if-nez v2, :cond_14f

    const/4 v2, 0x1

    :goto_20
    invoke-direct {v4, v9, v2}, Landroid/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_38

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1208
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    new-instance v4, Landroid/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_88

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1234
    :cond_88
    move-object/from16 v0, p0

    iget-object v10, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 1236
    .local v10, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, mPromptView:Landroid/view/View;

    .line 1237
    .local v14, "hintView":Landroid/view/View;
    if-eqz v14, :cond_f6

    .line 1240
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1241
    .local v12, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1243
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1247
    .local v13, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, mPromptPosition:I

    packed-switch v2, :pswitch_data_212

    .line 1259
    const-string v2, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, mPromptPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :goto_c7
    move-object/from16 v0, p0

    iget v2, v0, mDropDownWidth:I

    if-ltz v2, :cond_162

    .line 1268
    const/high16 v21, -0x80000000

    .line 1269
    .local v21, "widthMode":I
    move-object/from16 v0, p0

    iget v0, v0, mDropDownWidth:I

    move/from16 v22, v0

    .line 1274
    .local v22, "widthSize":I
    :goto_d5
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1275
    .local v23, "widthSpec":I
    const/4 v11, 0x0

    .line 1276
    .local v11, "heightSpec":I
    const/4 v2, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    .line 1278
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1279
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v18, v2, v4

    .line 1282
    move-object v10, v12

    .line 1285
    .end local v11    # "heightSpec":I
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    .end local v23    # "widthSpec":I
    :cond_f6
    move-object/from16 v0, p0

    iget-object v2, v0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1299
    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "hintView":Landroid/view/View;
    :cond_fd
    :goto_fd
    const/16 v19, 0x0

    .line 1300
    .local v19, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1301
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_18d

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v19, v2, v4

    .line 1307
    move-object/from16 v0, p0

    iget-boolean v2, v0, mDropDownVerticalOffsetSet:Z

    if-nez v2, :cond_12f

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mDropDownVerticalOffset:I

    .line 1315
    :cond_12f
    :goto_12f
    move-object/from16 v0, p0

    iget-object v2, v0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_195

    const/4 v15, 0x1

    .line 1317
    .local v15, "ignoreBottomDecorations":Z
    :goto_13b
    move-object/from16 v0, p0

    iget-object v2, v0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, getAnchorView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, mDropDownVerticalOffset:I

    invoke-virtual {v2, v4, v5, v15}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v17

    .line 1319
    .local v17, "maxHeight":I
    if-gez v17, :cond_197

    .line 1320
    const/4 v2, 0x0

    .line 1351
    :goto_14e
    return v2

    .line 1204
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v15    # "ignoreBottomDecorations":Z
    .end local v17    # "maxHeight":I
    .end local v19    # "padding":I
    .restart local v9    # "context":Landroid/content/Context;
    :cond_14f
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 1249
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "hintView":Landroid/view/View;
    :pswitch_152
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1250
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_c7

    .line 1254
    :pswitch_15a
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1255
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c7

    .line 1271
    :cond_162
    const/16 v21, 0x0

    .line 1272
    .restart local v21    # "widthMode":I
    const/16 v22, 0x0

    .restart local v22    # "widthSize":I
    goto/16 :goto_d5

    .line 1287
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "dropDownView":Landroid/view/ViewGroup;
    .end local v12    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "hintView":Landroid/view/View;
    .end local v21    # "widthMode":I
    .end local v22    # "widthSize":I
    :cond_168
    move-object/from16 v0, p0

    iget-object v2, v0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1288
    .restart local v10    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, mPromptView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1289
    .local v20, "view":Landroid/view/View;
    if-eqz v20, :cond_fd

    .line 1290
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1292
    .restart local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v18, v2, v4

    goto/16 :goto_fd

    .line 1311
    .end local v13    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "view":Landroid/view/View;
    .restart local v8    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "padding":I
    :cond_18d
    move-object/from16 v0, p0

    iget-object v2, v0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_12f

    .line 1315
    :cond_195
    const/4 v15, 0x0

    goto :goto_13b

    .line 1323
    .restart local v15    # "ignoreBottomDecorations":Z
    .restart local v17    # "maxHeight":I
    :cond_197
    move-object/from16 v0, p0

    iget-boolean v2, v0, mDropDownAlwaysVisible:Z

    if-nez v2, :cond_1a4

    move-object/from16 v0, p0

    iget v2, v0, mDropDownHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1a7

    .line 1324
    :cond_1a4
    add-int v2, v17, v19

    goto :goto_14e

    .line 1328
    :cond_1a7
    move-object/from16 v0, p0

    iget v2, v0, mDropDownWidth:I

    packed-switch v2, :pswitch_data_21a

    .line 1342
    move-object/from16 v0, p0

    iget v2, v0, mDropDownWidth:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1345
    .local v3, "childWidthSpec":I
    :goto_1b8
    move-object/from16 v0, p0

    iget-object v2, v0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    const/4 v4, 0x0

    const/4 v5, -0x1

    sub-int v6, v17, v18

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v16

    .line 1349
    .local v16, "listContent":I
    if-lez v16, :cond_1c9

    add-int v18, v18, v19

    .line 1351
    :cond_1c9
    add-int v2, v16, v18

    goto :goto_14e

    .line 1330
    .end local v3    # "childWidthSpec":I
    .end local v16    # "listContent":I
    :pswitch_1cc
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1334
    .restart local v3    # "childWidthSpec":I
    goto :goto_1b8

    .line 1336
    .end local v3    # "childWidthSpec":I
    :pswitch_1ef
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1340
    .restart local v3    # "childWidthSpec":I
    goto :goto_1b8

    .line 1247
    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_15a
        :pswitch_152
    .end packed-switch

    .line 1328
    :pswitch_data_21a
    .packed-switch -0x2
        :pswitch_1cc
        :pswitch_1ef
    .end packed-switch
.end method

.method private getScreenHeight()I
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 612
    const/4 v0, 0x0

    .line 613
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_5
.end method

.method private removePromptView()V
    .registers 4

    .prologue
    .line 825
    iget-object v2, p0, mPromptView:Landroid/view/View;

    if-eqz v2, :cond_16

    .line 826
    iget-object v2, p0, mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 827
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_16

    move-object v0, v1

    .line 828
    check-cast v0, Landroid/view/ViewGroup;

    .line 829
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 832
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_16
    return-void
.end method

.method private updateShowAtLocation()V
    .registers 5

    .prologue
    .line 603
    iget-object v0, p0, mPrevBinder:Landroid/os/IBinder;

    iget v1, p0, mPrevLocationX:I

    iget v2, p0, mPrevLocationY:I

    iget v3, p0, mPrevGravity:I

    invoke-virtual {p0, v0, v1, v2, v3}, showAtLocation(Landroid/os/IBinder;III)V

    .line 604
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .registers 3

    .prologue
    .line 881
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 882
    .local v0, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_e

    .line 884
    const/4 v1, 0x1

    # setter for: Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->access$602(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 885
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->hideSelector()V

    .line 886
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 888
    :cond_e
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .registers 3
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1167
    new-instance v0, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method public dismiss()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 808
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 809
    invoke-direct {p0}, removePromptView()V

    .line 810
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 811
    iput-object v1, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 812
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 813
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .prologue
    .line 449
    iget v0, p0, mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 979
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 929
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 930
    const/4 v0, 0x0

    .line 932
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getSelectedItemId()J
    .registers 3

    .prologue
    .line 955
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 956
    const-wide/high16 v0, -0x8000000000000000L

    .line 958
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_8
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .prologue
    .line 942
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 943
    const/4 v0, -0x1

    .line 945
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_7
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 968
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-nez v0, :cond_8

    .line 969
    const/4 v0, 0x0

    .line 971
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_7
.end method

.method public getSoftInputMode()I
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_6

    .line 466
    const/4 v0, 0x0

    .line 468
    :goto_5
    return v0

    :cond_6
    iget v0, p0, mDropDownVerticalOffset:I

    goto :goto_5
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 495
    iget v0, p0, mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .registers 3

    .prologue
    .line 902
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isModal()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, mModal:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 894
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 16
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1004
    invoke-virtual {p0}, isShowing()Z

    move-result v9

    if-eqz v9, :cond_91

    .line 1010
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_91

    iget-object v9, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_1e

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v9

    if-nez v9, :cond_91

    .line 1013
    :cond_1e
    iget-object v9, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 1016
    .local v4, "curIndex":I
    iget-object v9, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_5d

    move v2, v7

    .line 1018
    .local v2, "below":Z
    :goto_2d
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 1021
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 1022
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 1024
    .local v6, "lastItem":I
    if-eqz v0, :cond_45

    .line 1025
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 1026
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5f

    move v5, v8

    .line 1028
    :goto_3d
    if-eqz v1, :cond_66

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 1032
    .end local v1    # "allEnabled":Z
    :cond_45
    :goto_45
    if-eqz v2, :cond_4b

    if-ne p1, v11, :cond_4b

    if-le v4, v5, :cond_51

    :cond_4b
    if-nez v2, :cond_73

    if-ne p1, v12, :cond_73

    if-lt v4, v6, :cond_73

    .line 1036
    :cond_51
    invoke-virtual {p0}, clearListSelection()V

    .line 1037
    iget-object v8, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1038
    invoke-virtual {p0}, show()V

    .line 1084
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :goto_5c
    :sswitch_5c
    return v7

    .restart local v4    # "curIndex":I
    :cond_5d
    move v2, v8

    .line 1016
    goto :goto_2d

    .line 1026
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v2    # "below":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5f
    iget-object v9, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_3d

    .line 1028
    :cond_66
    iget-object v9, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_45

    .line 1043
    .end local v1    # "allEnabled":Z
    :cond_73
    iget-object v9, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    # setter for: Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->access$602(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 1046
    iget-object v9, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1049
    .local v3, "consumed":Z
    if-eqz v3, :cond_93

    .line 1052
    iget-object v9, p0, mPopup:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1057
    iget-object v9, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Landroid/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 1058
    invoke-virtual {p0}, show()V

    .line 1060
    sparse-switch p1, :sswitch_data_a2

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v3    # "consumed":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_91
    move v7, v8

    .line 1084
    goto :goto_5c

    .line 1070
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "below":Z
    .restart local v3    # "consumed":Z
    .restart local v4    # "curIndex":I
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_93
    if-eqz v2, :cond_9a

    if-ne p1, v12, :cond_9a

    .line 1073
    if-ne v4, v6, :cond_91

    goto :goto_5c

    .line 1076
    :cond_9a
    if-nez v2, :cond_91

    if-ne p1, v11, :cond_91

    if-ne v4, v5, :cond_91

    goto :goto_5c

    .line 1060
    nop

    :sswitch_data_a2
    .sparse-switch
        0x13 -> :sswitch_5c
        0x14 -> :sswitch_5c
        0x17 -> :sswitch_5c
        0x42 -> :sswitch_5c
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1122
    const/4 v3, 0x4

    if-ne p1, v3, :cond_41

    invoke-virtual {p0}, isShowing()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1125
    iget-object v0, p0, mDropDownAnchorView:Landroid/view/View;

    .line 1126
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_22

    .line 1127
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1128
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_21

    .line 1129
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1143
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_21
    :goto_21
    return v2

    .line 1132
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_41

    .line 1133
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1134
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_31

    .line 1135
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1137
    :cond_31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_41

    .line 1138
    invoke-virtual {p0}, dismiss()V

    goto :goto_21

    .line 1143
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_41
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1098
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_20

    .line 1099
    iget-object v1, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1100
    .local v0, "consumed":Z
    if-eqz v0, :cond_1f

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1103
    invoke-virtual {p0}, dismiss()V

    .line 1107
    .end local v0    # "consumed":Z
    :cond_1f
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public performItemClick(I)Z
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 913
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 914
    iget-object v0, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_24

    .line 915
    iget-object v1, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 916
    .local v1, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 917
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 918
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 920
    .end local v1    # "list":Landroid/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_24
    const/4 v0, 0x1

    .line 922
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public postShow()V
    .registers 3

    .prologue
    .line 598
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 251
    iget-object v0, p0, mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_23

    .line 252
    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$1;)V

    iput-object v0, p0, mObserver:Landroid/database/DataSetObserver;

    .line 256
    :cond_c
    :goto_c
    iput-object p1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 257
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_17

    .line 258
    iget-object v0, p0, mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 261
    :cond_17
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_22

    .line 262
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    :cond_22
    return-void

    .line 253
    :cond_23
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 254
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_c
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 442
    iput-object p1, p0, mDropDownAnchorView:Landroid/view/View;

    .line 443
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 3
    .param p1, "animationStyle"    # I

    .prologue
    .line 413
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 414
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 404
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    return-void
.end method

.method public setContentWidth(I)V
    .registers 7
    .param p1, "width"    # I

    .prologue
    .line 515
    iget-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 516
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2a

    .line 517
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 518
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 519
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, mDropDownWidth:I

    .line 524
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_29
    return-void

    .line 522
    :cond_2a
    invoke-virtual {p0, p1}, setWidth(I)V

    goto :goto_29
.end method

.method public setDropDownAlwaysVisible(Z)V
    .registers 2
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, mDropDownAlwaysVisible:Z

    .line 336
    return-void
.end method

.method public setDropDownGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .prologue
    .line 488
    iput p1, p0, mDropDownGravity:I

    .line 489
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .registers 2
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, mForceIgnoreOutsideTouch:Z

    .line 321
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 539
    iput p1, p0, mDropDownHeight:I

    .line 540
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .prologue
    .line 458
    iput p1, p0, mDropDownHorizontalOffset:I

    .line 459
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 847
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 848
    return-void
.end method

.method public setIsAutoCompleteTextPopup(Z)V
    .registers 3
    .param p1, "isAutoCompleteTextPopup"    # Z

    .prologue
    .line 353
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_9

    .line 354
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    # setter for: Landroid/widget/ListPopupWindow$DropDownListView;->mIsAutoCompleteTextPopup:Z
    invoke-static {v0, p1}, Landroid/widget/ListPopupWindow$DropDownListView;->access$502(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 356
    :cond_9
    return-void
.end method

.method setListItemExpandMax(I)V
    .registers 2
    .param p1, "max"    # I

    .prologue
    .line 989
    iput p1, p0, mListItemExpandMaximum:I

    .line 990
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 388
    iput-object p1, p0, mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 389
    return-void
.end method

.method public setModal(Z)V
    .registers 3
    .param p1, "modal"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, mModal:Z

    .line 300
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 301
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 821
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 822
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 563
    iput-object p1, p0, mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 564
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "selectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 574
    iput-object p1, p0, mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 575
    return-void
.end method

.method public setPromptPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 276
    iput p1, p0, mPromptPosition:I

    .line 277
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .registers 3
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 584
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    .line 585
    .local v0, "showing":Z
    if-eqz v0, :cond_9

    .line 586
    invoke-direct {p0}, removePromptView()V

    .line 588
    :cond_9
    iput-object p1, p0, mPromptView:Landroid/view/View;

    .line 589
    if-eqz v0, :cond_10

    .line 590
    invoke-virtual {p0}, show()V

    .line 592
    :cond_10
    return-void
.end method

.method public setSelection(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 866
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    .line 867
    .local v0, "list":Landroid/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 868
    const/4 v1, 0x0

    # setter for: Landroid/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->access$602(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 869
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 870
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 871
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 874
    :cond_1b
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 369
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 370
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 477
    iput p1, p0, mDropDownVerticalOffset:I

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, mDropDownVerticalOffsetSet:Z

    .line 479
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 505
    iput p1, p0, mDropDownWidth:I

    .line 506
    return-void
.end method

.method public setWindowLayoutType(I)V
    .registers 2
    .param p1, "layoutType"    # I

    .prologue
    .line 552
    iput p1, p0, mDropDownWindowLayoutType:I

    .line 553
    return-void
.end method

.method public show()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 717
    invoke-direct {p0}, buildDropDown()I

    move-result v6

    .line 719
    .local v6, "height":I
    invoke-virtual {p0}, isInputMethodNotNeeded()Z

    move-result v8

    .line 720
    .local v8, "noInputMethod":Z
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_60

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 721
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, mDropDownWindowLayoutType:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 723
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 725
    iget v0, p0, mDropDownWidth:I

    if-ne v0, v5, :cond_62

    .line 728
    const/4 v9, -0x1

    .line 736
    .local v9, "widthSpec":I
    :goto_28
    iget v0, p0, mDropDownHeight:I

    if-ne v0, v5, :cond_88

    .line 739
    if-eqz v8, :cond_72

    move v7, v6

    .line 740
    .local v7, "heightSpec":I
    :goto_2f
    if-eqz v8, :cond_76

    .line 741
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, mDropDownWidth:I

    if-ne v0, v5, :cond_74

    move v0, v5

    :goto_38
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 743
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 755
    :goto_40
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_95

    iget-boolean v3, p0, mDropDownAlwaysVisible:Z

    if-nez v3, :cond_95

    :goto_4a
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 757
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, mDropDownHorizontalOffset:I

    iget v3, p0, mDropDownVerticalOffset:I

    if-gez v9, :cond_97

    move v4, v5

    :goto_5a
    if-gez v7, :cond_99

    :goto_5c
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 802
    :cond_5f
    :goto_5f
    return-void

    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_60
    move v0, v2

    .line 720
    goto :goto_11

    .line 729
    :cond_62
    iget v0, p0, mDropDownWidth:I

    if-ne v0, v4, :cond_6f

    .line 730
    invoke-virtual {p0}, getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .restart local v9    # "widthSpec":I
    goto :goto_28

    .line 732
    .end local v9    # "widthSpec":I
    :cond_6f
    iget v9, p0, mDropDownWidth:I

    .restart local v9    # "widthSpec":I
    goto :goto_28

    :cond_72
    move v7, v5

    .line 739
    goto :goto_2f

    .restart local v7    # "heightSpec":I
    :cond_74
    move v0, v2

    .line 741
    goto :goto_38

    .line 745
    :cond_76
    iget-object v3, p0, mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, mDropDownWidth:I

    if-ne v0, v5, :cond_86

    move v0, v5

    :goto_7d
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 747
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_40

    :cond_86
    move v0, v2

    .line 745
    goto :goto_7d

    .line 749
    .end local v7    # "heightSpec":I
    :cond_88
    iget v0, p0, mDropDownHeight:I

    if-eq v0, v4, :cond_90

    iget v0, p0, mDropDownHeight:I

    if-ge v6, v0, :cond_92

    .line 750
    :cond_90
    move v7, v6

    .restart local v7    # "heightSpec":I
    goto :goto_40

    .line 752
    .end local v7    # "heightSpec":I
    :cond_92
    iget v7, p0, mDropDownHeight:I

    .restart local v7    # "heightSpec":I
    goto :goto_40

    :cond_95
    move v1, v2

    .line 755
    goto :goto_4a

    :cond_97
    move v4, v9

    .line 757
    goto :goto_5a

    :cond_99
    move v5, v7

    goto :goto_5c

    .line 762
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_9b
    iget v0, p0, mDropDownWidth:I

    if-ne v0, v5, :cond_f8

    .line 763
    const/4 v9, -0x1

    .line 773
    .restart local v9    # "widthSpec":I
    :goto_a0
    iget v0, p0, mDropDownHeight:I

    if-ne v0, v5, :cond_108

    .line 774
    const/4 v7, -0x1

    .line 783
    .restart local v7    # "heightSpec":I
    :goto_a5
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 784
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 785
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    .line 789
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_115

    iget-boolean v3, p0, mDropDownAlwaysVisible:Z

    if-nez v3, :cond_115

    :goto_be
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 790
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 791
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, mDropDownHorizontalOffset:I

    iget v3, p0, mDropDownVerticalOffset:I

    iget v4, p0, mDropDownGravity:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 793
    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 795
    iget-boolean v0, p0, mModal:Z

    if-eqz v0, :cond_e8

    iget-object v0, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 796
    :cond_e8
    invoke-virtual {p0}, clearListSelection()V

    .line 798
    :cond_eb
    iget-boolean v0, p0, mModal:Z

    if-nez v0, :cond_5f

    .line 799
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5f

    .line 765
    .end local v7    # "heightSpec":I
    .end local v9    # "widthSpec":I
    :cond_f8
    iget v0, p0, mDropDownWidth:I

    if-ne v0, v4, :cond_105

    .line 766
    invoke-virtual {p0}, getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .restart local v9    # "widthSpec":I
    goto :goto_a0

    .line 768
    .end local v9    # "widthSpec":I
    :cond_105
    iget v9, p0, mDropDownWidth:I

    .restart local v9    # "widthSpec":I
    goto :goto_a0

    .line 776
    :cond_108
    iget v0, p0, mDropDownHeight:I

    if-eq v0, v4, :cond_110

    iget v0, p0, mDropDownHeight:I

    if-ge v6, v0, :cond_112

    .line 777
    :cond_110
    move v7, v6

    .restart local v7    # "heightSpec":I
    goto :goto_a5

    .line 779
    .end local v7    # "heightSpec":I
    :cond_112
    iget v7, p0, mDropDownHeight:I

    .restart local v7    # "heightSpec":I
    goto :goto_a5

    :cond_115
    move v1, v2

    .line 789
    goto :goto_be
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v10, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 622
    invoke-direct {p0}, buildDropDown()I

    move-result v0

    .line 624
    .local v0, "height":I
    if-nez p1, :cond_11

    .line 625
    const-string v5, "ListPopupWindow"

    const-string v9, "SubMenuPopup\'s token is null"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_11
    const/4 v3, 0x0

    .line 627
    .local v3, "widthSpec":I
    const/4 v1, 0x0

    .line 628
    .local v1, "heightSpec":I
    iput-boolean v6, p0, mIsShowAtLocation:Z

    .line 629
    invoke-virtual {p0}, isInputMethodNotNeeded()Z

    move-result v2

    .line 630
    .local v2, "noInputMethod":Z
    iget-object v9, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v2, :cond_54

    move v5, v6

    :goto_1e
    invoke-virtual {v9, v5}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 632
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 633
    iget v5, p0, mDropDownWidth:I

    if-ne v5, v8, :cond_56

    .line 636
    const/4 v3, -0x1

    .line 643
    :goto_2e
    iget v5, p0, mDropDownHeight:I

    if-ne v5, v8, :cond_77

    .line 646
    if-eqz v2, :cond_66

    move v1, v0

    .line 647
    :goto_35
    if-eqz v2, :cond_6a

    .line 648
    iget-object v9, p0, mPopup:Landroid/widget/PopupWindow;

    iget v5, p0, mDropDownWidth:I

    if-ne v5, v8, :cond_68

    move v5, v8

    :goto_3e
    invoke-virtual {v9, v5, v7}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 663
    :goto_41
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_84

    iget-boolean v8, p0, mDropDownAlwaysVisible:Z

    if-nez v8, :cond_84

    :goto_4b
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 665
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, p1, p4, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 710
    :cond_53
    :goto_53
    return-void

    :cond_54
    move v5, v7

    .line 630
    goto :goto_1e

    .line 637
    :cond_56
    iget v5, p0, mDropDownWidth:I

    if-ne v5, v10, :cond_63

    .line 638
    invoke-virtual {p0}, getAnchorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2e

    .line 640
    :cond_63
    iget v3, p0, mDropDownWidth:I

    goto :goto_2e

    :cond_66
    move v1, v8

    .line 646
    goto :goto_35

    :cond_68
    move v5, v7

    .line 648
    goto :goto_3e

    .line 652
    :cond_6a
    iget-object v9, p0, mPopup:Landroid/widget/PopupWindow;

    iget v5, p0, mDropDownWidth:I

    if-ne v5, v8, :cond_75

    move v5, v8

    :goto_71
    invoke-virtual {v9, v5, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_41

    :cond_75
    move v5, v7

    goto :goto_71

    .line 657
    :cond_77
    iget v5, p0, mDropDownHeight:I

    if-eq v5, v10, :cond_7f

    iget v5, p0, mDropDownHeight:I

    if-ge v0, v5, :cond_81

    .line 658
    :cond_7f
    move v1, v0

    goto :goto_41

    .line 660
    :cond_81
    iget v1, p0, mDropDownHeight:I

    goto :goto_41

    :cond_84
    move v6, v7

    .line 663
    goto :goto_4b

    .line 667
    :cond_86
    iget v5, p0, mDropDownWidth:I

    if-ne v5, v8, :cond_f5

    .line 668
    const/4 v3, -0x1

    .line 677
    :goto_8b
    iget v5, p0, mDropDownHeight:I

    if-ne v5, v8, :cond_110

    .line 678
    const/4 v1, -0x1

    .line 687
    :goto_90
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    add-int v4, p3, v5

    .line 688
    .local v4, "yLocation":I
    invoke-direct {p0}, getScreenHeight()I

    move-result v5

    if-le v4, v5, :cond_aa

    .line 689
    invoke-direct {p0}, getScreenHeight()I

    move-result v5

    iget-object v9, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    sub-int p3, v5, v9

    .line 692
    :cond_aa
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 693
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    .line 697
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    iget-boolean v9, p0, mForceIgnoreOutsideTouch:Z

    if-nez v9, :cond_128

    iget-boolean v9, p0, mDropDownAlwaysVisible:Z

    if-nez v9, :cond_128

    :goto_be
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 698
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 699
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 700
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, p1, p4, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 701
    iget-object v5, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 703
    iget-boolean v5, p0, mModal:Z

    if-eqz v5, :cond_e5

    iget-object v5, p0, mDropDownList:Landroid/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 704
    :cond_e5
    invoke-virtual {p0}, clearListSelection()V

    .line 706
    :cond_e8
    iget-boolean v5, p0, mModal:Z

    if-nez v5, :cond_53

    .line 707
    iget-object v5, p0, mHandler:Landroid/os/Handler;

    iget-object v6, p0, mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_53

    .line 670
    .end local v4    # "yLocation":I
    :cond_f5
    iget v5, p0, mDropDownWidth:I

    if-ne v5, v10, :cond_107

    .line 671
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, getAnchorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_8b

    .line 673
    :cond_107
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    iget v9, p0, mDropDownWidth:I

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/16 :goto_8b

    .line 680
    :cond_110
    iget v5, p0, mDropDownHeight:I

    if-eq v5, v10, :cond_118

    iget v5, p0, mDropDownHeight:I

    if-ge v0, v5, :cond_11f

    .line 681
    :cond_118
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_90

    .line 683
    :cond_11f
    iget-object v5, p0, mPopup:Landroid/widget/PopupWindow;

    iget v9, p0, mDropDownHeight:I

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_90

    .restart local v4    # "yLocation":I
    :cond_128
    move v6, v7

    .line 697
    goto :goto_be
.end method
