.class public interface abstract Landroid/service/iccc/IIcccManager;
.super Ljava/lang/Object;
.source "IIcccManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/iccc/IIcccManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract Iccc_ReadData_Platform(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract Iccc_SaveData_Platform(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract TimaSetLicenseStatusJNI()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
