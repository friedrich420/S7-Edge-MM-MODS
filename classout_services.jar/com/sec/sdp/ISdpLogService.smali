.class public interface abstract Lcom/sec/sdp/ISdpLogService;
.super Ljava/lang/Object;
.source "ISdpLogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sdp/ISdpLogService$Stub;
    }
.end annotation


# virtual methods
.method public abstract enqPayload(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
