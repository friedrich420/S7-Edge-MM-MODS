.class Landroid/util/PathParser$ExtractFloatResult;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractFloatResult"
.end annotation


# instance fields
.field mEndPosition:I

.field mEndWithNegOrDot:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/PathParser$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/util/PathParser$1;

    .prologue
    .line 152
    invoke-direct {p0}, <init>()V

    return-void
.end method