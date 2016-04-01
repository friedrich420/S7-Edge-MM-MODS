.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, classType:Ljava/lang/Class;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, numberOfSpans:I

    .line 43
    return-void
.end method


# virtual methods
.method getNextTransition(II)I
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 101
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, numberOfSpans:I

    if-ge v0, v3, :cond_1a

    .line 102
    iget-object v3, p0, spanStarts:[I

    aget v2, v3, v0

    .line 103
    .local v2, "spanStart":I
    iget-object v3, p0, spanEnds:[I

    aget v1, v3, v0

    .line 104
    .local v1, "spanEnd":I
    if-le v2, p1, :cond_12

    if-ge v2, p2, :cond_12

    move p2, v2

    .line 105
    :cond_12
    if-le v1, p1, :cond_17

    if-ge v1, p2, :cond_17

    move p2, v1

    .line 101
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "spanEnd":I
    .end local v2    # "spanStart":I
    :cond_1a
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 89
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, numberOfSpans:I

    if-ge v0, v1, :cond_16

    .line 91
    iget-object v1, p0, spanStarts:[I

    aget v1, v1, v0

    if-ge v1, p2, :cond_11

    iget-object v1, p0, spanEnds:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_14

    .line 89
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_14
    const/4 v1, 0x1

    .line 94
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public init(Landroid/text/Spanned;II)V
    .registers 15
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .prologue
    .line 47
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v8, p0, classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "allSpans":[Ljava/lang/Object;, "[TE;"
    array-length v2, v0

    .line 50
    .local v2, "length":I
    if-lez v2, :cond_2a

    iget-object v8, p0, spans:[Ljava/lang/Object;

    if-eqz v8, :cond_12

    iget-object v8, p0, spans:[Ljava/lang/Object;

    array-length v8, v8

    if-ge v8, v2, :cond_2a

    .line 52
    :cond_12
    iget-object v8, p0, classType:Ljava/lang/Class;

    invoke-static {v8, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    iput-object v8, p0, spans:[Ljava/lang/Object;

    .line 53
    new-array v8, v2, [I

    iput-object v8, p0, spanStarts:[I

    .line 54
    new-array v8, v2, [I

    iput-object v8, p0, spanEnds:[I

    .line 55
    new-array v8, v2, [I

    iput-object v8, p0, spanFlags:[I

    .line 58
    :cond_2a
    iget v3, p0, numberOfSpans:I

    .line 59
    .local v3, "prevNumberOfSpans":I
    const/4 v8, 0x0

    iput v8, p0, numberOfSpans:I

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    if-ge v1, v2, :cond_64

    .line 61
    aget-object v4, v0, v1

    .line 63
    .local v4, "span":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 64
    .local v7, "spanStart":I
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 65
    .local v5, "spanEnd":I
    if-ne v7, v5, :cond_41

    .line 60
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 67
    :cond_41
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 69
    .local v6, "spanFlag":I
    iget-object v8, p0, spans:[Ljava/lang/Object;

    iget v9, p0, numberOfSpans:I

    aput-object v4, v8, v9

    .line 70
    iget-object v8, p0, spanStarts:[I

    iget v9, p0, numberOfSpans:I

    aput v7, v8, v9

    .line 71
    iget-object v8, p0, spanEnds:[I

    iget v9, p0, numberOfSpans:I

    aput v5, v8, v9

    .line 72
    iget-object v8, p0, spanFlags:[I

    iget v9, p0, numberOfSpans:I

    aput v6, v8, v9

    .line 74
    iget v8, p0, numberOfSpans:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, numberOfSpans:I

    goto :goto_3e

    .line 78
    .end local v4    # "span":Ljava/lang/Object;, "TE;"
    .end local v5    # "spanEnd":I
    .end local v6    # "spanFlag":I
    .end local v7    # "spanStart":I
    :cond_64
    iget v8, p0, numberOfSpans:I

    if-ge v8, v3, :cond_70

    .line 80
    iget-object v8, p0, spans:[Ljava/lang/Object;

    iget v9, p0, numberOfSpans:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 82
    :cond_70
    return-void
.end method

.method public recycle()V
    .registers 5

    .prologue
    .line 114
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v0, p0, spans:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 115
    iget-object v0, p0, spans:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, numberOfSpans:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 117
    :cond_d
    return-void
.end method
