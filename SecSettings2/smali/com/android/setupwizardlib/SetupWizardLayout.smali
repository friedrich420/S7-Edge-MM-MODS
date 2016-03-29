.class public Lcom/android/setupwizardlib/SetupWizardLayout;
.super Landroid/widget/FrameLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(ILandroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x0

    sget v1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(ILandroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    invoke-direct {p0, p2, p3, p4}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(ILandroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    sget v1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(ILandroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(ILandroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 182
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method private getIllustration(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "asset"    # I
    .param p2, "horizontalTile"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 372
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    .local v0, "assetDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 374
    .local v2, "tile":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "asset"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontalTile"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x1

    .line 379
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 380
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/setupwizardlib/R$bool;->suwUseTabletLayout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 383
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move-object v2, p2

    .line 384
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 386
    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 388
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 390
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 392
    .local v1, "layers":Landroid/graphics/drawable/LayerDrawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2

    .line 393
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    .line 401
    .end local v1    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    :goto_0
    return-object v1

    .line 398
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_4

    .line 399
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_4
    move-object v1, p1

    .line 401
    goto :goto_0
.end method

.method private inflateTemplate(I)V
    .locals 3
    .param p1, "templateResource"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 187
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "templateRoot":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->addViewInternal(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContainerId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/setupwizardlib/SetupWizardLayout;->mContainer:Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->onTemplateInflated()V

    .line 192
    return-void
.end method

.method private init(ILandroid/util/AttributeSet;I)V
    .locals 15
    .param p1, "template"    # I
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    sget-object v13, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout:[I

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v13, v1, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 93
    .local v2, "a":Landroid/content/res/TypedArray;
    if-nez p1, :cond_0

    .line 94
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_android_layout:I

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 96
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->inflateTemplate(I)V

    .line 99
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackground:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 101
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_6

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1
    :goto_0
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustration:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 114
    .local v8, "illustration":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_7

    .line 115
    invoke-virtual {p0, v8}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_2
    :goto_1
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwDecorPaddingTop:I

    const/4 v13, -0x1

    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 129
    .local v5, "decorPaddingTop":I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/setupwizardlib/R$dimen;->suw_decor_padding_top:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 132
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/setupwizardlib/SetupWizardLayout;->setDecorPaddingTop(I)V

    .line 137
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationAspectRatio:I

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v2, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 139
    .local v9, "illustrationAspectRatio":F
    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_4

    .line 140
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 141
    .local v11, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/setupwizardlib/R$dimen;->suw_illustration_aspect_ratio:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v11, v14}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 142
    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    .line 144
    .end local v11    # "out":Landroid/util/TypedValue;
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    .line 147
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwHeaderText:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 149
    .local v6, "headerText":Ljava/lang/CharSequence;
    if-eqz v6, :cond_5

    .line 150
    invoke-virtual {p0, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    return-void

    .line 104
    .end local v5    # "decorPaddingTop":I
    .end local v6    # "headerText":Ljava/lang/CharSequence;
    .end local v8    # "illustration":Landroid/graphics/drawable/Drawable;
    .end local v9    # "illustrationAspectRatio":F
    :cond_6
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackgroundTile:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 106
    .local v4, "backgroundTile":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 107
    invoke-direct {p0, v4}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 117
    .end local v4    # "backgroundTile":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "illustration":Landroid/graphics/drawable/Drawable;
    :cond_7
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationImage:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 119
    .local v10, "illustrationImage":Landroid/graphics/drawable/Drawable;
    sget v12, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationHorizontalTile:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 121
    .local v7, "horizontalTile":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    .line 122
    invoke-direct {p0, v10, v7}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "backgroundTile"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 364
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 365
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    return-void
.end method

.method private setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "asset"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontalTile"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 300
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 301
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 302
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 303
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    .local v1, "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 306
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    .end local v1    # "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardLayout;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method protected getContainerId()I
    .locals 1

    .prologue
    .line 222
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    return v0
.end method

.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 2

    .prologue
    .line 226
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_navigation_bar:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideProgressBar()V
    .locals 2

    .prologue
    .line 423
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 425
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_0
    return-void
.end method

.method public isProgressBarShown()Z
    .locals 2

    .prologue
    .line 406
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I

    .prologue
    .line 205
    if-nez p2, :cond_0

    .line 206
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_template:I

    .line 208
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 166
    move-object v1, p1

    check-cast v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    .line 167
    .local v1, "ss":Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 168
    iget-boolean v0, v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 169
    .local v0, "isProgressBarShown":Z
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->showProgressBar()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->hideProgressBar()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 159
    .local v0, "parcelable":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 160
    .local v1, "ss":Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->isProgressBarShown()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 161
    return-object v1
.end method

.method protected onTemplateInflated()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 4
    .param p1, "paddingTop"    # I

    .prologue
    .line 334
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 339
    :cond_0
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 254
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_title:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    .local v0, "titleView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setIllustration(II)V
    .locals 4
    .param p1, "asset"    # I
    .param p2, "horizontalTile"    # I

    .prologue
    .line 291
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 292
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 293
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 294
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 295
    .local v1, "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 297
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    .end local v1    # "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 274
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 276
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 277
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 279
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 316
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 317
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 318
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 319
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setAspectRatio(F)V

    .line 321
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 346
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public showProgressBar()V
    .locals 3

    .prologue
    .line 411
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_progress:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 413
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_progress_stub:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 416
    .local v1, "progressBarStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0
.end method
