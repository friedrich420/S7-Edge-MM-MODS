.class public interface abstract Lcom/samsung/android/FrontLED/IFrontLEDManager;
.super Ljava/lang/Object;
.source "IFrontLEDManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/FrontLED/IFrontLEDManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendPowerKeyToFrontLED()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
