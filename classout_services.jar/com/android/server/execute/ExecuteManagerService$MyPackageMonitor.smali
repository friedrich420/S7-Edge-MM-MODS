.class Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/ExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/ExecuteManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/execute/ExecuteManagerService;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, this$0:Lcom/android/server/execute/ExecuteManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, this$0:Lcom/android/server/execute/ExecuteManagerService;

    # invokes: Lcom/android/server/execute/ExecuteManagerService;->updateExecutableInfo()V
    invoke-static {v0}, Lcom/android/server/execute/ExecuteManagerService;->access$300(Lcom/android/server/execute/ExecuteManagerService;)V

    .line 133
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, this$0:Lcom/android/server/execute/ExecuteManagerService;

    # invokes: Lcom/android/server/execute/ExecuteManagerService;->updateExecutableInfo()V
    invoke-static {v0}, Lcom/android/server/execute/ExecuteManagerService;->access$300(Lcom/android/server/execute/ExecuteManagerService;)V

    .line 127
    return-void
.end method
