.class public Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MirrorLinkAppDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;,
        Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private ainfo:Landroid/content/pm/ApplicationInfo;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appSnippet:Landroid/view/View;

.field private icon:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private final lock:Ljava/lang/Object;

.field private mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

.field private mCertificateLocale:Landroid/widget/TextView;

.field private mCertificateSigningEntity:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mMenuVerifyCertificate:Landroid/view/MenuItem;

.field private mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

.field private mResult:Z

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mTextViewValidDate:Landroid/widget/TextView;

.field private mTextViewValidDateTitle:Landroid/widget/TextView;

.field private mTextViewValidDateUnderLine:Landroid/view/View;

.field private mThread:Ljava/lang/Thread;

.field private mValidCheck:Landroid/widget/TextView;

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    .line 96
    new-instance v0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$1;-><init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mHandler:Landroid/os/Handler;

    .line 368
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
    .param p1, "x1"    # Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
    .param p1, "x1"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
    .param p1, "x1"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->updateAppInfo(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    return p1
.end method

.method private doUnBindFromService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    if-eqz v1, :cond_0

    .line 238
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MirrorLinkAppDetail: doUnbindFromService"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 246
    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MirrorlinkListener;

    .line 248
    :cond_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateAppInfo(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    .locals 5
    .param p1, "mlapp"    # Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 333
    iget-object v0, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorLinkAppDetail :updateAppInfo mAppInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorLinkAppDetail :updateAppInfo mAppInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    const-string v0, "VALID"

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f0e13bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateSigningEntity:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateLocale:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void

    .line 343
    :cond_1
    const-string v0, "UNCHECKED"

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f0e13be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 349
    :cond_2
    const-string v0, "NONCERTIFIED"

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f0e13bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->setHasOptionsMenu(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->activity:Landroid/app/Activity;

    .line 132
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 135
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mId:I

    .line 137
    new-instance v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    .line 138
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "entity_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "non_restricted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "restricted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string v2, "vaild_date"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    .line 145
    :cond_0
    new-instance v1, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$2;

    invoke-direct {v1, p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$2;-><init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    iput-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    .line 176
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 304
    const v0, 0x7f0e13b7

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    .line 305
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 308
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 309
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 265
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mInflater:Landroid/view/LayoutInflater;

    .line 267
    const v3, 0x7f04013b

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 268
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d00bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    .line 269
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v6, v4, v6, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 270
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0d00b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->icon:Landroid/widget/ImageView;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 276
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v3, v3, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v3, v3, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->ainfo:Landroid/content/pm/ApplicationInfo;

    .line 281
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0d00b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->label:Landroid/widget/TextView;

    .line 282
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->label:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->ainfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->appSnippet:Landroid/view/View;

    const v4, 0x7f0d033e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mValidCheck:Landroid/widget/TextView;

    .line 287
    const v3, 0x7f0d035a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateTitle:Landroid/widget/TextView;

    .line 288
    const v3, 0x7f0d035b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDate:Landroid/widget/TextView;

    .line 289
    const v3, 0x7f0d035c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mTextViewValidDateUnderLine:Landroid/view/View;

    .line 290
    const v3, 0x7f0d0357

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateSigningEntity:Landroid/widget/TextView;

    .line 291
    const v3, 0x7f0d0359

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mCertificateLocale:Landroid/widget/TextView;

    .line 293
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    invoke-direct {p0, v3}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->updateAppInfo(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-object v2

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MirrorLinkAppDetail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application icon not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 257
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLinkAppDetail: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->doUnBindFromService()V

    .line 259
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 260
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 313
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 315
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mMenuVerifyCertificate:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    .line 318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    const-string v0, "MirrorLinkAppDetail"

    const-string v1, "Manual Revocation excuted: disabling the button now"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MirrorLinkAppDetail Manual Revocation excuted: disabling the button now"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    .line 323
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mThread:Ljava/lang/Thread;

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->doUnBindFromService()V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 211
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v1, :cond_0

    .line 212
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MirrorLinkAppDetail : Binding to Tms"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "bindToML":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.mirrorlink"

    const-string v3, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 217
    const-string v1, "MirrorLinkAppDetail"

    const-string v2, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "bindToML":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v0    # "bindToML":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mServiceCon:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 253
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 179
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetailfrom runnable thread"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    iget-object v5, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mAppInfo:Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    iget-object v5, v5, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->performRevocationCheck(Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->mResult:Z

    if-nez v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "ix":Ljava/lang/InterruptedException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetail: InterruptedException !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    .end local v1    # "ix":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 188
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$3;

    invoke-direct {v4, p0}, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail$3;-><init>(Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 201
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetail: RemoteException thrown !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 204
    .local v2, "x":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MirrorLinkAppDetail: Exception thrown !"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
