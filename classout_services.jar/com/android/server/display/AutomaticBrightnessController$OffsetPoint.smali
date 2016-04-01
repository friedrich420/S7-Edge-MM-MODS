.class Lcom/android/server/display/AutomaticBrightnessController$OffsetPoint;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetPoint"
.end annotation


# instance fields
.field private final BOUNDARY_RATIO:F

.field public mHighBoundary:F

.field public mLowBoundary:F

.field public mLux:F

.field public mOffset:F

.field public final mOffsetType:I

.field public final mOrgCd:F

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;FFI)V
    .registers 7
    .param p2, "lux"    # F
    .param p3, "offset"    # F
    .param p4, "offsetType"    # I

    .prologue
    const/high16 v1, 0x40200000    # 2.5f

    .line 1864
    iput-object p1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1855
    iput v1, p0, BOUNDARY_RATIO:F

    .line 1865
    monitor-enter p0

    .line 1866
    :try_start_a
    iput p2, p0, mLux:F

    .line 1867
    iput p3, p0, mOffset:F

    .line 1868
    div-float v0, p2, v1

    iput v0, p0, mLowBoundary:F

    .line 1869
    mul-float v0, p2, v1

    iput v0, p0, mHighBoundary:F

    .line 1870
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$3500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-result-object v0

    iget v1, p0, mLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getDynamicAutoBrightnessValue(F)F

    move-result v0

    iput v0, p0, mOrgCd:F

    .line 1871
    iput p4, p0, mOffsetType:I

    .line 1872
    monitor-exit p0

    .line 1873
    return-void

    .line 1872
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1876
    monitor-enter p0

    .line 1877
    const/4 v0, 0x0

    .line 1878
    .local v0, "type":Ljava/lang/String;
    :try_start_2
    iget v1, p0, mOffsetType:I

    if-nez v1, :cond_49

    const-string v0, "F"

    .line 1883
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mLux:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mOrgCd:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, mOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_5c

    const-string v1, "+"

    :goto_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 1879
    :cond_49
    iget v1, p0, mOffsetType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    const-string v0, "U"

    goto :goto_8

    .line 1880
    :cond_51
    iget v1, p0, mOffsetType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_59

    const-string v0, "S"

    goto :goto_8

    .line 1881
    :cond_59
    const-string v0, "-"

    goto :goto_8

    .line 1883
    :cond_5c
    const-string v1, ""

    goto :goto_33

    .line 1884
    :catchall_5f
    move-exception v1

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_5f

    throw v1
.end method
