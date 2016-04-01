.class Lcom/android/server/location/GpsStatusListenerHelper$5;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GpsStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$nmea:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;JLjava/lang/String;)V
    .registers 5

    .prologue
    .line 104
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iput-wide p2, p0, val$timestamp:J

    iput-object p4, p0, val$nmea:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, val$timestamp:J

    iget-object v2, p0, val$nmea:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 108
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
    .line 104
    check-cast p1, Landroid/location/IGpsStatusListener;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
