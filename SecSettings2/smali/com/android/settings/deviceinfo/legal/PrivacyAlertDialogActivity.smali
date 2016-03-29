.class public Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d011c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    .local v0, "contentView":Landroid/widget/TextView;
    const v2, 0x7f0e13a1

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.deviceinfo.legal.PrivacyAlertProceedDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->finish()V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 41
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0e1338

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 42
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 43
    const v1, 0x7f0e13a2

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 44
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 45
    const v1, 0x7f0e01ba

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 46
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/PrivacyAlertDialogActivity;->setupAlert()V

    .line 48
    return-void
.end method
