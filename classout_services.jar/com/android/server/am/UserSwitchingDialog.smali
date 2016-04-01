.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final SHOW_TIMEOUT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "aboveSystem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 108
    new-instance v3, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v3, p0, mHandler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 58
    iput p3, p0, mUserId:I

    .line 61
    invoke-virtual {p0, v6}, setCancelable(Z)V

    .line 62
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090160

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1040503

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, v2}, setView(Landroid/view/View;)V

    .line 69
    if-eqz p5, :cond_50

    .line 70
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 72
    :cond_50
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 75
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/UserSwitchingDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UserSwitchingDialog;

    .prologue
    .line 39
    iget v0, p0, mUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/UserSwitchingDialog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UserSwitchingDialog;

    .prologue
    .line 39
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method public onWindowShown()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 101
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    :cond_19
    return-void
.end method

.method public show()V
    .registers 7

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 82
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_14

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 87
    :cond_14
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    return-void
.end method
