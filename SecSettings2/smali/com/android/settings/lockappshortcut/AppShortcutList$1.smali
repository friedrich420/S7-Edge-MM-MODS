.class Lcom/android/settings/lockappshortcut/AppShortcutList$1;
.super Landroid/os/Handler;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method constructor <init>(Lcom/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$1;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$1;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;
    invoke-static {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$000(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->add()V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
