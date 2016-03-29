.class public Lcom/android/settings/CryptDecryptConfirm;
.super Lcom/android/settings/InstrumentedFragment;
.source "CryptDecryptConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptDecryptConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 104
    new-instance v0, Lcom/android/settings/CryptDecryptConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptDecryptConfirm$1;-><init>(Lcom/android/settings/CryptDecryptConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 135
    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "CryptDecryptConfirm"

    const-string v5, "Decryption operation succeeded"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x21

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    const v0, 0x7f04006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lcom/android/settings/CryptDecryptConfirm;->establishFinalConfirmationState()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
