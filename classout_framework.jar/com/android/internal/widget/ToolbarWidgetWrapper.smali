.class public Lcom/android/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ToolbarWidgetWrapper"


# instance fields
.field private mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Landroid/widget/Spinner;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Landroid/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/widget/Toolbar;Z)V
    .registers 4
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z

    .prologue
    .line 101
    const v0, 0x1040495

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/widget/Toolbar;ZI)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar;ZI)V
    .registers 26
    .param p1, "toolbar"    # Landroid/widget/Toolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mNavigationMode:I

    .line 95
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mDefaultNavigationContentDescription:I

    .line 106
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mToolbar:Landroid/widget/Toolbar;

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mTitle:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mSubtitle:Ljava/lang/CharSequence;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, mTitle:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    if-eqz v17, :cond_241

    const/16 v17, 0x1

    :goto_37
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mTitleSet:Z

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v20, 0x10102ce

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 114
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 115
    if-eqz p2, :cond_245

    .line 116
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 117
    .local v15, "title":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_81

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, setTitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_81
    const/16 v17, 0x9

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 122
    .local v13, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_94

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, setSubtitle(Ljava/lang/CharSequence;)V

    .line 126
    :cond_94
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 127
    .local v9, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_a3

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_a3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 132
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_b2

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, mNavIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_cf

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_cf
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setDisplayOptions(I)V

    .line 140
    const/16 v17, 0xa

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 142
    .local v6, "customNavId":I
    if-eqz v6, :cond_126

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, setCustomView(Landroid/view/View;)V

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, mDisplayOpts:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, setDisplayOptions(I)V

    .line 148
    :cond_126
    const/16 v17, 0x4

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    .line 149
    .local v7, "height":I
    if-lez v7, :cond_14b

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 151
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14b
    const/16 v17, 0x16

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 157
    .local v5, "contentInsetStart":I
    const/16 v17, 0x17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 159
    .local v4, "contentInsetEnd":I
    if-gez v5, :cond_167

    if-ltz v4, :cond_180

    .line 160
    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 164
    :cond_180
    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 165
    .local v16, "titleTextStyle":I
    if-eqz v16, :cond_1a7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 169
    :cond_1a7
    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 171
    .local v14, "subtitleTextStyle":I
    if-eqz v14, :cond_1cc

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 175
    :cond_1cc
    const/16 v17, 0x1a

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 176
    .local v12, "popupTheme":I
    if-eqz v12, :cond_1e5

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 182
    .end local v4    # "contentInsetEnd":I
    .end local v5    # "contentInsetStart":I
    .end local v6    # "customNavId":I
    .end local v7    # "height":I
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v12    # "popupTheme":I
    .end local v13    # "subtitle":Ljava/lang/CharSequence;
    .end local v14    # "subtitleTextStyle":I
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "titleTextStyle":I
    :cond_1e5
    :goto_1e5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 186
    .local v11, "outValue":Landroid/util/TypedValue;
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    const v18, 0x11600bd

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 187
    iget v0, v11, Landroid/util/TypedValue;->data:I

    move/from16 v17, v0

    if-eqz v17, :cond_250

    const/16 v17, 0x1

    :goto_211
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsThemeDeviceDefaultFamily:Z

    .line 190
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, setDefaultNavigationContentDescription(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mHomeDescription:Ljava/lang/CharSequence;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, mToolbar:Landroid/widget/Toolbar;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void

    .line 110
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "outValue":Landroid/util/TypedValue;
    :cond_241
    const/16 v17, 0x0

    goto/16 :goto_37

    .line 180
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    :cond_245
    invoke-direct/range {p0 .. p0}, detectDisplayOptions()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mDisplayOpts:I

    goto :goto_1e5

    .line 187
    .restart local v11    # "outValue":Landroid/util/TypedValue;
    :cond_250
    const/16 v17, 0x0

    goto :goto_211
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 66
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 66
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 66
    iget-object v0, p0, mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 66
    iget-boolean v0, p0, mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .prologue
    .line 66
    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method private detectDisplayOptions()I
    .registers 3

    .prologue
    .line 231
    const/16 v0, 0xb

    .line 233
    .local v0, "opts":I
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 234
    or-int/lit8 v0, v0, 0x4

    .line 235
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 237
    :cond_14
    return v0
.end method

.method private ensureSpinner()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    .line 554
    iget-object v1, p0, mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_21

    .line 555
    new-instance v1, Landroid/widget/Spinner;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102d7

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, mSpinner:Landroid/widget/Spinner;

    .line 556
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v5, v5, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 558
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v1, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_21
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 290
    iput-object p1, p0, mTitle:Ljava/lang/CharSequence;

    .line 291
    iget v0, p0, mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 292
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    :cond_d
    return-void
.end method

.method private updateHomeAccessibility()V
    .registers 3

    .prologue
    .line 687
    iget v0, p0, mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    .line 688
    iget-object v0, p0, mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 689
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    iget v1, p0, mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 694
    :cond_15
    :goto_15
    return-void

    .line 691
    :cond_16
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method private updateNavigationIcon()V
    .registers 3

    .prologue
    .line 668
    iget v0, p0, mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    .line 669
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v0, p0, mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 673
    :goto_11
    return-void

    .line 669
    :cond_12
    iget-object v0, p0, mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    .line 671
    :cond_15
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11
.end method

.method private updateToolbarLogo()V
    .registers 3

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    .line 375
    iget v1, p0, mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    .line 376
    iget-object v1, p0, mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-object v0, p0, mLogo:Landroid/graphics/drawable/Drawable;

    .line 381
    :cond_13
    :goto_13
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 382
    return-void

    .line 376
    :cond_19
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_13

    .line 378
    :cond_1c
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_13
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 607
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 608
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_b

    .line 609
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 611
    :cond_b
    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .registers 2

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    .line 263
    return-void
.end method

.method public dismissPopupMenus()V
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 427
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .prologue
    .line 431
    iget v0, p0, mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_b

    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .registers 2

    .prologue
    .line 509
    iget v0, p0, mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, mTabView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasLogo()Z
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .registers 3

    .prologue
    .line 316
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public initProgress()V
    .registers 3

    .prologue
    .line 311
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 704
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 699
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 709
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    return-void
.end method

.method public setCollapsible(Z)V
    .registers 3
    .param p1, "collapsible"    # Z

    .prologue
    .line 499
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setCollapsible(Z)V

    .line 500
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 591
    iget-object v0, p0, mCustomView:Landroid/view/View;

    if-eqz v0, :cond_11

    iget v0, p0, mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    .line 592
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 594
    :cond_11
    iput-object p1, p0, mCustomView:Landroid/view/View;

    .line 595
    if-eqz p1, :cond_22

    iget v0, p0, mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_22

    .line 596
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 598
    :cond_22
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .registers 3
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 221
    iget v0, p0, mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_5

    .line 228
    :cond_4
    :goto_4
    return-void

    .line 224
    :cond_5
    iput p1, p0, mDefaultNavigationContentDescription:I

    .line 225
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    iget v0, p0, mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, setNavigationContentDescription(I)V

    goto :goto_4
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 661
    iget-object v0, p0, mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 662
    iput-object p1, p0, mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 663
    invoke-direct {p0}, updateNavigationIcon()V

    .line 665
    :cond_9
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 6
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 436
    iget v1, p0, mDisplayOpts:I

    .line 437
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 438
    .local v0, "changed":I
    iput p1, p0, mDisplayOpts:I

    .line 439
    if-eqz v0, :cond_47

    .line 440
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_17

    .line 441
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_14

    .line 442
    invoke-direct {p0}, updateHomeAccessibility()V

    .line 444
    :cond_14
    invoke-direct {p0}, updateNavigationIcon()V

    .line 447
    :cond_17
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_1e

    .line 448
    invoke-direct {p0}, updateToolbarLogo()V

    .line 451
    :cond_1e
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_34

    .line 452
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_48

    .line 453
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 461
    :cond_34
    :goto_34
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_47

    iget-object v2, p0, mCustomView:Landroid/view/View;

    if-eqz v2, :cond_47

    .line 462
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_53

    .line 463
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 469
    :cond_47
    :goto_47
    return-void

    .line 456
    :cond_48
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 465
    :cond_53
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_47
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 565
    invoke-direct {p0}, ensureSpinner()V

    .line 566
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 567
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 568
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 572
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_c

    .line 573
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_c
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 577
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 7
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v4, -0x2

    .line 473
    iget-object v1, p0, mTabView:Landroid/view/View;

    if-eqz v1, :cond_16

    iget-object v1, p0, mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    if-ne v1, v2, :cond_16

    .line 474
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, mTabView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 476
    :cond_16
    iput-object p1, p0, mTabView:Landroid/view/View;

    .line 477
    if-eqz p1, :cond_3c

    iget v1, p0, mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3c

    .line 478
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v2, p0, mTabView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 479
    iget-object v1, p0, mTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 480
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    .line 481
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    .line 482
    const v1, 0x800053

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 483
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 485
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_3c
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 505
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 352
    if-eqz p1, :cond_e

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 353
    return-void

    .line 352
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 357
    iput-object p1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-direct {p0}, updateToolbarLogo()V

    .line 359
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 363
    if-eqz p1, :cond_e

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 364
    return-void

    .line 363
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 368
    iput-object p1, p0, mLogo:Landroid/graphics/drawable/Drawable;

    .line 369
    invoke-direct {p0}, updateToolbarLogo()V

    .line 370
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 416
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v0, :cond_19

    .line 417
    new-instance v0, Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 418
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x102004b

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 420
    :cond_19
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 421
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/widget/Toolbar;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V

    .line 422
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 730
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Toolbar;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 731
    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, mMenuPrepared:Z

    .line 412
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 683
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 684
    return-void

    .line 683
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 677
    iput-object p1, p0, mHomeDescription:Ljava/lang/CharSequence;

    .line 678
    invoke-direct {p0}, updateHomeAccessibility()V

    .line 679
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 656
    if-eqz p1, :cond_10

    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {p0, v0}, setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 657
    return-void

    .line 656
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 650
    iput-object p1, p0, mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 651
    invoke-direct {p0}, updateNavigationIcon()V

    .line 652
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 8
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 514
    iget v1, p0, mNavigationMode:I

    .line 515
    .local v1, "oldMode":I
    if-eq p1, v1, :cond_5d

    .line 516
    packed-switch v1, :pswitch_data_7c

    .line 529
    :cond_9
    :goto_9
    iput p1, p0, mNavigationMode:I

    .line 531
    packed-switch p1, :pswitch_data_84

    .line 548
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid navigation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :pswitch_27
    iget-object v2, p0, mSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_9

    iget-object v2, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, mToolbar:Landroid/widget/Toolbar;

    if-ne v2, v3, :cond_9

    .line 519
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 523
    :pswitch_3d
    iget-object v2, p0, mTabView:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, mToolbar:Landroid/widget/Toolbar;

    if-ne v2, v3, :cond_9

    .line 524
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mTabView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 535
    :pswitch_53
    invoke-direct {p0}, ensureSpinner()V

    .line 536
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 551
    :cond_5d
    :goto_5d
    :pswitch_5d
    return-void

    .line 539
    :pswitch_5e
    iget-object v2, p0, mTabView:Landroid/view/View;

    if-eqz v2, :cond_5d

    .line 540
    iget-object v2, p0, mToolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, mTabView:Landroid/view/View;

    invoke-virtual {v2, v3, v5}, Landroid/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 541
    iget-object v2, p0, mTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 542
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->width:I

    .line 543
    iput v4, v0, Landroid/widget/Toolbar$LayoutParams;->height:I

    .line 544
    const v2, 0x800053

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_5d

    .line 516
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_3d
    .end packed-switch

    .line 531
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_53
        :pswitch_5e
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .registers 4
    .param p1, "split"    # Z

    .prologue
    .line 330
    if-eqz p1, :cond_a

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_a
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 326
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .registers 2
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 338
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    iput-object p1, p0, mSubtitle:Ljava/lang/CharSequence;

    .line 304
    iget v0, p0, mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    .line 305
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 307
    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, mTitleSet:Z

    .line 286
    invoke-direct {p0, p1}, setTitleInt(Ljava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visible"    # I

    .prologue
    .line 719
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 720
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 267
    iput-object p1, p0, mWindowCallback:Landroid/view/Window$Callback;

    .line 268
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 273
    iget-boolean v0, p0, mTitleSet:Z

    if-nez v0, :cond_7

    .line 274
    invoke-direct {p0, p1}, setTitleInt(Ljava/lang/CharSequence;)V

    .line 276
    :cond_7
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .registers 8
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x2

    .line 616
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1e

    .line 617
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_3c

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 618
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 619
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 645
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :goto_1d
    return-object v0

    .line 634
    :cond_1e
    if-nez p1, :cond_39

    .line 635
    iget-object v1, p0, mToolbar:Landroid/widget/Toolbar;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_44

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 636
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 637
    new-instance v1, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1d

    .line 645
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_39
    const/4 v0, 0x0

    goto :goto_1d

    .line 617
    nop

    :array_3c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 635
    :array_44
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOverflowMenu()Z
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
