.class Lcom/android/settings/notification/ZenAccessSettings$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAccessSettings;

.field final synthetic val$label:Ljava/lang/CharSequence;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 134
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 135
    .local v0, "access":Z
    if-nez v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    # getter for: Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/ZenAccessSettings;->access$000(Lcom/android/settings/notification/ZenAccessSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/settings/notification/ZenAccessSettings;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/notification/ZenAccessSettings;->access$100(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 138
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    .line 141
    :cond_0
    new-instance v1, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->val$label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings$1;->this$0:Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenAccessSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    goto :goto_0
.end method
