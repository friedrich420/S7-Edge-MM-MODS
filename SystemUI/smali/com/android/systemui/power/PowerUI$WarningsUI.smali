.class public interface abstract Lcom/android/systemui/power/PowerUI$WarningsUI;
.super Ljava/lang/Object;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WarningsUI"
.end annotation


# virtual methods
.method public abstract dismissChargingInterruptionWarning()V
.end method

.method public abstract dismissChargingNotice()V
.end method

.method public abstract dismissFullBatteryNotice()V
.end method

.method public abstract dismissIncompatibleChargerNotice()V
.end method

.method public abstract dismissInvalidChargerWarning()V
.end method

.method public abstract dismissLowBatteryWarning()V
.end method

.method public abstract dismissOverheatWarning()V
.end method

.method public abstract dismissWillOverheatShutdownWarning()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract isInvalidChargerWarningShowing()Z
.end method

.method public abstract isLowBatteryWarningShowing()Z
.end method

.method public abstract playSound(I)V
.end method

.method public abstract runOverheatShutdownTask(I)V
.end method

.method public abstract setDeviceType(I)V
.end method

.method public abstract showChargingInterruptionWarning()V
.end method

.method public abstract showChargingNotice(ZI)V
.end method

.method public abstract showChargingTypeSwitchedNotice(Z)V
.end method

.method public abstract showFullBatteryNotice()V
.end method

.method public abstract showIncompatibleChargerNotice()V
.end method

.method public abstract showInvalidChargerWarning()V
.end method

.method public abstract showLowBatteryWarning(Z)V
.end method

.method public abstract showOverheatShutdownedNotice()V
.end method

.method public abstract showOverheatWarning(I)V
.end method

.method public abstract showSafeModeNotice()V
.end method

.method public abstract showSaverMode(Z)V
.end method

.method public abstract showWillOverheatShutdownWarning()V
.end method

.method public abstract showWirelessChargerDisconnectNotice()V
.end method

.method public abstract showWirelessChargerInfoNotice()V
.end method

.method public abstract turnOnScreen()V
.end method

.method public abstract update(IIJII)V
.end method

.method public abstract updateLowBatteryWarning()V
.end method

.method public abstract userSwitched()V
.end method
