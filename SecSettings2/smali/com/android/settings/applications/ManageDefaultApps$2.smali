.class Lcom/android/settings/applications/ManageDefaultApps$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ManageDefaultApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageDefaultApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageDefaultApps;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings/applications/ManageDefaultApps$2;->this$0:Lcom/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps$2;->this$0:Lcom/android/settings/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/applications/ManageDefaultApps;->access$200(Lcom/android/settings/applications/ManageDefaultApps;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageDefaultApps$2;->this$0:Lcom/android/settings/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/applications/ManageDefaultApps;->access$100(Lcom/android/settings/applications/ManageDefaultApps;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 109
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 114
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 119
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 124
    return-void
.end method
