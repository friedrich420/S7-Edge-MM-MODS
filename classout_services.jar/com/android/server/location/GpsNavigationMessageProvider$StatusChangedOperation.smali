.class Lcom/android/server/location/GpsNavigationMessageProvider$StatusChangedOperation;
.super Ljava/lang/Object;
.source "GpsNavigationMessageProvider.java"

# interfaces
.implements Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsNavigationMessageProvider;
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
        "Landroid/location/IGpsNavigationMessageListener;",
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, mStatus:I

    .line 93
    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsNavigationMessageListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsNavigationMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget v0, p0, mStatus:I

    invoke-interface {p1, v0}, Landroid/location/IGpsNavigationMessageListener;->onStatusChanged(I)V

    .line 98
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
    .line 87
    check-cast p1, Landroid/location/IGpsNavigationMessageListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, execute(Landroid/location/IGpsNavigationMessageListener;)V

    return-void
.end method
