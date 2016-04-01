.class public interface abstract Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
.super Ljava/lang/Object;
.source "INfcLedCoverTouchListenerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCoverTouchAccept()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCoverTouchReject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
