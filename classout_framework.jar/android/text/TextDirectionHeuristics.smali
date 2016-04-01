.class public Landroid/text/TextDirectionHeuristics;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextDirectionHeuristics$1;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;,
        Landroid/text/TextDirectionHeuristics$AnyStrong;,
        Landroid/text/TextDirectionHeuristics$FirstStrong;,
        Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

.field public static final LOCALE:Landroid/text/TextDirectionHeuristic;

.field public static final LTR:Landroid/text/TextDirectionHeuristic;

.field public static final RTL:Landroid/text/TextDirectionHeuristic;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 40
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, LTR:Landroid/text/TextDirectionHeuristic;

    .line 46
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    invoke-direct {v0, v2, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, RTL:Landroid/text/TextDirectionHeuristic;

    .line 54
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 62
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v1, v4, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 69
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v1, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 75
    sget-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    sput-object v0, LOCALE:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method static synthetic access$100(I)I
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 35
    invoke-static {p0}, isRtlCodePoint(I)I

    move-result v0

    return v0
.end method

.method private static isRtlCodePoint(I)I
    .registers 6
    .param p0, "codePoint"    # I

    .prologue
    const v4, 0xfffe

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    packed-switch v3, :pswitch_data_8a

    move v0, v2

    .line 126
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    :pswitch_f
    move v0, v1

    .line 93
    goto :goto_e

    .line 98
    :pswitch_11
    const/16 v3, 0x590

    if-gt v3, p0, :cond_19

    const/16 v3, 0x8ff

    if-le p0, v3, :cond_4b

    :cond_19
    const v3, 0xfb1d

    if-gt v3, p0, :cond_23

    const v3, 0xfdcf

    if-le p0, v3, :cond_4b

    :cond_23
    const v3, 0xfdf0

    if-gt v3, p0, :cond_2d

    const v3, 0xfdff

    if-le p0, v3, :cond_4b

    :cond_2d
    const v3, 0xfe70

    if-gt v3, p0, :cond_37

    const v3, 0xfeff

    if-le p0, v3, :cond_4b

    :cond_37
    const v3, 0x10800

    if-gt v3, p0, :cond_41

    const v3, 0x10fff

    if-le p0, v3, :cond_4b

    :cond_41
    const v3, 0x1e800

    if-gt v3, p0, :cond_4d

    const v3, 0x1efff

    if-gt p0, v3, :cond_4d

    :cond_4b
    move v0, v1

    .line 105
    goto :goto_e

    .line 106
    :cond_4d
    const/16 v1, 0x2065

    if-gt v1, p0, :cond_55

    const/16 v1, 0x2069

    if-le p0, v1, :cond_88

    :cond_55
    const v1, 0xfff0

    if-gt v1, p0, :cond_5f

    const v1, 0xfff8

    if-le p0, v1, :cond_88

    :cond_5f
    const/high16 v1, 0xe0000

    if-gt v1, p0, :cond_68

    const v1, 0xe0fff

    if-le p0, v1, :cond_88

    :cond_68
    const v1, 0xfdd0

    if-gt v1, p0, :cond_72

    const v1, 0xfdef

    if-le p0, v1, :cond_88

    :cond_72
    and-int v1, p0, v4

    if-eq v1, v4, :cond_88

    const/16 v1, 0x20a0

    if-gt v1, p0, :cond_7e

    const/16 v1, 0x20cf

    if-le p0, v1, :cond_88

    :cond_7e
    const v1, 0xd800

    if-gt v1, p0, :cond_e

    const v1, 0xdfff

    if-gt p0, v1, :cond_e

    :cond_88
    move v0, v2

    .line 120
    goto :goto_e

    .line 88
    :pswitch_data_8a
    .packed-switch -0x1
        :pswitch_11
        :pswitch_e
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
