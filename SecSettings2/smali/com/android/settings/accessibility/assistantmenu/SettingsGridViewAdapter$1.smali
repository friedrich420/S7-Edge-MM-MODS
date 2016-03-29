.class Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;
.super Landroid/os/Handler;
.source "SettingsGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 50
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mFragment:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->access$100(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->mImageMode:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;
    invoke-static {v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->access$000(Lcom/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;)Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemLongClick(Landroid/view/View;ILcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)Z

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
