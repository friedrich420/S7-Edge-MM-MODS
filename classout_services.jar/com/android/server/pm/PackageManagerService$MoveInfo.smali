.class Lcom/android/server/pm/PackageManagerService$MoveInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInfo"
.end annotation


# instance fields
.field final appId:I

.field final dataAppName:Ljava/lang/String;

.field final fromUuid:Ljava/lang/String;

.field final moveId:I

.field final packageName:Ljava/lang/String;

.field final seinfo:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final toUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p2, "moveId"    # I
    .param p3, "fromUuid"    # Ljava/lang/String;
    .param p4, "toUuid"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "dataAppName"    # Ljava/lang/String;
    .param p7, "appId"    # I
    .param p8, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 15831
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15832
    iput p2, p0, moveId:I

    .line 15833
    iput-object p3, p0, fromUuid:Ljava/lang/String;

    .line 15834
    iput-object p4, p0, toUuid:Ljava/lang/String;

    .line 15835
    iput-object p5, p0, packageName:Ljava/lang/String;

    .line 15836
    iput-object p6, p0, dataAppName:Ljava/lang/String;

    .line 15837
    iput p7, p0, appId:I

    .line 15838
    iput-object p8, p0, seinfo:Ljava/lang/String;

    .line 15839
    return-void
.end method
