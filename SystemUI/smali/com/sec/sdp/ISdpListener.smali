.class public interface abstract Lcom/sec/sdp/ISdpListener;
.super Ljava/lang/Object;
.source "ISdpListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sdp/ISdpListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEngineRemoved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
