.class public Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfoBeforeInit"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public runningWidgets:I

.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .registers 4
    .param p2, "_packageName"    # Ljava/lang/String;

    .prologue
    .line 448
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p2, p0, packageName:Ljava/lang/String;

    .line 450
    const/4 v0, 0x0

    iput v0, p0, runningWidgets:I

    .line 451
    return-void
.end method
