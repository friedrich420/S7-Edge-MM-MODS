.class Lcom/android/server/location/GpsLocationProvider$1;
.super Landroid/location/IGpsStatusProvider$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
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
    .line 430
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 433
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsStatusListenerHelper;->addListener(Landroid/os/IInterface;)Z

    .line 434
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;

    .prologue
    .line 438
    iget-object v0, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsStatusListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 439
    return-void
.end method
