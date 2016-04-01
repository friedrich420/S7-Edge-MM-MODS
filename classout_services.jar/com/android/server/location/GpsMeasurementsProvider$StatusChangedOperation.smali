.class Lcom/android/server/location/GpsMeasurementsProvider$StatusChangedOperation;
.super Ljava/lang/Object;
.source "GpsMeasurementsProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsMeasurementsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusChangedOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStatus:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, mStatus:I

    .line 92
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsMeasurementsListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget v0, p0, mStatus:I

    invoke-interface {p1, v0}, Landroid/location/IGpsMeasurementsListener;->onStatusChanged(I)V

    .line 97
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    check-cast p1, Landroid/location/IGpsMeasurementsListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, execute(Landroid/location/IGpsMeasurementsListener;)V

    return-void
.end method
