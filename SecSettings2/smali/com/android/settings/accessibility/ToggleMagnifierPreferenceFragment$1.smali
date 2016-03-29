.class Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    check-cast p2, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;->getService()Lcom/android/settings/accessibility/MagnifierService;

    move-result-object v1

    # setter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mService:Lcom/android/settings/accessibility/MagnifierService;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Lcom/android/settings/accessibility/MagnifierService;)Lcom/android/settings/accessibility/MagnifierService;

    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mService:Lcom/android/settings/accessibility/MagnifierService;
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$002(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Lcom/android/settings/accessibility/MagnifierService;)Lcom/android/settings/accessibility/MagnifierService;

    .line 128
    return-void
.end method
