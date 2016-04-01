.class Landroid/view/ScaleGestureDetector$SaveState;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveState"
.end annotation


# instance fields
.field mLenBeforeSqrt:F

.field mSpanX:F

.field mSpanY:F

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p0}, reset()V

    .line 188
    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 191
    iput v0, p0, maxY:F

    iput v0, p0, maxX:F

    iput v0, p0, minY:F

    iput v0, p0, minX:F

    .line 192
    iput v0, p0, mLenBeforeSqrt:F

    .line 193
    iput v0, p0, mSpanX:F

    .line 194
    iput v0, p0, mSpanY:F

    .line 195
    return-void
.end method
