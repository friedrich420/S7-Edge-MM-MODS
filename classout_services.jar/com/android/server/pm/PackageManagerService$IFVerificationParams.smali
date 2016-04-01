.class Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IFVerificationParams"
.end annotation


# instance fields
.field pkg:Landroid/content/pm/PackageParser$Package;

.field replacing:Z

.field userId:I

.field verifierUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;ZII)V
    .registers 5
    .param p1, "_pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_replacing"    # Z
    .param p3, "_userId"    # I
    .param p4, "_verifierUid"    # I

    .prologue
    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1255
    iput-object p1, p0, pkg:Landroid/content/pm/PackageParser$Package;

    .line 1256
    iput-boolean p2, p0, replacing:Z

    .line 1257
    iput p3, p0, userId:I

    .line 1258
    iput-boolean p2, p0, replacing:Z

    .line 1259
    iput p4, p0, verifierUid:I

    .line 1260
    return-void
.end method
