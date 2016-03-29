.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsChanged(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 1
    .param p1, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    # invokes: Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v0, p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->access$000(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 604
    return-void
.end method
