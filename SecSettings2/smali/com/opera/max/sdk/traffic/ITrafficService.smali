.class public interface abstract Lcom/opera/max/sdk/traffic/ITrafficService;
.super Ljava/lang/Object;
.source "ITrafficService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opera/max/sdk/traffic/ITrafficService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getTrafficForUid(Ljava/lang/String;IJJJZ)[Lcom/opera/max/sdk/traffic/TrafficEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTrafficSummaryByUid(Ljava/lang/String;IJJZ)Lcom/opera/max/sdk/traffic/TrafficEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTrafficSummaryForAllUids(Ljava/lang/String;JJZ)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setImsi(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
