.class Lcom/android/settings/fmm/MultipleLineTitlePreference$1;
.super Landroid/text/style/ClickableSpan;
.source "MultipleLineTitlePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/MultipleLineTitlePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/MultipleLineTitlePreference;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/MultipleLineTitlePreference;II)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/fmm/MultipleLineTitlePreference$1;->this$0:Lcom/android/settings/fmm/MultipleLineTitlePreference;

    iput p2, p0, Lcom/android/settings/fmm/MultipleLineTitlePreference$1;->val$start:I

    iput p3, p0, Lcom/android/settings/fmm/MultipleLineTitlePreference$1;->val$end:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    iget v4, p0, Lcom/android/settings/fmm/MultipleLineTitlePreference$1;->val$start:I

    iget v5, p0, Lcom/android/settings/fmm/MultipleLineTitlePreference$1;->val$end:I

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 78
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 79
    .local v2, "samsungAccnts":[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 80
    # getter for: Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->access$000()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings/fmm/SamsungAccountValidationActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    :goto_0
    # getter for: Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    # getter for: Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    # getter for: Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.settings"

    const-string v5, "FMMW"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void

    .line 82
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v3, p0, Lcom/android/settings/fmm/MultipleLineTitlePreference$1;->this$0:Lcom/android/settings/fmm/MultipleLineTitlePreference;

    # getter for: Lcom/android/settings/fmm/MultipleLineTitlePreference;->mURL:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->access$100(Lcom/android/settings/fmm/MultipleLineTitlePreference;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
