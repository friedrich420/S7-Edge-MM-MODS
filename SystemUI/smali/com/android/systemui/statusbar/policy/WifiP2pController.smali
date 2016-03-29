.class public interface abstract Lcom/android/systemui/statusbar/policy/WifiP2pController;
.super Ljava/lang/Object;
.source "WifiP2pController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addStateChangedCallback(Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;)V
.end method

.method public abstract getDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDrawable(Landroid/net/wifi/p2p/WifiP2pDevice;)I
.end method

.method public abstract isWifiP2pConnected()Z
.end method
