.class public interface abstract Lcom/android/systemui/statusbar/policy/ApMirroringController;
.super Ljava/lang/Object;
.source "ApMirroringController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addStateChangedCallback(Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;)V
.end method

.method public abstract getDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDrawable()I
.end method

.method public abstract isApMirroringConnected()Z
.end method
