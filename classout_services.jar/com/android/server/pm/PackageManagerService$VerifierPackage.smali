.class Lcom/android/server/pm/PackageManagerService$VerifierPackage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifierPackage"
.end annotation


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final firstInstallTime:J

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 9
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "firstInstallTime"    # J
    .param p6, "activityName"    # Ljava/lang/String;

    .prologue
    .line 1744
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1745
    iput-object p2, p0, packageName:Ljava/lang/String;

    .line 1746
    iput p3, p0, uid:I

    .line 1747
    iput-wide p4, p0, firstInstallTime:J

    .line 1748
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, componentName:Landroid/content/ComponentName;

    .line 1749
    return-void
.end method
