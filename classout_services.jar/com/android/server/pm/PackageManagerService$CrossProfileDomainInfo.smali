.class Lcom/android/server/pm/PackageManagerService$CrossProfileDomainInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossProfileDomainInfo"
.end annotation


# instance fields
.field bestDomainVerificationStatus:I

.field resolveInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 7448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    .line 7448
    invoke-direct {p0}, <init>()V

    return-void
.end method
