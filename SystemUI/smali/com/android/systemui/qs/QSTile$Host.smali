.class public interface abstract Lcom/android/systemui/qs/QSTile$Host;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTile$Host$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapsePanels()V
.end method

.method public abstract getApMirroringController()Lcom/android/systemui/statusbar/policy/ApMirroringController;
.end method

.method public abstract getBluetoothController()Lcom/android/systemui/statusbar/policy/BluetoothController;
.end method

.method public abstract getCastController()Lcom/android/systemui/statusbar/policy/CastController;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFlashlightController()Lcom/android/systemui/statusbar/policy/FlashlightController;
.end method

.method public abstract getHotspotController()Lcom/android/systemui/statusbar/policy/HotspotController;
.end method

.method public abstract getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
.end method

.method public abstract getLocationController()Lcom/android/systemui/statusbar/policy/LocationController;
.end method

.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
.end method

.method public abstract getRotationLockController()Lcom/android/systemui/statusbar/policy/RotationLockController;
.end method

.method public abstract getSoundPathController()Lcom/android/systemui/statusbar/policy/SoundPathController;
.end method

.method public abstract getTiles()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract getWifiP2pController()Lcom/android/systemui/statusbar/policy/WifiP2pController;
.end method

.method public abstract getZenModeController()Lcom/android/systemui/statusbar/policy/ZenModeController;
.end method

.method public abstract onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public abstract setCallback(Lcom/android/systemui/qs/QSTile$Host$Callback;)V
.end method

.method public abstract startActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
.end method

.method public abstract startActivityDismissingKeyguard(Landroid/content/Intent;)V
.end method

.method public abstract warn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
