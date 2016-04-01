.class public interface abstract Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
.super Ljava/lang/Object;
.source "IUcmPinpadService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService$Stub;
    }
.end annotation


# virtual methods
.method public abstract authenticatePin(Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract configureUcsPin()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
