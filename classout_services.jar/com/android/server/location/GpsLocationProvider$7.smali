.class Lcom/android/server/location/GpsLocationProvider$7;
.super Landroid/telephony/PhoneStateListener;
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
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    .prologue
    .line 779
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 3
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 782
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mCellLocation:Landroid/telephony/CellLocation;
    invoke-static {v0, p1}, Lcom/android/server/location/GpsLocationProvider;->access$1802(Lcom/android/server/location/GpsLocationProvider;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;

    .line 783
    return-void
.end method
