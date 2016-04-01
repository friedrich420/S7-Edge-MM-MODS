.class public abstract Landroid/service/carrier/CarrierService;
.super Landroid/app/Service;
.source "CarrierService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierService$1;,
        Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
    }
.end annotation


# static fields
.field public static final CARRIER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.carrier.CarrierService"

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;-><init>(Landroid/service/carrier/CarrierService;Landroid/service/carrier/CarrierService$1;)V

    iput-object v0, p0, mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;

    .line 59
    sget-object v0, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v0, :cond_1c

    .line 60
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    sput-object v0, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 63
    :cond_1c
    return-void
.end method


# virtual methods
.method public final notifyCarrierNetworkChange(Z)V
    .registers 3
    .param p1, "active"    # Z

    .prologue
    .line 119
    :try_start_0
    sget-object v0, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v0, :cond_9

    sget-object v0, sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCarrierNetworkChange(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_c

    .line 121
    :cond_9
    :goto_9
    return-void

    .line 120
    :catch_a
    move-exception v0

    goto :goto_9

    :catch_c
    move-exception v0

    goto :goto_9
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 130
    iget-object v0, p0, mStubWrapper:Landroid/service/carrier/ICarrierService$Stub;

    return-object v0
.end method

.method public abstract onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
.end method
