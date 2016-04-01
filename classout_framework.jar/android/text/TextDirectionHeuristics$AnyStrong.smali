.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 281
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, <init>(Z)V

    sput-object v0, INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 282
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, <init>(Z)V

    sput-object v0, INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2
    .param p1, "lookForRtl"    # Z

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-boolean p1, p0, mLookForRtl:Z

    .line 279
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .registers 12
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, "haveUnlookedFor":Z
    const/4 v4, 0x0

    .line 245
    .local v4, "openIsolateCount":I
    move v3, p2

    .local v3, "i":I
    add-int v1, p2, p3

    .local v1, "end":I
    :goto_7
    if-ge v3, v1, :cond_3e

    .line 246
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 247
    .local v0, "cp":I
    const/16 v7, 0x2066

    if-gt v7, v0, :cond_1d

    const/16 v7, 0x2068

    if-gt v0, v7, :cond_1d

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 245
    :cond_17
    :goto_17
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_7

    .line 249
    :cond_1d
    const/16 v7, 0x2069

    if-ne v0, v7, :cond_26

    .line 250
    if-lez v4, :cond_17

    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    .line 251
    :cond_26
    if-nez v4, :cond_17

    .line 253
    # invokes: Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I
    invoke-static {v0}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    move-result v7

    packed-switch v7, :pswitch_data_48

    goto :goto_17

    .line 255
    :pswitch_30
    iget-boolean v7, p0, mLookForRtl:Z

    if-eqz v7, :cond_36

    move v5, v6

    .line 274
    .end local v0    # "cp":I
    :cond_35
    :goto_35
    return v5

    .line 258
    .restart local v0    # "cp":I
    :cond_36
    const/4 v2, 0x1

    .line 259
    goto :goto_17

    .line 261
    :pswitch_38
    iget-boolean v7, p0, mLookForRtl:Z

    if-eqz v7, :cond_35

    .line 264
    const/4 v2, 0x1

    .line 265
    goto :goto_17

    .line 271
    .end local v0    # "cp":I
    :cond_3e
    if-eqz v2, :cond_46

    .line 272
    iget-boolean v7, p0, mLookForRtl:Z

    if-nez v7, :cond_35

    move v5, v6

    goto :goto_35

    .line 274
    :cond_46
    const/4 v5, 0x2

    goto :goto_35

    .line 253
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method
