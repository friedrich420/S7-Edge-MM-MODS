.class abstract Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TextDirectionHeuristicImpl"
.end annotation


# instance fields
.field private final mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# direct methods
.method public constructor <init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V
    .registers 2
    .param p1, "algorithm"    # Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    .line 140
    return-void
.end method

.method private doCheck(Ljava/lang/CharSequence;II)Z
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 164
    iget-object v0, p0, mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;->checkRtl(Ljava/lang/CharSequence;II)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 170
    invoke-virtual {p0}, defaultIsRtl()Z

    move-result v0

    :goto_d
    return v0

    .line 166
    :pswitch_e
    const/4 v0, 0x1

    goto :goto_d

    .line 168
    :pswitch_10
    const/4 v0, 0x0

    goto :goto_d

    .line 164
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method protected abstract defaultIsRtl()Z
.end method

.method public isRtl(Ljava/lang/CharSequence;II)Z
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 154
    if-eqz p1, :cond_d

    if-ltz p2, :cond_d

    if-ltz p3, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-ge v0, p2, :cond_13

    .line 155
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 157
    :cond_13
    iget-object v0, p0, mAlgorithm:Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;

    if-nez v0, :cond_1c

    .line 158
    invoke-virtual {p0}, defaultIsRtl()Z

    move-result v0

    .line 160
    :goto_1b
    return v0

    :cond_1c
    invoke-direct {p0, p1, p2, p3}, doCheck(Ljava/lang/CharSequence;II)Z

    move-result v0

    goto :goto_1b
.end method

.method public isRtl([CII)Z
    .registers 5
    .param p1, "array"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 149
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method
