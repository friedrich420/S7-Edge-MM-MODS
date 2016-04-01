.class public Landroid/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SearchView$SearchAutoComplete;,
        Landroid/widget/SearchView$OnSuggestionListener;,
        Landroid/widget/SearchView$OnCloseListener;,
        Landroid/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"

.field private static final TW_SEARCH_ICON_RES_ID:I = 0x1080975


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mIsDeviceDefaultLight:Z

.field private mIsPenSupport:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field public final mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private final mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 270
    const v0, 0x1010480

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 278
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 160
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDeviceDefaultLight:Z

    .line 161
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsPenSupport:Z

    .line 168
    new-instance v13, Landroid/widget/SearchView$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$1;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mShowImeRunnable:Ljava/lang/Runnable;

    .line 179
    new-instance v13, Landroid/widget/SearchView$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$2;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v13, Landroid/widget/SearchView$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$3;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v13, Ljava/util/WeakHashMap;

    invoke-direct {v13}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 974
    new-instance v13, Landroid/widget/SearchView$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$6;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1023
    new-instance v13, Landroid/widget/SearchView$7;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$7;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1269
    new-instance v13, Landroid/widget/SearchView$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$8;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1518
    new-instance v13, Landroid/widget/SearchView$9;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$9;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1529
    new-instance v13, Landroid/widget/SearchView$10;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$10;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1818
    new-instance v13, Landroid/widget/SearchView$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SearchView$11;-><init>(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mTextWatcher:Landroid/text/TextWatcher;

    .line 280
    sget-object v13, Lcom/android/internal/R$styleable;->SearchView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 282
    .local v4, "a":Landroid/content/res/TypedArray;
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 284
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    const v14, 0x10900f1

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 286
    .local v10, "layoutResId":I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v10, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 289
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 290
    .local v12, "outValue":Landroid/util/TypedValue;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 291
    .local v5, "colorValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x11600bd

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v12, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x11600bf

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v5, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 293
    iget v13, v12, Landroid/util/TypedValue;->data:I

    if-eqz v13, :cond_cc

    iget v13, v5, Landroid/util/TypedValue;->data:I

    if-nez v13, :cond_cc

    .line 294
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsDeviceDefaultLight:Z

    .line 295
    :cond_cc
    const-string/jumbo v13, "ro.build.scafe.syrup"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "sugar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsPenSupport:Z

    .line 298
    const v13, 0x102047f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iput-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/widget/SearchView;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iput-object v13, v0, mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    .line 302
    const v13, 0x102047c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mSearchEditFrame:Landroid/view/View;

    .line 303
    const v13, 0x102047e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mSearchPlate:Landroid/view/View;

    .line 304
    const v13, 0x1020481

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mSubmitArea:Landroid/view/View;

    .line 305
    const v13, 0x102047b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, mSearchButton:Landroid/widget/ImageView;

    .line 306
    const v13, 0x1020482

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, mGoButton:Landroid/widget/ImageView;

    .line 307
    const v13, 0x1020480

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, mCloseButton:Landroid/widget/ImageView;

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, mCloseButton:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 309
    const v13, 0x1020483

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, mVoiceButton:Landroid/widget/ImageView;

    .line 310
    const v13, 0x102047d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, mCollapsedIcon:Landroid/widget/ImageView;

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchPlate:Landroid/view/View;

    const/16 v14, 0xd

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, mSubmitArea:Landroid/view/View;

    const/16 v14, 0xe

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    const/16 v13, 0x9

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mSearchIconResId:I

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v14, v0, mSearchIconResId:I

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, mGoButton:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, mCloseButton:Landroid/widget/ImageView;

    const/4 v14, 0x7

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, mVoiceButton:Landroid/widget/ImageView;

    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, mCollapsedIcon:Landroid/widget/ImageView;

    const/16 v14, 0x9

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    const/16 v13, 0xf

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v13

    if-eqz v13, :cond_3b8

    .line 325
    const/16 v13, 0xf

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 331
    :goto_1ed
    const/16 v13, 0xc

    const v14, 0x10900f0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mSuggestionRowLayout:I

    .line 333
    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, mSuggestionCommitIconResId:I

    .line 335
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, mGoButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, mVoiceButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iget-object v14, v0, mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iget-object v14, v0, mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    move-object/from16 v0, p0

    iget-object v14, v0, mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 346
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsPenSupport:Z

    if-eqz v13, :cond_295

    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsDeviceDefaultLight:Z

    if-eqz v13, :cond_295

    move-object/from16 v0, p0

    iget-object v13, v0, mSearchPlate:Landroid/view/View;

    if-eqz v13, :cond_295

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, mSearchPlate:Landroid/view/View;

    invoke-virtual {v13, v14}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setAnchorView(Landroid/view/View;)V

    .line 350
    :cond_295
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchButton:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, mCloseButton:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, mGoButton:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, mVoiceButton:Landroid/widget/ImageView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v14, Landroid/widget/SearchView$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SearchView$4;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v13, v14}, Landroid/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 364
    const/4 v13, 0x5

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, setIconifiedByDefault(Z)V

    .line 366
    const/4 v13, 0x2

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 367
    .local v11, "maxWidth":I
    const/4 v13, -0x1

    if-eq v11, v13, :cond_2dc

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, setMaxWidth(I)V

    .line 371
    :cond_2dc
    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 372
    const/4 v13, 0x6

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mQueryHint:Ljava/lang/CharSequence;

    .line 374
    const/4 v13, 0x4

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 375
    .local v7, "imeOptions":I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_2fd

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, setImeOptions(I)V

    .line 379
    :cond_2fd
    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 380
    .local v9, "inputType":I
    const/4 v13, -0x1

    if-eq v9, v13, :cond_30b

    .line 381
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, setInputType(I)V

    .line 384
    :cond_30b
    const/4 v6, 0x1

    .line 385
    .local v6, "focusable":Z
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, setFocusable(Z)V

    .line 388
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 390
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsDeviceDefaultLight:Z

    if-eqz v13, :cond_351

    move-object/from16 v0, p0

    iget v13, v0, mSearchIconResId:I

    if-nez v13, :cond_351

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080975

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchButton:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080975

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :cond_351
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.speech.action.WEB_SEARCH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v14, 0x10000000

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v14, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v15, "web_search"

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v14, 0x10000000

    invoke-virtual {v13, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v13}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mDropDownAnchor:Landroid/view/View;

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, mDropDownAnchor:Landroid/view/View;

    if-eqz v13, :cond_3ab

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, mDropDownAnchor:Landroid/view/View;

    new-instance v14, Landroid/widget/SearchView$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SearchView$5;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 415
    :cond_3ab
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIconifiedByDefault:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, updateViewsVisibility(Z)V

    .line 416
    invoke-direct/range {p0 .. p0}, updateQueryHint()V

    .line 417
    return-void

    .line 327
    .end local v6    # "focusable":Z
    .end local v7    # "imeOptions":I
    .end local v9    # "inputType":I
    .end local v11    # "maxWidth":I
    :cond_3b8
    const/16 v13, 0x9

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1ed
.end method

.method static synthetic access$000(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    invoke-direct {p0}, updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mVoiceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    invoke-direct {p0}, onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    invoke-direct {p0}, forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/SearchView;IILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/SearchView;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1}, onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    invoke-direct {p0, p1}, onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    invoke-direct {p0}, adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mSearchButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    invoke-direct {p0}, onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    invoke-direct {p0}, onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    iget-object v0, p0, mGoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/SearchView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SearchView;

    .prologue
    .line 96
    invoke-direct {p0}, onSubmitQuery()V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .registers 10

    .prologue
    .line 1467
    iget-object v7, p0, mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_6e

    .line 1468
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1469
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1470
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1471
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v3

    .line 1472
    .local v3, "isLayoutRtl":Z
    iget-boolean v7, p0, mIconifiedByDefault:Z

    if-eqz v7, :cond_6f

    const v7, 0x1050051

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x105004f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v2, v7, v8

    .line 1477
    .local v2, "iconOffset":I
    :goto_34
    iget-boolean v7, p0, mIsDeviceDefaultLight:Z

    if-eqz v7, :cond_3a

    .line 1478
    const/4 v2, 0x0

    .line 1479
    const/4 v0, 0x0

    .line 1482
    :cond_3a
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1484
    if-eqz v3, :cond_71

    .line 1485
    iget v7, v1, Landroid/graphics/Rect;->left:I

    neg-int v4, v7

    .line 1489
    .local v4, "offset":I
    :goto_48
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1490
    iget-object v7, p0, mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    .line 1492
    .local v6, "width":I
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1493
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 1494
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->showDropDown()V

    .line 1496
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "offset":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "width":I
    :cond_6e
    return-void

    .line 1472
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "isLayoutRtl":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_6f
    const/4 v2, 0x0

    goto :goto_34

    .line 1487
    .restart local v2    # "iconOffset":I
    :cond_71
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    sub-int v4, v0, v7

    .restart local v4    # "offset":I
    goto :goto_48
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1647
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1652
    if-eqz p2, :cond_f

    .line 1653
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1655
    :cond_f
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1656
    if-eqz p4, :cond_1f

    .line 1657
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    :cond_1f
    if-eqz p3, :cond_26

    .line 1660
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    :cond_26
    iget-object v1, p0, mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_31

    .line 1663
    const-string v1, "app_data"

    iget-object v2, p0, mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1665
    :cond_31
    if-eqz p5, :cond_3d

    .line 1666
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1667
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    :cond_3d
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1670
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 16
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1765
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1767
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 1768
    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1770
    :cond_f
    if-nez v1, :cond_13

    .line 1771
    const-string v1, "android.intent.action.SEARCH"

    .line 1775
    :cond_13
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1776
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_22

    .line 1777
    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1780
    :cond_22
    if-eqz v7, :cond_48

    .line 1781
    const-string/jumbo v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1782
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_48

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1786
    .end local v10    # "id":Ljava/lang/String;
    :cond_48
    if-nez v7, :cond_61

    const/4 v2, 0x0

    .line 1788
    .local v2, "dataUri":Landroid/net/Uri;
    :goto_4b
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1789
    .local v4, "query":Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1791
    invoke-direct/range {v0 .. v6}, createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1801
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :goto_60
    return-object v0

    .line 1786
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_61
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_64} :catch_66

    move-result-object v2

    goto :goto_4b

    .line 1792
    .end local v1    # "action":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :catch_66
    move-exception v8

    .line 1795
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_67
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6a} :catch_8b

    move-result v11

    .line 1799
    .local v11, "rowNum":I
    :goto_6b
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    const/4 v0, 0x0

    goto :goto_60

    .line 1796
    .end local v11    # "rowNum":I
    :catch_8b
    move-exception v9

    .line 1797
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_6b
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 16
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1692
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1697
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1698
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1699
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1706
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1707
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_29

    .line 1708
    const-string v10, "app_data"

    iget-object v11, p0, mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1714
    :cond_29
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1717
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1718
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1719
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1720
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1722
    .local v2, "maxResults":I
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1723
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_45

    .line 1724
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1726
    :cond_45
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_53

    .line 1727
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1729
    :cond_53
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_61

    .line 1730
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1732
    :cond_61
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_6b

    .line 1733
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1735
    :cond_6b
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1736
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1737
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1739
    const-string v11, "calling_package"

    if-nez v8, :cond_92

    const/4 v10, 0x0

    :goto_84
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1744
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1746
    return-object v9

    .line 1739
    :cond_92
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_84
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 7
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1677
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1678
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1679
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_12

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1681
    return-object v1

    .line 1679
    :cond_12
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method private dismissSuggestions()V
    .registers 2

    .prologue
    .line 1318
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1319
    return-void
.end method

.method private forceSuggestionQuery()V
    .registers 2

    .prologue
    .line 1806
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doBeforeTextChanged()V

    .line 1807
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doAfterTextChanged()V

    .line 1808
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 1159
    const/4 v1, 0x0

    .line 1161
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 1163
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    :cond_b
    if-nez v1, :cond_11

    .line 1169
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1171
    :cond_11
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v12, 0x21

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1175
    iget v3, p0, mSearchIconResId:I

    .line 1176
    .local v3, "searchIconResId":I
    iget-boolean v6, p0, mIsDeviceDefaultLight:Z

    if-eqz v6, :cond_13

    .line 1179
    iget-boolean v6, p0, mIconifiedByDefault:Z

    if-eqz v6, :cond_1b

    iget v6, p0, mSearchIconResId:I

    if-nez v6, :cond_1b

    .line 1205
    .end local p1    # "hintText":Ljava/lang/CharSequence;
    :cond_12
    :goto_12
    return-object p1

    .line 1184
    .restart local p1    # "hintText":Ljava/lang/CharSequence;
    :cond_13
    iget-boolean v6, p0, mIconifiedByDefault:Z

    if-eqz v6, :cond_12

    iget-object v6, p0, mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_12

    .line 1188
    :cond_1b
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 1189
    .local v0, "scaleSize":D
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1190
    .local v2, "searchIcon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 1191
    .local v5, "textSize":I
    const/4 v4, 0x0

    .line 1193
    .local v4, "ssb":Landroid/text/SpannableStringBuilder;
    iget-boolean v6, p0, mIsDeviceDefaultLight:Z

    if-eqz v6, :cond_52

    .line 1194
    const/16 v6, -0xf

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v5, -0xf

    invoke-virtual {v2, v11, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1195
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "ssb":Landroid/text/SpannableStringBuilder;
    const-string v6, "  "

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1196
    .restart local v4    # "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1197
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v6, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_50
    move-object p1, v4

    .line 1205
    goto :goto_12

    .line 1199
    :cond_52
    invoke-virtual {v2, v10, v10, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1200
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "ssb":Landroid/text/SpannableStringBuilder;
    const-string v6, "   "

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1201
    .restart local v4    # "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1202
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v11, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_50
.end method

.method private getPreferredWidth()I
    .registers 3

    .prologue
    .line 848
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 872
    iget-object v3, p0, mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_2b

    iget-object v3, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 873
    const/4 v1, 0x0

    .line 874
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 875
    iget-object v1, p0, mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 879
    :cond_18
    :goto_18
    if-eqz v1, :cond_2b

    .line 880
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 882
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2b

    const/4 v2, 0x1

    .line 885
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_2b
    return v2

    .line 876
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2c
    iget-object v3, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 877
    iget-object v1, p0, mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_18
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1811
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isSubmitAreaEnabled()Z
    .registers 2

    .prologue
    .line 889
    iget-boolean v0, p0, mSubmitButtonEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, mVoiceButtonEnabled:Z

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, isIconified()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1602
    if-nez p1, :cond_3

    .line 1612
    :goto_2
    return-void

    .line 1608
    :cond_3
    :try_start_3
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    .line 1609
    :catch_b
    move-exception v0

    .line 1610
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1624
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1625
    invoke-direct/range {v0 .. v6}, createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1626
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1627
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1585
    iget-object v2, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1586
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1588
    invoke-direct {p0, v0, p2, p3}, createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1591
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, launchIntent(Landroid/content/Intent;)V

    .line 1593
    const/4 v2, 0x1

    .line 1595
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private onCloseClicked()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1322
    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1323
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1324
    iget-boolean v3, p0, mIconifiedByDefault:Z

    if-eqz v3, :cond_23

    .line 1326
    iget-object v3, p0, mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    if-eqz v3, :cond_1d

    iget-object v3, p0, mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-interface {v3}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v3

    if-nez v3, :cond_23

    .line 1328
    :cond_1d
    invoke-virtual {p0}, clearFocus()V

    .line 1330
    invoke-direct {p0, v5}, updateViewsVisibility(Z)V

    .line 1349
    :cond_23
    :goto_23
    return-void

    .line 1334
    :cond_24
    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1337
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1338
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 1339
    .local v1, "mKeyboard":I
    if-eqz v1, :cond_47

    .line 1342
    const/4 v3, 0x0

    invoke-direct {p0, v3}, setImeVisibility(Z)V

    goto :goto_23

    .line 1344
    :cond_47
    invoke-direct {p0, v5}, setImeVisibility(Z)V

    goto :goto_23
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .registers 6
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1499
    iget-object v1, p0, mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v1, :cond_d

    iget-object v1, p0, mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1501
    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, launchSuggestion(IILjava/lang/String;)Z

    .line 1502
    invoke-direct {p0, v0}, setImeVisibility(Z)V

    .line 1503
    invoke-direct {p0}, dismissSuggestions()V

    .line 1504
    const/4 v0, 0x1

    .line 1506
    :cond_18
    return v0
.end method

.method private onItemSelected(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1510
    iget-object v0, p0, mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1512
    :cond_c
    invoke-direct {p0, p1}, rewriteQueryFromSuggestion(I)V

    .line 1513
    const/4 v0, 0x1

    .line 1515
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private onSearchClicked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1352
    invoke-direct {p0, v4}, updateViewsVisibility(Z)V

    .line 1353
    iget-object v2, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1355
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1356
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 1357
    .local v1, "mKeyboard":I
    if-eqz v1, :cond_28

    .line 1360
    invoke-direct {p0, v4}, setImeVisibility(Z)V

    .line 1365
    :goto_1e
    iget-object v2, p0, mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_27

    .line 1366
    iget-object v2, p0, mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1368
    :cond_27
    return-void

    .line 1362
    :cond_28
    const/4 v2, 0x1

    invoke-direct {p0, v2}, setImeVisibility(Z)V

    goto :goto_1e
.end method

.method private onSubmitQuery()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1304
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1305
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_31

    .line 1306
    iget-object v1, p0, mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_1f

    iget-object v1, p0, mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1308
    :cond_1f
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_2b

    .line 1309
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1311
    :cond_2b
    invoke-direct {p0, v3}, setImeVisibility(Z)V

    .line 1312
    invoke-direct {p0}, dismissSuggestions()V

    .line 1315
    :cond_31
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1087
    iget-object v7, p0, mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_9

    .line 1144
    :cond_8
    :goto_8
    return v5

    .line 1090
    :cond_9
    iget-object v7, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_8

    .line 1093
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1096
    const/16 v7, 0x42

    if-eq p2, v7, :cond_25

    const/16 v7, 0x54

    if-eq p2, v7, :cond_25

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_31

    .line 1098
    :cond_25
    iget-object v6, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1099
    .local v3, "position":I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_8

    .line 1104
    .end local v3    # "position":I
    :cond_31
    if-eq p2, v8, :cond_37

    const/16 v7, 0x16

    if-ne p2, v7, :cond_57

    .line 1109
    :cond_37
    if-ne p2, v8, :cond_50

    move v4, v5

    .line 1111
    .local v4, "selPoint":I
    :goto_3a
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1112
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1113
    iget-object v5, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1114
    iget-object v5, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v6

    .line 1116
    goto :goto_8

    .line 1109
    .end local v4    # "selPoint":I
    :cond_50
    iget-object v7, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v4

    goto :goto_3a

    .line 1120
    :cond_57
    const/16 v6, 0x13

    if-ne p2, v6, :cond_63

    iget-object v6, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_8

    .line 1127
    :cond_63
    iget-object v6, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1128
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_77

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1132
    :cond_77
    iget-object v6, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1133
    .restart local v3    # "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    .line 1134
    iget-object v6, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1135
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1136
    invoke-static {v2, v0}, getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 1138
    invoke-direct {p0, v3, p2, v1}, onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_8
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1281
    iget-object v5, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1282
    .local v2, "text":Ljava/lang/CharSequence;
    iput-object v2, p0, mUserQuery:Ljava/lang/CharSequence;

    .line 1283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6c

    move v0, v3

    .line 1284
    .local v0, "hasText":Z
    :goto_11
    invoke-direct {p0, v0}, updateSubmitButton(Z)V

    .line 1285
    if-nez v0, :cond_6e

    :goto_16
    invoke-direct {p0, v3}, updateVoiceButton(Z)V

    .line 1286
    invoke-direct {p0}, updateCloseButton()V

    .line 1287
    invoke-direct {p0}, updateSubmitArea()V

    .line 1288
    iget-object v3, p0, mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v3, :cond_34

    iget-object v3, p0, mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 1289
    iget-object v3, p0, mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1293
    :cond_34
    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, mOldQueryText:Ljava/lang/CharSequence;

    .line 1297
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1298
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v3, p0, mIsDeviceDefaultLight:Z

    if-eqz v3, :cond_6b

    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_6b

    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1299
    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1301
    :cond_6b
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6c
    move v0, v4

    .line 1283
    goto :goto_11

    .restart local v0    # "hasText":Z
    :cond_6e
    move v3, v4

    .line 1285
    goto :goto_16
.end method

.method private onVoiceClicked()V
    .registers 7

    .prologue
    .line 1372
    iget-object v4, p0, mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_5

    .line 1391
    :cond_4
    :goto_4
    return-void

    .line 1375
    :cond_5
    iget-object v2, p0, mSearchable:Landroid/app/SearchableInfo;

    .line 1377
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_7
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1378
    iget-object v4, p0, mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1380
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 1386
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :catch_1b
    move-exception v1

    .line 1389
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1381
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1382
    iget-object v4, p0, mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1384
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_37} :catch_1b

    goto :goto_4
.end method

.method private postUpdateFocusedState()V
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 929
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 1552
    iget-object v3, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1553
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1554
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_f

    .line 1572
    :goto_e
    return-void

    .line 1557
    :cond_f
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1559
    iget-object v3, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1560
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_21

    .line 1563
    invoke-direct {p0, v1}, setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1566
    :cond_21
    invoke-direct {p0, v2}, setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1570
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_25
    invoke-direct {p0, v2}, setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e
.end method

.method private setImeVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 953
    if-eqz p1, :cond_8

    .line 954
    iget-object v1, p0, mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    .line 964
    :cond_7
    :goto_7
    return-void

    .line 956
    :cond_8
    iget-object v1, p0, mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 957
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 960
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_7

    .line 961
    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_7
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1618
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1620
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1621
    return-void

    .line 1620
    :cond_13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_f
.end method

.method private updateCloseButton()V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 912
    iget-object v5, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    move v1, v2

    .line 915
    .local v1, "hasText":Z
    :goto_11
    if-nez v1, :cond_1b

    iget-boolean v5, p0, mIconifiedByDefault:Z

    if-eqz v5, :cond_38

    iget-boolean v5, p0, mExpandedInActionView:Z

    if-nez v5, :cond_38

    .line 917
    .local v2, "showClose":Z
    :cond_1b
    :goto_1b
    iget-boolean v5, p0, mIsDeviceDefaultLight:Z

    if-eqz v5, :cond_3c

    .line 918
    iget-object v5, p0, mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3a

    :goto_23
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    :goto_26
    iget-object v3, p0, mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 922
    .local v0, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_35

    .line 923
    if-eqz v1, :cond_46

    sget-object v3, ENABLED_STATE_SET:[I

    :goto_32
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 925
    :cond_35
    return-void

    .end local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasText":Z
    .end local v2    # "showClose":Z
    :cond_36
    move v1, v3

    .line 912
    goto :goto_11

    .restart local v1    # "hasText":Z
    :cond_38
    move v2, v3

    .line 915
    goto :goto_1b

    .restart local v2    # "showClose":Z
    :cond_3a
    move v3, v4

    .line 918
    goto :goto_23

    .line 920
    :cond_3c
    iget-object v5, p0, mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_44

    :goto_40
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26

    :cond_44
    move v3, v4

    goto :goto_40

    .line 923
    .restart local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    :cond_46
    sget-object v3, EMPTY_STATE_SET:[I

    goto :goto_32
.end method

.method private updateFocusedState()V
    .registers 6

    .prologue
    .line 932
    iget-object v4, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 933
    .local v0, "focused":Z
    if-eqz v0, :cond_24

    sget-object v2, FOCUSED_STATE_SET:[I

    .line 934
    .local v2, "stateSet":[I
    :goto_a
    iget-object v4, p0, mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 935
    .local v1, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_15

    .line 936
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 938
    :cond_15
    iget-object v4, p0, mSubmitArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 939
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_20

    .line 940
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 942
    :cond_20
    invoke-virtual {p0}, invalidate()V

    .line 943
    return-void

    .line 933
    .end local v1    # "searchPlateBg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stateSet":[I
    .end local v3    # "submitAreaBg":Landroid/graphics/drawable/Drawable;
    :cond_24
    sget-object v2, EMPTY_STATE_SET:[I

    goto :goto_a
.end method

.method private updateQueryHint()V
    .registers 4

    .prologue
    .line 1209
    invoke-virtual {p0}, getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1210
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_a

    const-string v0, ""

    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_a
    invoke-direct {p0, v0}, getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1211
    return-void
.end method

.method private updateSearchAutoComplete()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 1217
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1218
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1219
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1220
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1223
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_39

    .line 1226
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1227
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 1228
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1235
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1238
    :cond_39
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1239
    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_48

    .line 1240
    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1244
    :cond_48
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 1245
    new-instance v1, Landroid/widget/SuggestionsAdapter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1247
    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1248
    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Landroid/widget/SuggestionsAdapter;

    iget-boolean v3, p0, mQueryRefinement:Z

    if-eqz v3, :cond_6f

    const/4 v2, 0x2

    :cond_6f
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1252
    :cond_72
    return-void
.end method

.method private updateSubmitArea()V
    .registers 3

    .prologue
    .line 902
    const/16 v0, 0x8

    .line 903
    .local v0, "visibility":I
    invoke-direct {p0}, isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    .line 906
    :cond_18
    const/4 v0, 0x0

    .line 908
    :cond_19
    iget-object v1, p0, mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 909
    return-void
.end method

.method private updateSubmitButton(Z)V
    .registers 4
    .param p1, "hasText"    # Z

    .prologue
    .line 893
    const/16 v0, 0x8

    .line 894
    .local v0, "visibility":I
    iget-boolean v1, p0, mSubmitButtonEnabled:Z

    if-eqz v1, :cond_19

    invoke-direct {p0}, isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p1, :cond_18

    iget-boolean v1, p0, mVoiceButtonEnabled:Z

    if-nez v1, :cond_19

    .line 896
    :cond_18
    const/4 v0, 0x0

    .line 898
    :cond_19
    iget-object v1, p0, mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .registers 9
    .param p1, "collapsed"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 853
    iput-boolean p1, p0, mIconified:Z

    .line 855
    if-eqz p1, :cond_3b

    move v1, v2

    .line 857
    .local v1, "visCollapsed":I
    :goto_9
    iget-object v5, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    move v0, v4

    .line 859
    .local v0, "hasText":Z
    :goto_16
    iget-object v5, p0, mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    invoke-direct {p0, v0}, updateSubmitButton(Z)V

    .line 861
    iget-object v6, p0, mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_3f

    move v5, v3

    :goto_23
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-boolean v5, p0, mIsDeviceDefaultLight:Z

    if-eqz v5, :cond_41

    .line 863
    iget-object v5, p0, mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 866
    :goto_2f
    invoke-direct {p0}, updateCloseButton()V

    .line 867
    if-nez v0, :cond_4d

    :goto_34
    invoke-direct {p0, v4}, updateVoiceButton(Z)V

    .line 868
    invoke-direct {p0}, updateSubmitArea()V

    .line 869
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_3b
    move v1, v3

    .line 855
    goto :goto_9

    .restart local v1    # "visCollapsed":I
    :cond_3d
    move v0, v2

    .line 857
    goto :goto_16

    .restart local v0    # "hasText":Z
    :cond_3f
    move v5, v2

    .line 861
    goto :goto_23

    .line 865
    :cond_41
    iget-object v5, p0, mCollapsedIcon:Landroid/widget/ImageView;

    iget-boolean v6, p0, mIconifiedByDefault:Z

    if-eqz v6, :cond_4b

    :goto_47
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2f

    :cond_4b
    move v3, v2

    goto :goto_47

    :cond_4d
    move v4, v2

    .line 867
    goto :goto_34
.end method

.method private updateVoiceButton(Z)V
    .registers 5
    .param p1, "empty"    # Z

    .prologue
    .line 1261
    const/16 v0, 0x8

    .line 1262
    .local v0, "visibility":I
    iget-boolean v1, p0, mVoiceButtonEnabled:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, isIconified()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    .line 1263
    const/4 v0, 0x0

    .line 1264
    iget-object v1, p0, mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1266
    :cond_16
    iget-object v1, p0, mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1267
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, mClearingFocus:Z

    .line 529
    invoke-direct {p0, v1}, setImeVisibility(Z)V

    .line 530
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 531
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 532
    iput-boolean v1, p0, mClearingFocus:Z

    .line 533
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1463
    const-class v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .prologue
    .line 807
    iget v0, p0, mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 649
    iget-object v1, p0, mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    .line 650
    iget-object v0, p0, mQueryHint:Ljava/lang/CharSequence;

    .line 656
    .local v0, "hint":Ljava/lang/CharSequence;
    :goto_6
    return-object v0

    .line 651
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_7
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_22

    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    if-eqz v1, :cond_22

    .line 652
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_6

    .line 654
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_22
    iget-object v0, p0, mDefaultQueryHint:Ljava/lang/CharSequence;

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_6
.end method

.method getSuggestionCommitIconResId()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .registers 2

    .prologue
    .line 420
    iget v0, p0, mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .registers 2

    .prologue
    .line 785
    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .registers 2

    .prologue
    .line 685
    iget-boolean v0, p0, mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .registers 2

    .prologue
    .line 713
    iget-boolean v0, p0, mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .registers 2

    .prologue
    .line 765
    iget-boolean v0, p0, mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .registers 2

    .prologue
    .line 735
    iget-boolean v0, p0, mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1440
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, setQuery(Ljava/lang/CharSequence;Z)V

    .line 1441
    invoke-virtual {p0}, clearFocus()V

    .line 1442
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    .line 1443
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1444
    iput-boolean v2, p0, mExpandedInActionView:Z

    .line 1445
    return-void
.end method

.method public onActionViewExpanded()V
    .registers 4

    .prologue
    .line 1452
    iget-boolean v0, p0, mExpandedInActionView:Z

    if-eqz v0, :cond_5

    .line 1459
    :goto_4
    return-void

    .line 1454
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, mExpandedInActionView:Z

    .line 1455
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, mCollapsedImeOptions:I

    .line 1456
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1457
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setIconified(Z)V

    goto :goto_4
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 948
    iget-object v0, p0, mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 949
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 950
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1002
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_6

    .line 1003
    const/4 v1, 0x0

    .line 1015
    :goto_5
    return v1

    .line 1008
    :cond_6
    iget-object v1, p0, mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1009
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1010
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1012
    const/4 v1, 0x1

    goto :goto_5

    .line 1015
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 813
    invoke-virtual {p0}, isIconified()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 814
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 845
    :goto_9
    return-void

    .line 818
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 819
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 821
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_4e

    .line 843
    :cond_15
    :goto_15
    const/high16 v1, 0x40000000    # 2.0f

    .line 844
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_9

    .line 824
    :sswitch_1f
    iget v2, p0, mMaxWidth:I

    if-lez v2, :cond_2a

    .line 825
    iget v2, p0, mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_15

    .line 828
    :cond_2a
    iget-boolean v2, p0, mIsDeviceDefaultLight:Z

    if-nez v2, :cond_15

    .line 829
    invoke-direct {p0}, getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_15

    .line 834
    :sswitch_37
    iget v2, p0, mMaxWidth:I

    if-lez v2, :cond_15

    .line 835
    iget v2, p0, mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_15

    .line 840
    :sswitch_42
    iget v2, p0, mMaxWidth:I

    if-lez v2, :cond_49

    iget v0, p0, mMaxWidth:I

    :goto_48
    goto :goto_15

    :cond_49
    invoke-direct {p0}, getPreferredWidth()I

    move-result v0

    goto :goto_48

    .line 821
    :sswitch_data_4e
    .sparse-switch
        -0x80000000 -> :sswitch_1f
        0x0 -> :sswitch_42
        0x40000000 -> :sswitch_37
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 971
    invoke-direct {p0, p1}, setQuery(Ljava/lang/CharSequence;)V

    .line 972
    return-void
.end method

.method onTextFocusChanged()V
    .registers 2

    .prologue
    .line 1394
    invoke-virtual {p0}, isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    .line 1397
    invoke-direct {p0}, postUpdateFocusedState()V

    .line 1398
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1399
    invoke-direct {p0}, forceSuggestionQuery()V

    .line 1401
    :cond_15
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1405
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1407
    invoke-direct {p0}, postUpdateFocusedState()V

    .line 1408
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-boolean v2, p0, mClearingFocus:Z

    if-eqz v2, :cond_7

    move v0, v1

    .line 521
    :cond_6
    :goto_6
    return v0

    .line 512
    :cond_7
    invoke-virtual {p0}, isFocusable()Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_6

    .line 514
    :cond_f
    invoke-virtual {p0}, isIconified()Z

    move-result v2

    if-nez v2, :cond_21

    .line 515
    iget-object v2, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 516
    .local v0, "result":Z
    if-eqz v0, :cond_6

    .line 517
    invoke-direct {p0, v1}, updateViewsVisibility(Z)V

    goto :goto_6

    .line 521
    .end local v0    # "result":Z
    :cond_21
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_6
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 458
    iput-object p1, p0, mAppSearchData:Landroid/os/Bundle;

    .line 459
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1413
    iget-boolean v0, p0, mIsDeviceDefaultLight:Z

    if-eqz v0, :cond_a

    .line 1414
    iget-object v0, p0, mSearchPlate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1417
    :goto_9
    return-void

    .line 1416
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 1421
    iget-boolean v0, p0, mIsDeviceDefaultLight:Z

    if-eqz v0, :cond_16

    .line 1422
    iget-object v0, p0, mSearchPlate:Landroid/view/View;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1425
    :goto_15
    return-void

    .line 1424
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_15
.end method

.method public setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .prologue
    .line 1429
    iget-boolean v0, p0, mIsDeviceDefaultLight:Z

    if-eqz v0, :cond_a

    .line 1430
    iget-object v0, p0, mSearchPlate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 1433
    :goto_9
    return-void

    .line 1432
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    goto :goto_9
.end method

.method public setIconified(Z)V
    .registers 2
    .param p1, "iconify"    # Z

    .prologue
    .line 699
    if-eqz p1, :cond_6

    .line 700
    invoke-direct {p0}, onCloseClicked()V

    .line 704
    :goto_5
    return-void

    .line 702
    :cond_6
    invoke-direct {p0}, onSearchClicked()V

    goto :goto_5
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3
    .param p1, "iconified"    # Z

    .prologue
    .line 672
    iget-boolean v0, p0, mIconifiedByDefault:Z

    if-ne v0, p1, :cond_5

    .line 676
    :goto_4
    return-void

    .line 673
    :cond_5
    iput-boolean p1, p0, mIconifiedByDefault:Z

    .line 674
    invoke-direct {p0, p1}, updateViewsVisibility(Z)V

    .line 675
    invoke-direct {p0}, updateQueryHint()V

    goto :goto_4
.end method

.method public setImeOptions(I)V
    .registers 3
    .param p1, "imeOptions"    # I

    .prologue
    .line 470
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 471
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .prologue
    .line 493
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 494
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1, "maxpixels"    # I

    .prologue
    .line 794
    iput p1, p0, mMaxWidth:I

    .line 796
    invoke-virtual {p0}, requestLayout()V

    .line 797
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnCloseListener;

    .prologue
    .line 551
    iput-object p1, p0, mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 552
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 560
    iput-object p1, p0, mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 561
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 542
    iput-object p1, p0, mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 543
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 581
    iput-object p1, p0, mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 582
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnSuggestionListener;

    .prologue
    .line 569
    iput-object p1, p0, mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    .line 570
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 602
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 603
    if-eqz p1, :cond_14

    .line 604
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 605
    iput-object p1, p0, mUserQuery:Ljava/lang/CharSequence;

    .line 609
    :cond_14
    if-eqz p2, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 610
    invoke-direct {p0}, onSubmitQuery()V

    .line 612
    :cond_1f
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 625
    iput-object p1, p0, mQueryHint:Ljava/lang/CharSequence;

    .line 626
    invoke-direct {p0}, updateQueryHint()V

    .line 627
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 753
    iput-boolean p1, p0, mQueryRefinement:Z

    .line 754
    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_12

    .line 755
    iget-object v0, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Landroid/widget/SuggestionsAdapter;

    if-eqz p1, :cond_13

    const/4 v1, 0x2

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 758
    :cond_12
    return-void

    .line 755
    :cond_13
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 4
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 436
    iput-object p1, p0, mSearchable:Landroid/app/SearchableInfo;

    .line 437
    iget-object v0, p0, mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_c

    .line 438
    invoke-direct {p0}, updateSearchAutoComplete()V

    .line 439
    invoke-direct {p0}, updateQueryHint()V

    .line 442
    :cond_c
    invoke-direct {p0}, hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, mVoiceButtonEnabled:Z

    .line 444
    iget-boolean v0, p0, mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1e

    .line 447
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 449
    :cond_1e
    invoke-virtual {p0}, isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    .line 450
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 725
    iput-boolean p1, p0, mSubmitButtonEnabled:Z

    .line 726
    invoke-virtual {p0}, isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, updateViewsVisibility(Z)V

    .line 727
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 775
    iput-object p1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 777
    iget-object v0, p0, mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 778
    return-void
.end method
