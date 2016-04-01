.class Lcom/android/server/am/MARsPolicyManager$6;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 2223
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2226
    iget-object v0, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, val$pkgName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updatePackagesScore(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->access$500(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 2227
    return-void
.end method
