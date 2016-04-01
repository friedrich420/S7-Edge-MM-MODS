.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final DEFAULT_MARGIN_RELATIVE:I = -0x80000000

.field private static final DEFAULT_MARGIN_RESOLVED:I = 0x0

.field private static final LAYOUT_DIRECTION_MASK:I = 0x3

.field private static final LEFT_MARGIN_UNDEFINED_MASK:I = 0x4

.field private static final NEED_RESOLUTION_MASK:I = 0x20

.field private static final RIGHT_MARGIN_UNDEFINED_MASK:I = 0x8

.field private static final RTL_COMPATIBILITY_MODE_MASK:I = 0x10

.field private static final UNDEFINED_MARGIN:I = -0x80000000


# instance fields
.field public bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mMarginFlags:B
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LAYOUT_DIRECTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "LEFT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "RIGHT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "RTL_COMPATIBILITY_MODE_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NEED_RESOLUTION_MASK"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v0, -0x80000000

    .line 7512
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7384
    iput v0, p0, startMargin:I

    .line 7392
    iput v0, p0, endMargin:I

    .line 7514
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7515
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7517
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7518
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7519
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    .line 7445
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 7384
    iput v8, p0, startMargin:I

    .line 7392
    iput v8, p0, endMargin:I

    .line 7447
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 7448
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0, v5, v2}, setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 7452
    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 7454
    .local v3, "margin":I
    if-ltz v3, :cond_56

    .line 7455
    iput v3, p0, leftMargin:I

    .line 7456
    iput v3, p0, topMargin:I

    .line 7457
    iput v3, p0, rightMargin:I

    .line 7458
    iput v3, p0, bottomMargin:I

    .line 7494
    :cond_24
    :goto_24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    .line 7495
    .local v1, "hasRtlSupport":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_aa

    .line 7497
    .local v2, "isSystemApp":Z
    :goto_36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7498
    .local v4, "targetSdkVersion":I
    const/16 v5, 0x11

    if-ge v4, v5, :cond_42

    if-eqz v2, :cond_44

    :cond_42
    if-nez v1, :cond_4b

    .line 7499
    :cond_44
    iget-byte v5, p0, mMarginFlags:B

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    iput-byte v5, p0, mMarginFlags:B

    .line 7503
    :cond_4b
    iget-byte v5, p0, mMarginFlags:B

    or-int/lit8 v5, v5, 0x0

    int-to-byte v5, v5

    iput-byte v5, p0, mMarginFlags:B

    .line 7505
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7506
    return-void

    .line 7460
    .end local v1    # "hasRtlSupport":Z
    .end local v2    # "isSystemApp":Z
    .end local v4    # "targetSdkVersion":I
    :cond_56
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, leftMargin:I

    .line 7463
    iget v6, p0, leftMargin:I

    if-ne v6, v8, :cond_6a

    .line 7464
    iget-byte v6, p0, mMarginFlags:B

    or-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    iput-byte v6, p0, mMarginFlags:B

    .line 7465
    iput v5, p0, leftMargin:I

    .line 7467
    :cond_6a
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, rightMargin:I

    .line 7470
    iget v6, p0, rightMargin:I

    if-ne v6, v8, :cond_7e

    .line 7471
    iget-byte v6, p0, mMarginFlags:B

    or-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    iput-byte v6, p0, mMarginFlags:B

    .line 7472
    iput v5, p0, rightMargin:I

    .line 7475
    :cond_7e
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, topMargin:I

    .line 7478
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, bottomMargin:I

    .line 7482
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, startMargin:I

    .line 7485
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, endMargin:I

    .line 7489
    invoke-virtual {p0}, isMarginRelative()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 7490
    iget-byte v6, p0, mMarginFlags:B

    or-int/lit8 v6, v6, 0x20

    int-to-byte v6, v6

    iput-byte v6, p0, mMarginFlags:B

    goto/16 :goto_24

    .restart local v1    # "hasRtlSupport":Z
    :cond_aa
    move v2, v5

    .line 7495
    goto :goto_36
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/high16 v0, -0x80000000

    .line 7544
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7384
    iput v0, p0, startMargin:I

    .line 7392
    iput v0, p0, endMargin:I

    .line 7546
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7547
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7549
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7550
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7551
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/high16 v0, -0x80000000

    .line 7526
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 7384
    iput v0, p0, startMargin:I

    .line 7392
    iput v0, p0, endMargin:I

    .line 7527
    iget v0, p1, width:I

    iput v0, p0, width:I

    .line 7528
    iget v0, p1, height:I

    iput v0, p0, height:I

    .line 7530
    iget v0, p1, leftMargin:I

    iput v0, p0, leftMargin:I

    .line 7531
    iget v0, p1, topMargin:I

    iput v0, p0, topMargin:I

    .line 7532
    iget v0, p1, rightMargin:I

    iput v0, p0, rightMargin:I

    .line 7533
    iget v0, p1, bottomMargin:I

    iput v0, p0, bottomMargin:I

    .line 7534
    iget v0, p1, startMargin:I

    iput v0, p0, startMargin:I

    .line 7535
    iget v0, p1, endMargin:I

    iput v0, p0, endMargin:I

    .line 7537
    iget-byte v0, p1, mMarginFlags:B

    iput-byte v0, p0, mMarginFlags:B

    .line 7538
    return-void
.end method

.method private doResolveMargins()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/high16 v3, -0x80000000

    .line 7750
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_32

    .line 7753
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    iget v0, p0, startMargin:I

    if-le v0, v3, :cond_1a

    .line 7755
    iget v0, p0, startMargin:I

    iput v0, p0, leftMargin:I

    .line 7757
    :cond_1a
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    iget v0, p0, endMargin:I

    if-le v0, v3, :cond_2a

    .line 7759
    iget v0, p0, endMargin:I

    iput v0, p0, rightMargin:I

    .line 7781
    :cond_2a
    :goto_2a
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7782
    return-void

    .line 7765
    :cond_32
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_60

    .line 7774
    iget v0, p0, startMargin:I

    if-le v0, v3, :cond_5d

    iget v0, p0, startMargin:I

    :goto_3f
    iput v0, p0, leftMargin:I

    .line 7776
    iget v0, p0, endMargin:I

    if-le v0, v3, :cond_47

    iget v1, p0, endMargin:I

    :cond_47
    iput v1, p0, rightMargin:I

    goto :goto_2a

    .line 7767
    :pswitch_4a
    iget v0, p0, endMargin:I

    if-le v0, v3, :cond_5b

    iget v0, p0, endMargin:I

    :goto_50
    iput v0, p0, leftMargin:I

    .line 7769
    iget v0, p0, startMargin:I

    if-le v0, v3, :cond_58

    iget v1, p0, startMargin:I

    :cond_58
    iput v1, p0, rightMargin:I

    goto :goto_2a

    :cond_5b
    move v0, v1

    .line 7767
    goto :goto_50

    :cond_5d
    move v0, v1

    .line 7774
    goto :goto_3f

    .line 7765
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public final copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 7557
    iget v0, p1, leftMargin:I

    iput v0, p0, leftMargin:I

    .line 7558
    iget v0, p1, topMargin:I

    iput v0, p0, topMargin:I

    .line 7559
    iget v0, p1, rightMargin:I

    iput v0, p0, rightMargin:I

    .line 7560
    iget v0, p1, bottomMargin:I

    iput v0, p0, bottomMargin:I

    .line 7561
    iget v0, p1, startMargin:I

    iput v0, p0, startMargin:I

    .line 7562
    iget v0, p1, endMargin:I

    iput v0, p0, endMargin:I

    .line 7564
    iget-byte v0, p1, mMarginFlags:B

    iput-byte v0, p0, mMarginFlags:B

    .line 7565
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 7813
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7814
    const-string v0, "leftMargin"

    iget v1, p0, leftMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7815
    const-string/jumbo v0, "topMargin"

    iget v1, p0, topMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7816
    const-string/jumbo v0, "rightMargin"

    iget v1, p0, rightMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7817
    const-string v0, "bottomMargin"

    iget v1, p0, bottomMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7818
    const-string/jumbo v0, "startMargin"

    iget v1, p0, startMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7819
    const-string v0, "endMargin"

    iget v1, p0, endMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7820
    return-void
.end method

.method public getLayoutDirection()I
    .registers 2

    .prologue
    .line 7729
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMarginEnd()I
    .registers 3

    .prologue
    .line 7677
    iget v0, p0, endMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    iget v0, p0, endMargin:I

    .line 7686
    :goto_8
    return v0

    .line 7678
    :cond_9
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_14

    .line 7679
    invoke-direct {p0}, doResolveMargins()V

    .line 7681
    :cond_14
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_22

    .line 7686
    iget v0, p0, rightMargin:I

    goto :goto_8

    .line 7683
    :pswitch_1e
    iget v0, p0, leftMargin:I

    goto :goto_8

    .line 7681
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public getMarginStart()I
    .registers 3

    .prologue
    .line 7644
    iget v0, p0, startMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    iget v0, p0, startMargin:I

    .line 7653
    :goto_8
    return v0

    .line 7645
    :cond_9
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_14

    .line 7646
    invoke-direct {p0}, doResolveMargins()V

    .line 7648
    :cond_14
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_22

    .line 7653
    iget v0, p0, leftMargin:I

    goto :goto_8

    .line 7650
    :pswitch_1e
    iget v0, p0, rightMargin:I

    goto :goto_8

    .line 7648
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public isLayoutRtl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7788
    iget-byte v1, p0, mMarginFlags:B

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isMarginRelative()Z
    .registers 3

    .prologue
    const/high16 v1, -0x80000000

    .line 7699
    iget v0, p0, startMargin:I

    if-ne v0, v1, :cond_a

    iget v0, p0, endMargin:I

    if-eq v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 7796
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v0}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v10

    .line 7798
    .local v10, "oi":Landroid/graphics/Insets;
    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v10, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, v10, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, v10, Landroid/graphics/Insets;->right:I

    sub-int v3, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, v10, Landroid/graphics/Insets;->bottom:I

    sub-int v4, v0, v4

    iget v5, p0, leftMargin:I

    iget v6, p0, topMargin:I

    iget v7, p0, rightMargin:I

    iget v8, p0, bottomMargin:I

    move-object v0, p2

    move-object v9, p3

    # invokes: Landroid/view/ViewGroup;->fillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V
    invoke-static/range {v0 .. v9}, Landroid/view/ViewGroup;->access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    .line 7808
    return-void

    .line 7796
    .end local v10    # "oi":Landroid/graphics/Insets;
    :cond_38
    sget-object v10, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_c
.end method

.method public resolveLayoutDirection(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 7738
    invoke-virtual {p0, p1}, setLayoutDirection(I)V

    .line 7742
    invoke-virtual {p0}, isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_12

    .line 7747
    :cond_11
    :goto_11
    return-void

    .line 7746
    :cond_12
    invoke-direct {p0}, doResolveMargins()V

    goto :goto_11
.end method

.method public setLayoutDirection(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 7709
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 7720
    :cond_5
    :goto_5
    return-void

    .line 7711
    :cond_6
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    if-eq p1, v0, :cond_5

    .line 7712
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7713
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v1, p1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7714
    invoke-virtual {p0}, isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 7715
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    goto :goto_5

    .line 7717
    :cond_29
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    goto :goto_5
.end method

.method public setMarginEnd(I)V
    .registers 3
    .param p1, "end"    # I

    .prologue
    .line 7665
    iput p1, p0, endMargin:I

    .line 7666
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7667
    return-void
.end method

.method public setMarginStart(I)V
    .registers 3
    .param p1, "start"    # I

    .prologue
    .line 7632
    iput p1, p0, startMargin:I

    .line 7633
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7634
    return-void
.end method

.method public setMargins(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 7584
    iput p1, p0, leftMargin:I

    .line 7585
    iput p2, p0, topMargin:I

    .line 7586
    iput p3, p0, rightMargin:I

    .line 7587
    iput p4, p0, bottomMargin:I

    .line 7588
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7589
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7590
    invoke-virtual {p0}, isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 7591
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7595
    :goto_23
    return-void

    .line 7593
    :cond_24
    iget-byte v0, p0, mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    goto :goto_23
.end method

.method public setMarginsRelative(IIII)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 7617
    iput p1, p0, startMargin:I

    .line 7618
    iput p2, p0, topMargin:I

    .line 7619
    iput p3, p0, endMargin:I

    .line 7620
    iput p4, p0, bottomMargin:I

    .line 7621
    iget-byte v0, p0, mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, mMarginFlags:B

    .line 7622
    return-void
.end method
