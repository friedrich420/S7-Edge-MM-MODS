.class public interface abstract Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
.super Ljava/lang/Object;
.source "DataSavingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datasaving/DataSavingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SavingServiceConnectionListener"
.end annotation


# virtual methods
.method public abstract onConnected(Lcom/opera/max/sdk/saving/ISavingService;)V
.end method

.method public abstract onDisconnected()V
.end method
