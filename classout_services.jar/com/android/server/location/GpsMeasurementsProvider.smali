.class public abstract Lcom/android/server/location/GpsMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsMeasurementsProvider"


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    const-string v0, "GpsMeasurementsProvider"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .registers 7
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGpsMeasurementsListener;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    packed-switch p1, :pswitch_data_28

    .line 80
    const-string v2, "GpsMeasurementsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled addListener result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1c
    :pswitch_1c
    return-object v1

    .line 67
    :pswitch_1d
    const/4 v0, 0x1

    .line 83
    .local v0, "status":I
    :goto_1e
    new-instance v1, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    goto :goto_1c

    .line 72
    .end local v0    # "status":I
    :pswitch_24
    const/4 v0, 0x0

    .line 73
    .restart local v0    # "status":I
    goto :goto_1e

    .line 75
    .end local v0    # "status":I
    :pswitch_26
    const/4 v0, 0x2

    .line 76
    .restart local v0    # "status":I
    goto :goto_1e

    .line 65
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_24
        :pswitch_24
        :pswitch_26
        :pswitch_24
        :pswitch_1c
    .end packed-switch
.end method

.method public onCapabilitiesUpdated(Z)V
    .registers 2
    .param p1, "isGpsMeasurementsSupported"    # Z

    .prologue
    .line 52
    invoke-virtual {p0, p1}, setSupported(Z)V

    .line 53
    invoke-virtual {p0}, updateResult()V

    .line 54
    return-void
.end method

.method public onGpsEnabledChanged()V
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, tryUpdateRegistrationWithService()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    invoke-virtual {p0}, updateResult()V

    .line 60
    :cond_9
    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 41
    new-instance v0, Lcom/android/server/location/GpsMeasurementsProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$1;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;Landroid/location/GpsMeasurementsEvent;)V

    .line 48
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<Landroid/location/IGpsMeasurementsListener;>;"
    invoke-virtual {p0, v0}, foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 49
    return-void
.end method
