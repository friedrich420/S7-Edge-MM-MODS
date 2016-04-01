.class Lcom/android/server/location/GpsStatusListenerHelper$2;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onStatusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->onGpsStopped()V

    .line 59
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
    .line 55
    check-cast p1, Landroid/location/IGpsStatusListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
