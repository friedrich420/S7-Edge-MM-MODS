.class Lcom/android/settings/IntervalSeekBar$Marker;
.super Ljava/lang/Object;
.source "IntervalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IntervalSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Marker"
.end annotation


# instance fields
.field public mMarkerX:F

.field public mStartMarkerX:F

.field public mTargetMarkerX:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/IntervalSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/IntervalSeekBar$1;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings/IntervalSeekBar$Marker;-><init>()V

    return-void
.end method
