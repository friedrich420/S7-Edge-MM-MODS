.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;

    # getter for: Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->mTarget:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;->access$400(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$ClearCacheObserver;)Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->update()V

    .line 912
    return-void
.end method
