.class Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "SharedAccessibilityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    # invokes: Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->access$000(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    # invokes: Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->access$100(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    # invokes: Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->access$000(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    # invokes: Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->access$100(Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    goto :goto_0
.end method
