.class Lcom/android/server/PackageObject;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field packageName:Ljava/lang/String;

.field seinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    const-string v0, ""

    iput-object v0, p0, packageName:Ljava/lang/String;

    .line 742
    const-string v0, ""

    iput-object v0, p0, seinfo:Ljava/lang/String;

    .line 745
    iput-object p1, p0, packageName:Ljava/lang/String;

    .line 746
    iput-object p2, p0, seinfo:Ljava/lang/String;

    .line 747
    return-void
.end method
