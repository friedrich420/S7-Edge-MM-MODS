.class public interface abstract Lcom/android/keyguard/effect/IWallpaperFdService;
.super Ljava/lang/Object;
.source "IWallpaperFdService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/effect/IWallpaperFdService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getFd(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
