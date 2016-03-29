.class public Lcom/android/settings/usefulfeature/UsefulFeatureHub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsefulFeatureHub.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureName:Ljava/lang/String;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionType:Ljava/lang/String;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    .line 104
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    .line 106
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    .line 108
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 112
    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    .line 114
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    .line 122
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    .line 138
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 176
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 178
    :cond_0
    const v5, 0x7f040163

    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    .line 179
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f0d03a1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .local v4, "mTitleView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f0d03a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 181
    .local v3, "mSummaryView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f0d03a0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 183
    .local v2, "mAnimationView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 184
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 187
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    .line 190
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    .line 191
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 192
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 183
    .end local v0    # "ani":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_3

    .line 198
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_3
    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    return-object v5
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 556
    :cond_0
    return-void
.end method

.method private insertlog(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "merged_mute_or_pause_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 6

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "enabledTalkbackName":Ljava/lang/String;
    const v2, 0x7f0e09fa

    invoke-virtual {p0, v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f0e1247

    invoke-virtual {p0, v5}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e1260

    new-instance v4, Lcom/android/settings/usefulfeature/UsefulFeatureHub$5;

    invoke-direct {v4, p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$5;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/usefulfeature/UsefulFeatureHub$4;

    invoke-direct {v4, p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$4;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 509
    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/usefulfeature/UsefulFeatureHub$6;

    invoke-direct {v3, p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$6;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 516
    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 517
    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 6

    .prologue
    const v5, 0x7f0e092d

    .line 520
    invoke-direct {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    .line 521
    const v1, 0x7f0e09fa

    invoke-virtual {p0, v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0e1247

    invoke-virtual {p0, v4}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e1260

    new-instance v3, Lcom/android/settings/usefulfeature/UsefulFeatureHub$8;

    invoke-direct {v3, p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$8;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/usefulfeature/UsefulFeatureHub$7;

    invoke-direct {v3, p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$7;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 541
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/usefulfeature/UsefulFeatureHub$9;

    invoke-direct {v2, p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$9;-><init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 548
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 549
    return-void
.end method

.method private setDescriptions()V
    .locals 4

    .prologue
    const/high16 v3, 0x200000

    .line 390
    const-string v1, "UsefulFeatureHub"

    const-string v2, "setDescriptions"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 393
    .local v0, "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v2, "pick_up_to_call_out_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 395
    .restart local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string v1, "pick_up_to_call_out_switch"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 396
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 397
    const v1, 0x7f02025e

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 401
    :goto_0
    const v1, 0x7f0e1243

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 402
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 403
    const v1, 0x7f0e1255

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    .line 407
    :goto_1
    const-string v1, "motion_pick_up_to_call_out"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 408
    const-string v1, "UFDC"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v2, "pick_up_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 415
    .restart local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string v1, "pick_up_switch"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 416
    const v1, 0x7f02026b

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 417
    const v1, 0x7f0e1244

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 418
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 419
    const v1, 0x7f0e1257

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    .line 423
    :goto_2
    const-string v1, "motion_pick_up"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 424
    const-string v1, "UFSA"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v2, "merged_mute_or_pause_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 431
    .restart local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string v1, "merged_mute_or_pause_switch"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 432
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 433
    const v1, 0x7f0200ed

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 439
    :goto_3
    const v1, 0x7f0e1245

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 440
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 441
    :cond_2
    const v1, 0x7f0e125f

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    .line 447
    :goto_4
    const-string v1, "motion_merged_mute_pause"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 448
    const-string v1, "UFEM"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 449
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_3
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v2, "palm_swipe_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 454
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 455
    .restart local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string v1, "palm_swipe_switch"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 456
    const v1, 0x7f0200eb

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 457
    const v1, 0x7f0e1247

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 458
    const v1, 0x7f0e1258

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    .line 459
    const-string v1, "surface_palm_swipe"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 460
    const-string v1, "UFPC"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_4
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v2, "multi_window_setting_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 466
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 467
    .restart local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string v1, "multi_window_setting_switch"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 468
    const v1, 0x7f020265

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 469
    const v1, 0x7f0e1248

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 470
    const v1, 0x7f0e1249

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    .line 471
    const-string v1, "db_popup_view_shortcut"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 472
    const-string v1, "UFPG"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 473
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_5
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.scrollcapture"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 477
    new-instance v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;

    .end local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    invoke-direct {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    .line 478
    .restart local v0    # "description":Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;
    const-string v1, "smart_capture"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    .line 479
    const v1, 0x7f020291

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    .line 480
    const v1, 0x7f0e1679

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    .line 481
    const v1, 0x7f0e1680

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    .line 482
    const-string v1, "enable_smart_capture"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    .line 483
    const-string v1, "UFSC"

    iput-object v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_6
    return-void

    .line 399
    :cond_7
    const v1, 0x7f02025d

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_0

    .line 405
    :cond_8
    const v1, 0x7f0e1254

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    goto/16 :goto_1

    .line 421
    :cond_9
    const v1, 0x7f0e1256

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    goto/16 :goto_2

    .line 434
    :cond_a
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 435
    const v1, 0x7f0200ec

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_3

    .line 437
    :cond_b
    const v1, 0x7f0200ee

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_3

    .line 442
    :cond_c
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 443
    const v1, 0x7f0e125d

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    goto/16 :goto_4

    .line 445
    :cond_d
    const v1, 0x7f0e125e

    iput v1, v0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:I

    goto/16 :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x6e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    const-string v4, "UsefulFeatureHub"

    const-string v5, "onActivityCreated"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 209
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 210
    iget-object v4, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "switchState":Z
    iget-object v4, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v5, "smart_capture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v5, "multi_window_setting_switch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 217
    :goto_0
    const-string v2, "UsefulFeatureHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated() switchState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 219
    return-void

    :cond_1
    move v1, v3

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 301
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 304
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 306
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "multi_window_setting_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v2, "palm_swipe_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v3, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 315
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const-string v1, "UsefulFeatureHub"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 164
    const-string v1, "type"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->setDescriptions()V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const-string v0, "UsefulFeatureHub"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 343
    const-string v0, "UsefulFeatureHub"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 345
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 320
    const-string v0, "UsefulFeatureHub"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "palm_swipe_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "multi_window_setting_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v1, "multi_window_setting_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 223
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 224
    const-string v6, "UsefulFeatureHub"

    const-string v9, "onResume"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v9, "palm_swipe_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 227
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 229
    .local v2, "isScreenCaptureEnabled":Ljava/lang/Boolean;
    new-array v4, v7, [Ljava/lang/String;

    const-string v6, "false"

    aput-object v6, v4, v8

    .line 232
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v10, "isScreenCaptureEnabled"

    invoke-static {v6, v9, v10, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, "isScreenCapture":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    .line 236
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "access_control_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 244
    .local v3, "onInteractionConrol":I
    if-ne v3, v7, :cond_1

    .line 245
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 248
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 249
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 250
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "surface_palm_swipe"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 258
    invoke-direct {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    .line 263
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "surface_palm_swipe"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    .end local v1    # "isScreenCapture":I
    .end local v2    # "isScreenCaptureEnabled":Ljava/lang/Boolean;
    .end local v3    # "onInteractionConrol":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v9, "multi_window_setting_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 291
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v6, v7, :cond_3

    .line 292
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 296
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 297
    return-void

    .line 253
    .restart local v1    # "isScreenCapture":I
    .restart local v2    # "isScreenCaptureEnabled":Ljava/lang/Boolean;
    .restart local v3    # "onInteractionConrol":I
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 254
    iget-object v9, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "surface_palm_swipe"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v6, v8

    goto :goto_3

    .line 259
    :cond_6
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    .line 260
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1

    .line 265
    .end local v1    # "isScreenCapture":I
    .end local v2    # "isScreenCaptureEnabled":Ljava/lang/Boolean;
    .end local v3    # "onInteractionConrol":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v9, "smart_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v5, v7

    .line 267
    .local v5, "switchState":Z
    :goto_4
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_2

    .end local v5    # "switchState":Z
    :cond_8
    move v5, v8

    .line 266
    goto :goto_4

    .line 268
    :cond_9
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v9, "multi_window_setting_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "multi_window_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_a

    .line 270
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 271
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 276
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "multi_window_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_2

    .line 273
    :cond_a
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 274
    iget-object v9, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_5

    :cond_b
    move v6, v8

    goto :goto_6

    .line 278
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "access_control_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_d

    .line 279
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 280
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 285
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_2

    .line 282
    :cond_d
    iget-object v6, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 283
    iget-object v9, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_7

    :cond_e
    move v6, v8

    goto :goto_8
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 337
    const-string v0, "UsefulFeatureHub"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 349
    const-string v3, "UsefulFeatureHub"

    const-string v4, "onSwitchChanged"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    if-eqz p2, :cond_1

    move v0, v1

    .line 351
    .local v0, "value":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v4, "palm_swipe_switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->maketurnOffUniversalPopup()V

    .line 377
    :cond_0
    :goto_1
    return-void

    .end local v0    # "value":I
    :cond_1
    move v0, v2

    .line 350
    goto :goto_0

    .line 355
    .restart local v0    # "value":I
    :cond_2
    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    invoke-direct {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->makeTalkBackDisablePopup()V

    goto :goto_1

    .line 358
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    invoke-direct {p0, p2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto :goto_1

    .line 361
    :cond_4
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "merged_mute_or_pause_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_5

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_palm_touch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 369
    :cond_6
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string v3, "multi_window_setting_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "multi_window_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_popup_view_shortcut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 374
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    invoke-direct {p0, p2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_1
.end method
