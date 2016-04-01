.class final Lcom/android/server/location/GpsLocationProvider_samsung$ExerciseListener;
.super Ljava/lang/Object;
.source "GpsLocationProvider_samsung.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExerciseListener"
.end annotation


# instance fields
.field final mListener:Landroid/location/IExerciseLocationListener;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider_samsung;Landroid/location/IExerciseLocationListener;)V
    .registers 3
    .param p2, "listener"    # Landroid/location/IExerciseLocationListener;

    .prologue
    .line 1787
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1788
    iput-object p2, p0, mListener:Landroid/location/IExerciseLocationListener;

    .line 1789
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 1793
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 1794
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mExerciseLocationListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1795
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    .line 1796
    iget-object v0, p0, mListener:Landroid/location/IExerciseLocationListener;

    if-eqz v0, :cond_1f

    .line 1797
    iget-object v0, p0, mListener:Landroid/location/IExerciseLocationListener;

    invoke-interface {v0}, Landroid/location/IExerciseLocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1799
    :cond_1f
    return-void

    .line 1795
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
