.class Lcom/android/settings/AssistantMenuPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "AssistantMenuPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AssistantMenuPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$1;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$1;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    # invokes: Lcom/android/settings/AssistantMenuPreferenceFragment;->updateAssistantMenuSaving()V
    invoke-static {v0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->access$000(Lcom/android/settings/AssistantMenuPreferenceFragment;)V

    .line 156
    return-void
.end method
