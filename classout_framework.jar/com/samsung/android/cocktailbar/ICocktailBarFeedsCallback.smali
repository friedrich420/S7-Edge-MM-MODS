.class public interface abstract Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback;
.super Ljava/lang/Object;
.source "ICocktailBarFeedsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarFeedsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFeedsUpdated(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
