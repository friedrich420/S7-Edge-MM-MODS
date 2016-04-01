.class public interface abstract Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback;
.super Ljava/lang/Object;
.source "IMultiWindowStyleChangedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/impl/IMultiWindowStyleChangedCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMultiWindowStyleChanged(Landroid/content/ComponentName;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
