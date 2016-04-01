.class Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;
.super Ljava/lang/Object;
.source "PrivateModeManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    const-string v1, "pref_pp_normal_off_disclaimer_noti"

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v2, v2, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setPreferences(Ljava/lang/String;Z)V

    .line 593
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V
    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$800(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    .line 594
    return-void
.end method
