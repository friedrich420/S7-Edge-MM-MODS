.class Lcom/android/server/PermissionDialog$1;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget-object v0, p0, this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mChoice:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 105
    .local v5, "remember":Z
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 113
    :pswitch_f
    const/4 v4, 0x1

    .line 114
    .local v4, "mode":I
    const/4 v5, 0x0

    .line 116
    :goto_11
    iget-object v0, p0, this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$400(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mCode:I
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$100(Lcom/android/server/PermissionDialog;)I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mUid:I
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$200(Lcom/android/server/PermissionDialog;)I

    move-result v2

    iget-object v3, p0, this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V

    .line 118
    iget-object v0, p0, this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->dismiss()V

    .line 119
    return-void

    .line 107
    .end local v4    # "mode":I
    :pswitch_32
    const/4 v4, 0x0

    .line 108
    .restart local v4    # "mode":I
    goto :goto_11

    .line 110
    .end local v4    # "mode":I
    :pswitch_34
    const/4 v4, 0x1

    .line 111
    .restart local v4    # "mode":I
    goto :goto_11

    .line 105
    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_32
        :pswitch_f
        :pswitch_34
    .end packed-switch
.end method
