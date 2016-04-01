.class Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 2

    .prologue
    .line 632
    iput-object p1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 658
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    .line 635
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-nez v0, :cond_3f

    .line 636
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getRgbFromLightSensor()V
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    .line 637
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 638
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v1

    .line 639
    .local v1, "r":I
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v2

    .line 640
    .local v2, "g":I
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v3

    .line 641
    .local v3, "b":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v0, v0, v6

    float-to-int v4, v0

    .line 642
    .local v4, "lux":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v0, v0, v6

    float-to-int v5, v0

    .line 644
    .local v5, "cct":I
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;IIIII)V

    .line 646
    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v4    # "lux":I
    .end local v5    # "cct":I
    :cond_39
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    .line 654
    :goto_3e
    return-void

    .line 648
    :cond_3f
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-gt v0, v7, :cond_55

    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-lez v0, :cond_55

    .line 649
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # operator-- for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1110(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    goto :goto_3e

    .line 652
    :cond_55
    iget-object v0, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    goto :goto_3e
.end method
