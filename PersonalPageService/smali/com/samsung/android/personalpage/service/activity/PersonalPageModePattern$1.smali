.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;
.super Ljava/lang/Object;
.source "PersonalPageModePattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # getter for: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$000(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePatternBackupPin;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const-string v1, "M2P"

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    iget-boolean v2, v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isM2P:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const-string v1, "lock_out_time"

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    # invokes: Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->getDeadline()J
    invoke-static {v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->access$100(Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    const-string v1, "FINGERPRINT"

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    iget-boolean v2, v2, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isBackupKey:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v1, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->startActivity(Landroid/content/Intent;)V

    .line 140
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->isM2P:Z

    .line 141
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModePattern;->finish()V

    .line 142
    return-void
.end method
