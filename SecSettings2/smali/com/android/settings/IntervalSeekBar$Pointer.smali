.class Lcom/android/settings/IntervalSeekBar$Pointer;
.super Ljava/lang/Object;
.source "IntervalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IntervalSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pointer"
.end annotation


# instance fields
.field public mPointerX:F

.field public mStartPointerX:F

.field public mTargetPointerX:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/IntervalSeekBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/IntervalSeekBar$1;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/IntervalSeekBar$Pointer;-><init>()V

    return-void
.end method
