.class Lcom/android/settings/notification/ManagedServiceSettings$1;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ManagedServiceSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$1;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$1;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # invokes: Lcom/android/settings/notification/ManagedServiceSettings;->updateList(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->access$000(Lcom/android/settings/notification/ManagedServiceSettings;Ljava/util/List;)V

    .line 79
    return-void
.end method
