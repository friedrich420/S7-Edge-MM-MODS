.class Lcom/android/settings/SettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceHighlighted(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 104
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 109
    return-void
.end method
