.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final COLOR_NONE_OPAQUE:I = 0xff

.field public static final COLOR_UNSPECIFIED:I = 0xffffff

.field public static final DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private final mHasBackgroundColor:Z

.field private final mHasEdgeColor:Z

.field private final mHasEdgeType:Z

.field private final mHasForegroundColor:Z

.field private final mHasWindowColor:Z

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const v14, 0xffffff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x1000000

    .line 502
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v1, -0x1

    move v4, v2

    invoke-direct/range {v0 .. v6}, <init>(IIIIILjava/lang/String;)V

    sput-object v0, WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 504
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v9, -0x1

    move v8, v2

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, <init>(IIIIILjava/lang/String;)V

    sput-object v7, BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 506
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v1, -0x100

    move v4, v2

    invoke-direct/range {v0 .. v6}, <init>(IIIIILjava/lang/String;)V

    sput-object v0, YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 508
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v8, -0x100

    const v9, -0xffff01

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, <init>(IIIIILjava/lang/String;)V

    sput-object v7, YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 510
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v10, -0x1

    move v8, v14

    move v9, v14

    move v11, v14

    move v12, v14

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, <init>(IIIIILjava/lang/String;)V

    sput-object v7, UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 515
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v1, WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v2, v0, v1

    sput-object v0, PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 519
    sget-object v0, WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 520
    sget-object v0, WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 521
    return-void
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .registers 11
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeType"    # I
    .param p4, "edgeColor"    # I
    .param p5, "windowColor"    # I
    .param p6, "rawTypeface"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-static {p1}, hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, mHasForegroundColor:Z

    .line 362
    invoke-static {p2}, hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, mHasBackgroundColor:Z

    .line 363
    if-eq p3, v2, :cond_45

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, mHasEdgeType:Z

    .line 364
    invoke-static {p4}, hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, mHasEdgeColor:Z

    .line 365
    invoke-static {p5}, hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, mHasWindowColor:Z

    .line 369
    iget-boolean v0, p0, mHasForegroundColor:Z

    if-eqz v0, :cond_47

    .end local p1    # "foregroundColor":I
    :goto_28
    iput p1, p0, foregroundColor:I

    .line 370
    iget-boolean v0, p0, mHasBackgroundColor:Z

    if-eqz v0, :cond_49

    .end local p2    # "backgroundColor":I
    :goto_2e
    iput p2, p0, backgroundColor:I

    .line 371
    iget-boolean v0, p0, mHasEdgeType:Z

    if-eqz v0, :cond_4b

    .end local p3    # "edgeType":I
    :goto_34
    iput p3, p0, edgeType:I

    .line 372
    iget-boolean v0, p0, mHasEdgeColor:Z

    if-eqz v0, :cond_4d

    .end local p4    # "edgeColor":I
    :goto_3a
    iput p4, p0, edgeColor:I

    .line 373
    iget-boolean v0, p0, mHasWindowColor:Z

    if-eqz v0, :cond_4f

    .end local p5    # "windowColor":I
    :goto_40
    iput p5, p0, windowColor:I

    .line 375
    iput-object p6, p0, mRawTypeface:Ljava/lang/String;

    .line 376
    return-void

    .restart local p1    # "foregroundColor":I
    .restart local p2    # "backgroundColor":I
    .restart local p3    # "edgeType":I
    .restart local p4    # "edgeColor":I
    .restart local p5    # "windowColor":I
    :cond_45
    move v0, v1

    .line 363
    goto :goto_16

    :cond_47
    move p1, v2

    .line 369
    goto :goto_28

    .end local p1    # "foregroundColor":I
    :cond_49
    move p2, v3

    .line 370
    goto :goto_2e

    .end local p2    # "backgroundColor":I
    :cond_4b
    move p3, v1

    .line 371
    goto :goto_34

    .end local p3    # "edgeType":I
    :cond_4d
    move p4, v3

    .line 372
    goto :goto_3a

    .line 373
    .end local p4    # "edgeColor":I
    :cond_4f
    const/16 p5, 0xff

    goto :goto_40
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 480
    sget-object v7, DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 481
    .local v7, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string v0, "accessibility_captioning_foreground_color"

    iget v8, v7, foregroundColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 483
    .local v1, "foregroundColor":I
    const-string v0, "accessibility_captioning_background_color"

    iget v8, v7, backgroundColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 485
    .local v2, "backgroundColor":I
    const-string v0, "accessibility_captioning_edge_type"

    iget v8, v7, edgeType:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 487
    .local v3, "edgeType":I
    const-string v0, "accessibility_captioning_edge_color"

    iget v8, v7, edgeColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 489
    .local v4, "edgeColor":I
    const-string v0, "accessibility_captioning_window_color"

    iget v8, v7, windowColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 492
    .local v5, "windowColor":I
    const-string v0, "accessibility_captioning_typeface"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "rawTypeface":Ljava/lang/String;
    if-nez v6, :cond_34

    .line 494
    iget-object v6, v7, mRawTypeface:Ljava/lang/String;

    .line 497
    :cond_34
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, <init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method public static hasColor(I)Z
    .registers 2
    .param p0, "packedColor"    # I

    .prologue
    .line 389
    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_a

    const v0, 0xffff00

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 9
    .param p1, "overlay"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 402
    invoke-virtual {p1}, hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_34

    iget v1, p1, foregroundColor:I

    .line 404
    .local v1, "newForegroundColor":I
    :goto_8
    invoke-virtual {p1}, hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v2, p1, backgroundColor:I

    .line 406
    .local v2, "newBackgroundColor":I
    :goto_10
    invoke-virtual {p1}, hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget v3, p1, edgeType:I

    .line 408
    .local v3, "newEdgeType":I
    :goto_18
    invoke-virtual {p1}, hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v4, p1, edgeColor:I

    .line 410
    .local v4, "newEdgeColor":I
    :goto_20
    invoke-virtual {p1}, hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_40

    iget v5, p1, windowColor:I

    .line 412
    .local v5, "newWindowColor":I
    :goto_28
    iget-object v0, p1, mRawTypeface:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v6, p1, mRawTypeface:Ljava/lang/String;

    .line 414
    .local v6, "newRawTypeface":Ljava/lang/String;
    :goto_2e
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, <init>(IIIIILjava/lang/String;)V

    return-object v0

    .line 402
    .end local v1    # "newForegroundColor":I
    .end local v2    # "newBackgroundColor":I
    .end local v3    # "newEdgeType":I
    .end local v4    # "newEdgeColor":I
    .end local v5    # "newWindowColor":I
    .end local v6    # "newRawTypeface":Ljava/lang/String;
    :cond_34
    iget v1, p0, foregroundColor:I

    goto :goto_8

    .line 404
    .restart local v1    # "newForegroundColor":I
    :cond_37
    iget v2, p0, backgroundColor:I

    goto :goto_10

    .line 406
    .restart local v2    # "newBackgroundColor":I
    :cond_3a
    iget v3, p0, edgeType:I

    goto :goto_18

    .line 408
    .restart local v3    # "newEdgeType":I
    :cond_3d
    iget v4, p0, edgeColor:I

    goto :goto_20

    .line 410
    .restart local v4    # "newEdgeColor":I
    :cond_40
    iget v5, p0, windowColor:I

    goto :goto_28

    .line 412
    .restart local v5    # "newWindowColor":I
    :cond_43
    iget-object v6, p0, mRawTypeface:Ljava/lang/String;

    goto :goto_2e
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 3

    .prologue
    .line 469
    iget-object v0, p0, mParsedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_15

    iget-object v0, p0, mRawTypeface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 470
    iget-object v0, p0, mRawTypeface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, mParsedTypeface:Landroid/graphics/Typeface;

    .line 472
    :cond_15
    iget-object v0, p0, mParsedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    .prologue
    .line 424
    iget-boolean v0, p0, mHasBackgroundColor:Z

    return v0
.end method

.method public hasEdgeColor()Z
    .registers 2

    .prologue
    .line 451
    iget-boolean v0, p0, mHasEdgeColor:Z

    return v0
.end method

.method public hasEdgeType()Z
    .registers 2

    .prologue
    .line 442
    iget-boolean v0, p0, mHasEdgeType:Z

    return v0
.end method

.method public hasForegroundColor()Z
    .registers 2

    .prologue
    .line 433
    iget-boolean v0, p0, mHasForegroundColor:Z

    return v0
.end method

.method public hasWindowColor()Z
    .registers 2

    .prologue
    .line 460
    iget-boolean v0, p0, mHasWindowColor:Z

    return v0
.end method
