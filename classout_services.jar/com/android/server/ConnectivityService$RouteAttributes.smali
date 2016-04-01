.class final Lcom/android/server/ConnectivityService$RouteAttributes;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RouteAttributes"
.end annotation


# instance fields
.field private metric:I

.field private tableId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 3

    .prologue
    .line 605
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    # ++operator for: Lcom/android/server/ConnectivityService;->mRouteIdCtr:I
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$004(Lcom/android/server/ConnectivityService;)I

    move-result v0

    iput v0, p0, tableId:I

    .line 610
    const/4 v0, 0x0

    iput v0, p0, metric:I

    .line 611
    return-void
.end method


# virtual methods
.method public getMetric()I
    .registers 2

    .prologue
    .line 618
    iget v0, p0, metric:I

    return v0
.end method

.method public getTableId()I
    .registers 2

    .prologue
    .line 614
    iget v0, p0, tableId:I

    return v0
.end method

.method public setMetric(I)V
    .registers 2
    .param p1, "m"    # I

    .prologue
    .line 622
    iput p1, p0, metric:I

    .line 623
    return-void
.end method
