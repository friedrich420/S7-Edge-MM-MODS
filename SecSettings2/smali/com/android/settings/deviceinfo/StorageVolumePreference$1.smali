.class Lcom/android/settings/deviceinfo/StorageVolumePreference$1;
.super Ljava/lang/Object;
.source "StorageVolumePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;->this$0:Lcom/android/settings/deviceinfo/StorageVolumePreference;

    # getter for: Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->access$000(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    return-void
.end method
