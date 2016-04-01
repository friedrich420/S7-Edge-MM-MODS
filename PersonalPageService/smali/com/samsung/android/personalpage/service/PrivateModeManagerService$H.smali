.class Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;
.super Landroid/os/Handler;
.source "PrivateModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_CHECK_CLIENTS:I = 0x200

.field private static final MSG_MOUNT_PRIVATE_STORAGE:I = 0x201

.field private static final MSG_SHOW_DIALOG:I = 0x204

.field private static final MSG_SHOW_TOAST:I = 0x205

.field private static final MSG_UNMOUNT_PRIVATE_STORAGE:I = 0x202

.field private static final MSG_VERIFY_USER:I = 0x203


# instance fields
.field private final mMsgCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .line 106
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x200

    const-string v2, "MSG_CHECK_CLIENTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x201

    const-string v2, "MSG_MOUNT_PRIVATE_STORAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x202

    const-string v2, "MSG_UNMOUNT_PRIVATE_STORAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x203

    const-string v2, "MSG_VERIFY_USER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x204

    const-string v2, "MSG_SHOW_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const/16 v1, 0x205

    const-string v2, "MSG_SHOW_TOAST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method private codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const-string v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 165
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleCheckClients()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$000(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleVerifyUser()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$100(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleMountPirvateStorage()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$200(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleUnmountPirvateStorage()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$300(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    .line 135
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    const-string v1, "pref_pp_normal_on_disclaimer_noti"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V
    invoke-static {v0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$500(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestVerifyUser()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$600(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$700(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;I)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$800(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    const-string v1, "pref_pp_normal_off_disclaimer_noti"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V
    invoke-static {v0, v3}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$500(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$800(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    .line 158
    :pswitch_5
    const v0, 0x7f050020

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->showToastMessage(I)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
