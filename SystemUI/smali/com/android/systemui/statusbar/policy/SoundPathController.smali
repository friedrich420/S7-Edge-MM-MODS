.class public interface abstract Lcom/android/systemui/statusbar/policy/SoundPathController;
.super Ljava/lang/Object;
.source "SoundPathController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;,
        Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addStateChangedCallback(Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;)V
.end method

.method public abstract connect(Lcom/android/systemui/statusbar/policy/SoundPathController$SoundPathDeviceInfo;)V
.end method

.method public abstract getDevices()Ljava/util/ArrayList;
.end method
