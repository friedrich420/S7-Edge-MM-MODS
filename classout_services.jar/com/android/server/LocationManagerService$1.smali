.class Lcom/android/server/LocationManagerService$1;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 284
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "vendor":Ljava/lang/String;
    const-string v2, "CHN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "CHC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "CHU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 287
    :cond_2f
    const v0, 0x1070029

    .line 288
    .local v0, "id_config_locationProviderPackageNames":I
    const-string v2, "CHM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 289
    const v0, 0x1070082

    .line 293
    :goto_3d
    iget-object v2, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 296
    .end local v0    # "id_config_locationProviderPackageNames":I
    :goto_4b
    return-object v2

    .line 291
    .restart local v0    # "id_config_locationProviderPackageNames":I
    :cond_4c
    const v0, 0x1070081

    goto :goto_3d

    .line 296
    .end local v0    # "id_config_locationProviderPackageNames":I
    :cond_50
    iget-object v2, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_4b
.end method
