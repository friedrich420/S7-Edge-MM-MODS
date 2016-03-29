.class Lcom/android/settings/fuelgauge/BatterySaverSettings$3$1;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatterySaverSettings$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverSettings$3;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3$1;->this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    # getter for: Lcom/android/settings/fuelgauge/BatterySaverSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BatterySaverSettings"

    const-string v1, "Starting low power mode from settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3$1;->this$1:Lcom/android/settings/fuelgauge/BatterySaverSettings$3;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySaverSettings$3;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/fuelgauge/BatterySaverSettings;->trySetPowerSaveMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->access$300(Lcom/android/settings/fuelgauge/BatterySaverSettings;Z)V

    .line 179
    return-void
.end method
