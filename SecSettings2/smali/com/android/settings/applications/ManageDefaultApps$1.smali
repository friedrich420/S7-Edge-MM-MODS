.class Lcom/android/settings/applications/ManageDefaultApps$1;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 98
    iput-object p1, p0, Lcom/android/settings/applications/ManageDefaultApps$1;->this$0:Lcom/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/ManageDefaultApps$1;->this$0:Lcom/android/settings/applications/ManageDefaultApps;

    # invokes: Lcom/android/settings/applications/ManageDefaultApps;->updateDefaultBrowserPreference()V
    invoke-static {v0}, Lcom/android/settings/applications/ManageDefaultApps;->access$000(Lcom/android/settings/applications/ManageDefaultApps;)V

    .line 102
    return-void
.end method
