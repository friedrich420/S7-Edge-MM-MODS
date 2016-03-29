.class Lcom/android/settings/notification/VolumeSettings$1;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/VolumeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/VolumeSettings;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSettings$1;->this$0:Lcom/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 204
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 205
    .local v0, "isdown":Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v3, v4

    .line 229
    :goto_1
    :sswitch_0
    return v3

    .end local v0    # "isdown":Z
    :cond_0
    move v0, v4

    .line 204
    goto :goto_0

    .line 216
    .restart local v0    # "isdown":Z
    :sswitch_1
    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings$1;->this$0:Lcom/android/settings/notification/VolumeSettings;

    invoke-virtual {v5}, Lcom/android/settings/notification/VolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/VolumeSettings$1;->this$0:Lcom/android/settings/notification/VolumeSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "item":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 218
    const-string v4, "VolumeSettings"

    const-string v5, "dispatchKeyEvent item is null"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    :cond_1
    instance-of v5, v1, Landroid/preference/SeekBarPreference;

    if-nez v5, :cond_2

    move v3, v4

    .line 221
    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 223
    check-cast v2, Landroid/preference/SeekBarPreference;

    .line 224
    .local v2, "preference":Landroid/preference/SeekBarPreference;
    invoke-virtual {v2, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 205
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x45 -> :sswitch_1
        0x51 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method
