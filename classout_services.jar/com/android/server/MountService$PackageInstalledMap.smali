.class Lcom/android/server/MountService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstalledMap"
.end annotation


# instance fields
.field public final external:Z

.field public final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .registers 4
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p2, p0, id:Ljava/lang/String;

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, external:Z

    .line 486
    return-void
.end method

.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    .registers 4
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "exter"    # Z

    .prologue
    .line 478
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p2, p0, id:Ljava/lang/String;

    .line 480
    iput-boolean p3, p0, external:Z

    .line 481
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 489
    instance-of v1, p1, Lcom/android/server/MountService$PackageInstalledMap;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 491
    check-cast v0, Lcom/android/server/MountService$PackageInstalledMap;

    .line 493
    .local v0, "tmp":Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v1, p0, id:Ljava/lang/String;

    iget-object v2, v0, id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 496
    .end local v0    # "tmp":Lcom/android/server/MountService$PackageInstalledMap;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
