.class Lcom/android/server/location/GpsLocationProvider$6;
.super Lcom/android/server/location/GpsNavigationMessageProvider;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 755
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsNavigationMessageProvider;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected isAvailableInPlatform()Z
    .registers 2

    .prologue
    .line 758
    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$1500()Z

    move-result v0

    return v0
.end method

.method protected isGpsEnabled()Z
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected registerWithService()Z
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromService()V
    .registers 2

    .prologue
    .line 768
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;)Z

    .line 769
    return-void
.end method
