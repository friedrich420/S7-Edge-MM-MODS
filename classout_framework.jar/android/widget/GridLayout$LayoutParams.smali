.class public Landroid/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I = 0x6

.field private static final COLUMN:I = 0x1

.field private static final COLUMN_SPAN:I = 0x4

.field private static final COLUMN_WEIGHT:I = 0x6

.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

.field private static final DEFAULT_SPAN_SIZE:I

.field private static final DEFAULT_WIDTH:I = -0x2

.field private static final GRAVITY:I = 0x0

.field private static final LEFT_MARGIN:I = 0x3

.field private static final MARGIN:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x5

.field private static final ROW:I = 0x2

.field private static final ROW_SPAN:I = 0x3

.field private static final ROW_WEIGHT:I = 0x5

.field private static final TOP_MARGIN:I = 0x4


# instance fields
.field public columnSpec:Landroid/widget/GridLayout$Spec;

.field public rowSpec:Landroid/widget/GridLayout$Spec;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1983
    new-instance v0, Landroid/widget/GridLayout$Interval;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    sput-object v0, DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    .line 1984
    sget-object v0, DEFAULT_SPAN:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    sput v0, DEFAULT_SPAN_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 2065
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    sget-object v1, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    invoke-direct {p0, v0, v1}, <init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 2066
    return-void
.end method

.method private constructor <init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "rowSpec"    # Landroid/widget/GridLayout$Spec;
    .param p8, "columnSpec"    # Landroid/widget/GridLayout$Spec;

    .prologue
    .line 2041
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2042
    invoke-virtual {p0, p3, p4, p5, p6}, setMargins(IIII)V

    .line 2043
    iput-object p7, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2044
    iput-object p8, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2045
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2106
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2107
    invoke-direct {p0, p1, p2}, reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2108
    invoke-direct {p0, p1, p2}, init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2109
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2074
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2075
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2081
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2082
    return-void
.end method

.method public constructor <init>(Landroid/widget/GridLayout$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/widget/GridLayout$LayoutParams;

    .prologue
    .line 2091
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2019
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2033
    sget-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2093
    iget-object v0, p1, rowSpec:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2094
    iget-object v0, p1, columnSpec:Landroid/widget/GridLayout$Spec;

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2095
    return-void
.end method

.method public constructor <init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V
    .registers 12
    .param p1, "rowSpec"    # Landroid/widget/GridLayout$Spec;
    .param p2, "columnSpec"    # Landroid/widget/GridLayout$Spec;

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x80000000

    .line 2056
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, <init>(IIIIIILandroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 2059
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2138
    sget-object v8, Lcom/android/internal/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2140
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_8
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2142
    .local v4, "gravity":I
    const/4 v8, 0x1

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2143
    .local v3, "column":I
    const/4 v8, 0x4

    sget v9, DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 2144
    .local v1, "colSpan":I
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2145
    .local v2, "colWeight":F
    const/4 v8, 0x1

    invoke-static {v4, v8}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v8

    invoke-static {v3, v1, v8, v2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    iput-object v8, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2147
    const/4 v8, 0x2

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 2148
    .local v5, "row":I
    const/4 v8, 0x3

    sget v9, DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 2149
    .local v6, "rowSpan":I
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 2150
    .local v7, "rowWeight":F
    const/4 v8, 0x0

    invoke-static {v4, v8}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v8

    invoke-static {v5, v6, v8, v7}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    iput-object v8, p0, rowSpec:Landroid/widget/GridLayout$Spec;
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_4e

    .line 2152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2154
    return-void

    .line 2152
    .end local v1    # "colSpan":I
    .end local v2    # "colWeight":F
    .end local v3    # "column":I
    .end local v4    # "gravity":I
    .end local v5    # "row":I
    .end local v6    # "rowSpan":I
    .end local v7    # "rowWeight":F
    :catchall_4e
    move-exception v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v8
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2123
    sget-object v2, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2126
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    :try_start_9
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 2128
    .local v1, "margin":I
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, leftMargin:I

    .line 2129
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, topMargin:I

    .line 2130
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, rightMargin:I

    .line 2131
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, bottomMargin:I
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_2d

    .line 2133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2135
    return-void

    .line 2133
    .end local v1    # "margin":I
    :catchall_2d
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2185
    if-ne p0, p1, :cond_5

    .line 2193
    :cond_4
    :goto_4
    return v1

    .line 2186
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 2188
    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    .line 2190
    .local v0, "that":Landroid/widget/GridLayout$LayoutParams;
    iget-object v3, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    iget-object v4, v0, columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    goto :goto_4

    .line 2191
    :cond_22
    iget-object v3, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    iget-object v4, v0, rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 2198
    iget-object v1, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v1}, Landroid/widget/GridLayout$Spec;->hashCode()I

    move-result v0

    .line 2199
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v2}, Landroid/widget/GridLayout$Spec;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2200
    return v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 6
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    const/4 v1, -0x2

    .line 2171
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, width:I

    .line 2172
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, height:I

    .line 2173
    return-void
.end method

.method final setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .registers 3
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    .prologue
    .line 2180
    iget-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2181
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 2165
    iget-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2166
    iget-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/widget/GridLayout;->getAlignment(IZ)Landroid/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2167
    return-void
.end method

.method final setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V
    .registers 3
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    .prologue
    .line 2176
    iget-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Spec;->copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2177
    return-void
.end method
