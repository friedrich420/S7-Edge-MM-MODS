.class Landroid/service/carrier/CarrierService$ICarrierServiceWrapper;
.super Landroid/service/carrier/ICarrierService$Stub;
.source "CarrierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarrierServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/carrier/CarrierService;


# direct methods
.method private constructor <init>(Landroid/service/carrier/CarrierService;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, this$0:Landroid/service/carrier/CarrierService;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/carrier/CarrierService;Landroid/service/carrier/CarrierService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/carrier/CarrierService;
    .param p2, "x1"    # Landroid/service/carrier/CarrierService$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, <init>(Landroid/service/carrier/CarrierService;)V

    return-void
.end method


# virtual methods
.method public getCarrierConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "id"    # Landroid/service/carrier/CarrierIdentifier;

    .prologue
    .line 140
    iget-object v0, p0, this$0:Landroid/service/carrier/CarrierService;

    invoke-virtual {v0, p1}, Landroid/service/carrier/CarrierService;->onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method
