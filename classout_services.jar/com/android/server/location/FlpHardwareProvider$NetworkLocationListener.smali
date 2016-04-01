.class final Lcom/android/server/location/FlpHardwareProvider$NetworkLocationListener;
.super Ljava/lang/Object;
.source "FlpHardwareProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 2

    .prologue
    .line 483
    iput-object p1, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/FlpHardwareProvider;
    .param p2, "x1"    # Lcom/android/server/location/FlpHardwareProvider$1;

    .prologue
    .line 483
    invoke-direct {p0, p1}, <init>(Lcom/android/server/location/FlpHardwareProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 486
    const-string/jumbo v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_14

    .line 494
    :cond_13
    :goto_13
    return-void

    .line 493
    :cond_14
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$2100(Lcom/android/server/location/FlpHardwareProvider;Landroid/location/Location;)V

    goto :goto_13
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 503
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 500
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 497
    return-void
.end method
